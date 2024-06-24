package org.jeecg.common.system.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.constant.CommonConstant;
import org.jeecg.common.system.api.ISysBaseAPI;
import org.jeecg.common.system.util.JwtUtil;
import org.jeecg.common.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.util.AntPathMatcher;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLDecoder;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @Author scott
 * @since 2018-12-20
 */
@Slf4j
@RestController
@RequestMapping("/sys/common")
public class CommonController {

	@Autowired
	private ISysBaseAPI sysBaseAPI;

	@Value(value = "${jeecg.path.upload}")
	private String uploadpath;

	/**
	 * 本地：local minio：minio 阿里：alioss
	 */
	@Value(value="${jeecg.uploadType}")
	private String uploadType;

	/**
	 * @Author 政辉
	 * @return
	 */
	@GetMapping("/403")
	public Result<?> noauth()  {
		return Result.error("没有权限，请联系管理员授权");
	}

	/**
	 * 文件上传统一方法
	 * @param request
	 * @param response
	 * @return
	 */
	@PostMapping(value = "/upload")
	public Result<?> upload(HttpServletRequest request, HttpServletResponse response) {
		Result<?> result = new Result<>();
		String savePath = "";
		String bizPath = request.getParameter("biz");
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		MultipartFile file = multipartRequest.getFile("file");// 获取上传文件对象
		if(oConvertUtils.isEmpty(bizPath)){
			if(CommonConstant.UPLOAD_TYPE_OSS.equals(uploadType)){
				//未指定目录，则用阿里云默认目录 upload
				bizPath = "upload";
				//result.setMessage("使用阿里云文件上传时，必须添加目录！");
				//result.setSuccess(false);
				//return result;
			}else{
				bizPath = "";
			}
		}
		if(CommonConstant.UPLOAD_TYPE_LOCAL.equals(uploadType)){
			//针对jeditor编辑器如何使 lcaol模式，采用 base64格式存储
			String jeditor = request.getParameter("jeditor");
			if(oConvertUtils.isNotEmpty(jeditor)){
				result.setMessage(CommonConstant.UPLOAD_TYPE_LOCAL);
				result.setSuccess(true);
				return result;
			}else{
				savePath = this.uploadLocal(file,bizPath);
			}
		}else{
			savePath = sysBaseAPI.upload(file,bizPath,uploadType);
		}
		if(oConvertUtils.isNotEmpty(savePath)){
			result.setMessage(savePath);
			result.setSuccess(true);
		}else {
			result.setMessage("上传失败！");
			result.setSuccess(false);
		}
		return result;
	}

	/**
	 * 本地文件上传
	 * @param mf 文件
	 * @param bizPath  自定义路径
	 * @return
	 */
	private String uploadLocal(MultipartFile mf,String bizPath){
		try {
			String ctxPath = uploadpath;
			String fileName = null;
			File file = new File(ctxPath + File.separator + bizPath + File.separator );
			if (!file.exists()) {
				file.mkdirs();// 创建文件根目录
			}
			String orgName = mf.getOriginalFilename();// 获取文件名
			orgName = CommonUtils.getFileName(orgName);
			if(orgName.indexOf(".")!=-1){
				fileName = UUIDGenerator.generate() + orgName.substring(orgName.indexOf("."));
			}else{
				fileName = UUIDGenerator.generate();
			}
			String savePath = file.getPath() + File.separator + fileName;
			File savefile = new File(savePath);
			FileCopyUtils.copy(mf.getBytes(), savefile);
			String dbpath = null;
			if(oConvertUtils.isNotEmpty(bizPath)){
				dbpath = bizPath + File.separator + fileName;
			}else{
				dbpath = fileName;
			}
			if (dbpath.contains("\\")) {
				dbpath = dbpath.replace("\\", "/");
			}
			return dbpath;
		} catch (IOException e) {
			log.error(e.getMessage(), e);
		}
		return "";
	}

//	@PostMapping(value = "/upload2")
//	public Result<?> upload2(HttpServletRequest request, HttpServletResponse response) {
//		Result<?> result = new Result<>();
//		try {
//			String ctxPath = uploadpath;
//			String fileName = null;
//			String bizPath = "files";
//			String tempBizPath = request.getParameter("biz");
//			if(oConvertUtils.isNotEmpty(tempBizPath)){
//				bizPath = tempBizPath;
//			}
//			String nowday = new SimpleDateFormat("yyyyMMdd").format(new Date());
//			File file = new File(ctxPath + File.separator + bizPath + File.separator + nowday);
//			if (!file.exists()) {
//				file.mkdirs();// 创建文件根目录
//			}
//			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
//			MultipartFile mf = multipartRequest.getFile("file");// 获取上传文件对象
//			String orgName = mf.getOriginalFilename();// 获取文件名
//			fileName = orgName.substring(0, orgName.lastIndexOf(".")) + "_" + System.currentTimeMillis() + orgName.substring(orgName.indexOf("."));
//			String savePath = file.getPath() + File.separator + fileName;
//			File savefile = new File(savePath);
//			FileCopyUtils.copy(mf.getBytes(), savefile);
//			String dbpath = bizPath + File.separator + nowday + File.separator + fileName;
//			if (dbpath.contains("\\")) {
//				dbpath = dbpath.replace("\\", "/");
//			}
//			result.setMessage(dbpath);
//			result.setSuccess(true);
//		} catch (IOException e) {
//			result.setSuccess(false);
//			result.setMessage(e.getMessage());
//			log.error(e.getMessage(), e);
//		}
//		return result;
//	}

	/**
	 * 预览图片&下载文件
	 * 请求地址：http://localhost:8080/common/static/{user/20190119/e1fe9925bc315c60addea1b98eb1cb1349547719_1547866868179.jpg}
	 *
	 * @param request
	 * @param response
	 */
	@GetMapping(value = "/static/**")
	public void view(HttpServletRequest request, HttpServletResponse response) {
		// ISO-8859-1 ==> UTF-8 进行编码转换
		String imgPath = extractPathFromPattern(request);
		if(oConvertUtils.isEmpty(imgPath) || imgPath=="null"){
			return;
		}
		// 其余处理略
		InputStream inputStream = null;
		OutputStream outputStream = null;
		try {
			imgPath = imgPath.replace("..", "");
			if (imgPath.endsWith(",")) {
				imgPath = imgPath.substring(0, imgPath.length() - 1);
			}
			String filePath = uploadpath + File.separator + imgPath;
			File file = new File(filePath);
			if(!file.exists()){
				response.setStatus(404);
				throw new RuntimeException("文件不存在..");
			}
//			response.setContentType("application/force-download");// 设置强制下载不打开
			response.setContentType("application/octet-stream");
			response.addHeader("Content-Disposition", "attachment;fileName=" + new String(file.getName().getBytes("UTF-8"),"iso-8859-1"));

			response.setHeader("Accept-Ranges", "bytes");
			// client requests a file block download start byte
			BufferedInputStream bis = null;
			InputStream ins = new FileInputStream(file);
			bis = new BufferedInputStream(ins);

			long p = 0L;
			long toLength = 0L;
			long contentLength = 0L;
			int rangeSwitch = 0; // 0,从头开始的全文下载；1,从某字节开始的下载（bytes=27000-）；2,从某字节开始到某字节结束的下载（bytes=27000-39000）
			long fileLength;
			fileLength = file.length();
			String rangBytes = "";
			String range = request.getHeader("Range");
			if (range != null && range.trim().length() > 0 && !"null".equals(range)) {
				response.setStatus(javax.servlet.http.HttpServletResponse.SC_PARTIAL_CONTENT);
				rangBytes = range.replaceAll("bytes=", "");
				if (rangBytes.endsWith("-")) { // bytes=270000-
					rangeSwitch = 1;
					p = Long.parseLong(rangBytes.substring(0, rangBytes.indexOf("-")));
					contentLength = fileLength - p; // 客户端请求的是270000之后的字节（包括bytes下标索引为270000的字节）
				} else { // bytes=270000-320000
					rangeSwitch = 2;
					String temp1 = rangBytes.substring(0, rangBytes.indexOf("-"));
					String temp2 = rangBytes.substring(rangBytes.indexOf("-") + 1, rangBytes.length());
					p = Long.parseLong(temp1);
					toLength = Long.parseLong(temp2);
					contentLength = toLength - p + 1; // 客户端请求的是 270000-320000 之间的字节
				}
			} else {
				contentLength = fileLength;
			}
			// 如果设设置了Content-Length，则客户端会自动进行多线程下载。如果不希望支持多线程，则不要设置这个参数。
			// Content-Length: [文件的总大小] - [客户端请求的下载的文件块的开始字节]
			response.setHeader("Content-Length", new Long(contentLength).toString());

			// 断点开始
			// 响应的格式是:
			// Content-Range: bytes [文件块的开始字节]-[文件的总大小 - 1]/[文件的总大小]
			if (rangeSwitch == 1) {
				String contentRange = new StringBuffer("bytes ").append(new Long(p).toString()).append("-")
						.append(new Long(fileLength - 1).toString()).append("/")
						.append(new Long(fileLength).toString()).toString();
				response.setHeader("Content-Range", contentRange);
				bis.skip(p);
			} else if (rangeSwitch == 2) {
				String contentRange = range.replace("=", " ") + "/" + new Long(fileLength).toString();
				response.setHeader("Content-Range", contentRange);
				bis.skip(p);
			} else {
				String contentRange = new StringBuffer("bytes ").append("0-").append(fileLength - 1).append("/")
						.append(fileLength).toString();
				response.setHeader("Content-Range", contentRange);
			}


			inputStream = new BufferedInputStream(new FileInputStream(filePath));
			OutputStream out = response.getOutputStream();
			int n = 0;
			long readLength = 0;
			int bsize = 1024;
			byte[] bytes = new byte[bsize];
			if (rangeSwitch == 2) {
				// 针对 bytes=27000-39000 的请求，从27000开始写数据
				while (readLength <= contentLength - bsize) {
					n = bis.read(bytes);
					readLength += n;
					out.write(bytes, 0, n);
				}
				if (readLength <= contentLength) {
					n = bis.read(bytes, 0, (int) (contentLength - readLength));
					out.write(bytes, 0, n);
				}
			} else {
				while ((n = bis.read(bytes)) != -1) {
					out.write(bytes, 0, n);
				}
			}
			out.flush();
			out.close();
			bis.close();
			response.flushBuffer();
		} catch (IOException e) {
			log.error("预览文件失败" + e.getMessage());
			response.setStatus(404);
			e.printStackTrace();
		} finally {
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (IOException e) {
					log.error(e.getMessage(), e);
				}
			}
			if (outputStream != null) {
				try {
					outputStream.close();
				} catch (IOException e) {
					log.error(e.getMessage(), e);
				}
			}
		}

	}

//	/**
//	 * 下载文件
//	 * 请求地址：http://localhost:8080/common/download/{user/20190119/e1fe9925bc315c60addea1b98eb1cb1349547719_1547866868179.jpg}
//	 *
//	 * @param request
//	 * @param response
//	 * @throws Exception
//	 */
//	@GetMapping(value = "/download/**")
//	public void download(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		// ISO-8859-1 ==> UTF-8 进行编码转换
//		String filePath = extractPathFromPattern(request);
//		// 其余处理略
//		InputStream inputStream = null;
//		OutputStream outputStream = null;
//		try {
//			filePath = filePath.replace("..", "");
//			if (filePath.endsWith(",")) {
//				filePath = filePath.substring(0, filePath.length() - 1);
//			}
//			String localPath = uploadpath;
//			String downloadFilePath = localPath + File.separator + filePath;
//			File file = new File(downloadFilePath);
//	         if (file.exists()) {
//	         	response.setContentType("application/force-download");// 设置强制下载不打开            
//	 			response.addHeader("Content-Disposition", "attachment;fileName=" + new String(file.getName().getBytes("UTF-8"),"iso-8859-1"));
//	 			inputStream = new BufferedInputStream(new FileInputStream(file));
//	 			outputStream = response.getOutputStream();
//	 			byte[] buf = new byte[1024];
//	 			int len;
//	 			while ((len = inputStream.read(buf)) > 0) {
//	 				outputStream.write(buf, 0, len);
//	 			}
//	 			response.flushBuffer();
//	         }
//
//		} catch (Exception e) {
//			log.info("文件下载失败" + e.getMessage());
//			// e.printStackTrace();
//		} finally {
//			if (inputStream != null) {
//				try {
//					inputStream.close();
//				} catch (IOException e) {
//					e.printStackTrace();
//				}
//			}
//			if (outputStream != null) {
//				try {
//					outputStream.close();
//				} catch (IOException e) {
//					e.printStackTrace();
//				}
//			}
//		}
//
//	}

	/**
	 * @功能：pdf预览Iframe
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/pdf/pdfPreviewIframe")
	public ModelAndView pdfPreviewIframe(ModelAndView modelAndView) {
		modelAndView.setViewName("pdfPreviewIframe");
		return modelAndView;
	}

	/**
	  *  把指定URL后的字符串全部截断当成参数
	  *  这么做是为了防止URL中包含中文或者特殊字符（/等）时，匹配不了的问题
	 * @param request
	 * @return
	 */
	private static String extractPathFromPattern(final HttpServletRequest request) {
		String path = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		return new AntPathMatcher().extractPathWithinPattern(bestMatchPattern, path);
	}

    /**
     * 中转HTTP请求，解决跨域问题
     *
     * @param url 必填：请求地址
     * @return
     */
    @RequestMapping("/transitRESTful")
    public Result transitRESTful(@RequestParam("url") String url, HttpServletRequest request) {
        try {
            ServletServerHttpRequest httpRequest = new ServletServerHttpRequest(request);
            // 中转请求method、body
            HttpMethod method = httpRequest.getMethod();
            JSONObject params;
            try {
                params = JSON.parseObject(JSON.toJSONString(httpRequest.getBody()));
            } catch (Exception e) {
                params = new JSONObject();
            }
            // 中转请求问号参数
            JSONObject variables = JSON.parseObject(JSON.toJSONString(request.getParameterMap()));
            variables.remove("url");
            // 在 headers 里传递Token
            String token = TokenUtils.getTokenByRequest(request);
            HttpHeaders headers = new HttpHeaders();
            headers.set("X-Access-Token", token);
            // 发送请求
            String httpURL = URLDecoder.decode(url, "UTF-8");
            ResponseEntity<String> response = RestUtil.request(httpURL, method, headers , variables, params, String.class);
            // 封装返回结果
            Result<Object> result = new Result<>();
            int statusCode = response.getStatusCodeValue();
            result.setCode(statusCode);
            result.setSuccess(statusCode == 200);
            String responseBody = response.getBody();
            try {
                // 尝试将返回结果转为JSON
                Object json = JSON.parse(responseBody);
                result.setResult(json);
            } catch (Exception e) {
                // 转成JSON失败，直接返回原始数据
                result.setResult(responseBody);
            }
            return result;
        } catch (Exception e) {
            log.debug("中转HTTP请求失败", e);
            return Result.error(e.getMessage());
        }
    }

}
