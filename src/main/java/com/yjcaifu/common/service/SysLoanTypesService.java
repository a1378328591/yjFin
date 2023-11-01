package com.yjcaifu.common.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.entity.SysLoanTypesEntity;

import java.util.List;
import java.util.Map;

/**
 * 贷款性质
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
public interface SysLoanTypesService extends IService<SysLoanTypesEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<SysLoanTypesEntity> queryList(Map<String, Object> params);
}

