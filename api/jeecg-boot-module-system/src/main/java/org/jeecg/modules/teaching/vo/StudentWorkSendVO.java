package org.jeecg.modules.teaching.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class StudentWorkSendVO implements Serializable{
	private static final long serialVersionUID = 1L;

	/**作业id*/
	private String sendWorkId;
	/**对应的用户id集合*/
	private List<String> userIdList;
//	public StudentWorkSendVO(String sendWorkId, List<String> userIdList) {
//		super();
//		this.sendWorkId = sendWorkId;
//		this.userIdList = userIdList;
//	}
}
