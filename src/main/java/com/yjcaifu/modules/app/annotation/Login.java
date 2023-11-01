package com.yjcaifu.modules.app.annotation;

import java.lang.annotation.*;

/**
 * app登录效验
 * @author htshen
 * @email htshen@tom.com
 * @date 2017/9/23 14:30
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Login {
}
