package org.jeecg.modules.system.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.jeecg.modules.system.entity.SysRole;
import org.jeecg.modules.system.entity.SysUser;

import java.util.List;

@Data
@Accessors(chain = true)
public class SysUserModel extends SysUser {
    private List<SysRole> roles;
    private List<String> roleIds;
    private List<String> roleNames;
    private String userDeptCodes;
    private List<String> departNames;
    private String orgCode;
    private String nickname;
    private String headimgurl;
}
