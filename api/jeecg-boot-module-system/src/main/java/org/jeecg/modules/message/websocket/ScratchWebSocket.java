package org.jeecg.modules.message.websocket;

import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.constant.CacheConstant;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.common.util.RedisUtil;
import org.jeecg.common.util.SpringContextUtils;
import org.jeecg.modules.shiro.authc.ShiroRealm;
import org.jeecg.modules.teaching.entity.TeachingWork;
import org.jeecg.modules.teaching.service.ITeachingWorkService;
import org.springframework.stereotype.Component;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;

@Component
@Slf4j
@ServerEndpoint("/websocket/scratch/cloudData") //此注解相当于设置访问URL
public class ScratchWebSocket {

    private RedisUtil getRedisUtil(){
        return SpringContextUtils.getBean(RedisUtil.class);
    }
    private ShiroRealm getShiroRealm(){
        return SpringContextUtils.getBean(ShiroRealm.class);
    }
    private ITeachingWorkService getTeachingWork(){return (ITeachingWorkService) SpringContextUtils.getBean("TeachingWorkServiceImpl");}

    
    private Session session;
    private String projectId;
    private String token;
    
    private static CopyOnWriteArraySet<ScratchWebSocket> webSockets =new CopyOnWriteArraySet<>();
    private static Map<String, List<Session>> sessionPool = new HashMap<String,List<Session>>(); // 作品ID，sessions
    
    @OnOpen
    public void onOpen(Session session) {
        try {
			this.session = session;
			webSockets.add(this);
			log.info("【scratch websocket消息】有新的连接，总数为:"+webSockets.size());
		} catch (Exception e) {
		}
    }
    
    @OnClose
    public void onClose() {
        try {
			webSockets.remove(this);
            String username = "";
            if (token != null){
                LoginUser loginUser = getShiroRealm().checkUserTokenIsEffect(token);
                username = loginUser.getUsername();
            }
            String key = getKey(username, projectId);
			if (sessionPool.containsKey(key)){
			    sessionPool.get(key).remove(this.session);
            }
			log.info("【scratch websocket消息】连接断开，总数为:"+webSockets.size());
		} catch (Exception e) {
		}
    }
    
    @OnMessage
    public void onMessage(String message) {
    	log.info("【scratch websocket消息】收到客户端消息:"+message);
    	JSONObject req = JSONObject.parseObject(message);
    	String method = req.getString("method");
    	this.projectId = req.getString("project_id");
    	String user = req.getString("user");
        String name = req.getString("name");
        String value = req.getString("value");
        this.token = req.getString("token");
        try{
            switch (method){
                case "handshake":
                    this.handshake();
                    break;
                case "create":
                    this.create(name, value);
                    break;
                case "set":
                    this.set(name, value);
                    break;
                case "delete":
                    this.delete(name);
            }
        }catch (Exception e){
            e.printStackTrace();
            this.sendAck(name, "FAIL");
        }
    }

    private void handshake(){
        //读取变量
        String username = "";
        if (token != null){
            LoginUser loginUser = getShiroRealm().checkUserTokenIsEffect(token);
            username = loginUser.getUsername();
        }
        String key = getKey(username, projectId);
        Map<Object, Object> map = getRedisUtil().hmget(key);
        String res = "";
        for (Map.Entry<Object, Object> e: map.entrySet()){
            JSONObject obj = new JSONObject();
            obj.put("method", "set");
            obj.put("project_id", projectId);
            obj.put("name", e.getKey());
            obj.put("value", e.getValue());
            res = res + obj.toJSONString() + "\n";
        }
        if (sessionPool.containsKey(key)){
            sessionPool.get(key).add(this.session);
        }else{
            List<Session> sessions = new ArrayList<>();
            sessions.add(this.session);
            sessionPool.put(key, sessions);
        }
        session.getAsyncRemote().sendText(res);
    }

    private void create(String name, String value){
        //作品的作者才可以创建变量
        LoginUser loginUser = getShiroRealm().checkUserTokenIsEffect(token);
        TeachingWork work = getTeachingWork().getById(projectId);
        //创建变量
        if (loginUser.getId().equals(work.getUserId())) {
            getRedisUtil().hset(getKey(loginUser.getUsername(), projectId), name, value);
            this.sendAck(name, "OK");
        }else{
            this.sendAck(name, "FAIL");
        }
    }

    private void set(String name, String value){
        String username = "";
        if (token != null){
            LoginUser loginUser = getShiroRealm().checkUserTokenIsEffect(token);
            username = loginUser.getUsername();
        }
        String key = getKey(username, projectId);
        //设置变量
        getRedisUtil().hset(key,name, value);
        if (sessionPool.containsKey(key)){
            List<Session> sessions = sessionPool.get(key);
            String res = "";
            JSONObject obj = new JSONObject();
            obj.put("method", "set");
            obj.put("project_id", projectId);
            obj.put("name", name);
            obj.put("value", value);
            res = res + obj.toJSONString() + "\n";
            for (Session session: sessions){
                if (session.isOpen()){
                    session.getAsyncRemote().sendText(res);
                }
            }
        }
    }

    private void delete(String name){
        //作品的作者才可以删除变量
        LoginUser loginUser = getShiroRealm().checkUserTokenIsEffect(token);
        TeachingWork work = getTeachingWork().getById(projectId);
        //创建变量
        if (loginUser.getId().equals(work.getUserId())) {
            //删除变量
            getRedisUtil().hdel(getKey(loginUser.getUsername(), projectId), name);
        }
    }


    //创建变量的回调
    private void sendAck(String name, String reply){
        JSONObject obj = new JSONObject();
        obj.put("method", "ack");
        obj.put("name", name);
        obj.put("reply", reply);
        session.getAsyncRemote().sendText(obj.toJSONString());
    }

    private String getKey(String username, String key){
//        if ("create".equals(key)){
//            return CacheConstant.SCRATCH_CLOUD + username + ":" + key;
//        }else{
            return CacheConstant.SCRATCH_CLOUD + key;
//        }
    }
    
}