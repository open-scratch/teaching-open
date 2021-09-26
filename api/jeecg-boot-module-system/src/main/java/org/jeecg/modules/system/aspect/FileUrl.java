package org.jeecg.modules.system.aspect;

import java.lang.annotation.*;

@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface FileUrl {
    String value() default "";
}
