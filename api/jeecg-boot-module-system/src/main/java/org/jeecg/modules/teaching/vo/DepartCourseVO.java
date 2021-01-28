package org.jeecg.modules.teaching.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class DepartCourseVO implements Serializable{
	private static final long serialVersionUID = 1L;

	/**部门id*/
	private String deptId;
	/**对应的课程id集合*/
	private List<String> courseIdList;

	public DepartCourseVO(){
		super();
	}

	public DepartCourseVO(String deptId, List<String> courseIdList) {
		super();
		this.deptId = deptId;
		this.courseIdList = courseIdList;
	}
	
	
}
