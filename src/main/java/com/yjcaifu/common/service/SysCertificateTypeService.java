package com.yjcaifu.common.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.entity.SysCertificateTypeEntity;
import com.yjcaifu.common.utils.PageUtils;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-29 16:56:57
 */
public interface SysCertificateTypeService extends IService<SysCertificateTypeEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<SysCertificateTypeEntity> allList(Map<String, Object> params);
}

