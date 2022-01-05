package org.jeecg.modules.teaching.model;

import lombok.Data;
import org.jeecg.modules.teaching.entity.TeachingAdditionalWork;

@Data
public class MineAdditionalWorkModel extends TeachingAdditionalWork {
    String mineWorkId;
    Integer mineWorkStatus;
}
