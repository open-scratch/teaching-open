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
import java.util.HashMap;
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
    
    private static CopyOnWriteArraySet<ScratchWebSocket> webSockets =new CopyOnWriteArraySet<>();
    private static Map<String,Session> sessionPool = new HashMap<String,Session>();
    
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
			log.info("【scratch websocket消息】连接断开，总数为:"+webSockets.size());
		} catch (Exception e) {
		}
    }
    
    @OnMessage
    public void onMessage(String message) {
    	log.info("【scratch websocket消息】收到客户端消息:"+message);
    	JSONObject req = JSONObject.parseObject(message);
    	String method = req.getString("method");
    	String projectId = req.getString("project_id");
    	String user = req.getString("user");
        String name = req.getString("name");
        String value = req.getString("value");
        String token = req.getString("token");
        try{
            switch (method){
                case "handshake":
                    this.handshake(token, projectId);
                    break;
                case "create":
                    this.create(token, projectId, name, value);
                    break;
                case "set":
                    this.set(token, projectId, name, value);
                    break;
                case "delete":
                    this.delete(token, projectId, name);
            }
        }catch (Exception e){
            e.printStackTrace();
            this.sendAck(name, "FAIL");
        }
    }

    private void handshake(String token, String projectId){
        //读取变量
        String username = "";
        if (token != null){
            LoginUser loginUser = getShiroRealm().checkUserTokenIsEffect(token);
            username = loginUser.getUsername();
        }
        Map<Object, Object> map = getRedisUtil().hmget(getKey(username, projectId));
        String res = "";
        for (Map.Entry<Object, Object> e: map.entrySet()){
            JSONObject obj = new JSONObject();
            obj.put("method", "set");
            obj.put("project_id", projectId);
            obj.put("name", e.getKey());
            obj.put("value", e.getValue());
            res = res + obj.toJSONString() + "\n";
        }

        session.getAsyncRemote().sendText(res);
    }

    private void create(String token, String projectId, String name, String value){
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

    private void set(String token, String projectId, String name, String value){
        String username = "";
        if (token != null){
            LoginUser loginUser = getShiroRealm().checkUserTokenIsEffect(token);
            username = loginUser.getUsername();
        }
        //设置变量
        getRedisUtil().hset(getKey(username, projectId),name, value);
    }

    private void delete(String token, String projectId, String name){
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
        if ("create".equals(key)){
            return CacheConstant.SCRATCH_CLOUD + username + ":" + key;
        }else{
            return CacheConstant.SCRATCH_CLOUD + key;
        }
    }
    
}