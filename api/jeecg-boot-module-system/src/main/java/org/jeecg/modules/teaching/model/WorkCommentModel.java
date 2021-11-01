package org.jeecg.modules.teaching.model;

import lombok.Data;
import org.jeecg.modules.system.aspect.FileUrl;
import org.jeecg.modules.teaching.entity.TeachingWorkComment;

@Data
public class WorkCommentModel extends TeachingWorkComment {
    private String realname;
    private String username;
    @FileUrl
    private String avatar;
}
