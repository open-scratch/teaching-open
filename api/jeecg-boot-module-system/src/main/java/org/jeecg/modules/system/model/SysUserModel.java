package org.jeecg.modules.system.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.jeecg.modules.system.entity.SysRole;
import org.jeecg.modules.system.entity.SysUser;
import org.jeecgframework.poi.excel.annotation.Excel;

import java.util.List;

@Data
@Accessors(chain = true)
public class SysUserModel extends SysUser {
    @Excel(name = "角色", width = 15)
    private String roleTxt;
    /**部门名称*/
    @Excel(name = "所在部门", width = 15)
    private String orgCodeTxt;

    private List<SysRole> roles;
    private List<String> roleIds;
    private List<String> roleNames;

    private String userDeptCodes;
    private List<String> departNames;

    private String orgCode;
    private String nickname;
    private String headimgurl;

}
