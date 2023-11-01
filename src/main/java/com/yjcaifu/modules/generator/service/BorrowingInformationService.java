package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorrManageEntity;
import com.yjcaifu.modules.generator.entity.BorrowingInformationEntity;
import com.yjcaifu.modules.generator.entity.ReimbursementType;

import java.util.List;
import java.util.Map;

/**
 * 借款信息; InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-04 17:09:03
 */
public interface BorrowingInformationService extends IService<BorrowingInformationEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    /**
	 * 根据id查找还款方式
	 * @return	还款方式
	 */
    List<ReimbursementType> findReimbursementType();
    
    BorrowingInformationEntity selectById(Integer id);

	BorrManageEntity queryManageInfo(Map<String, Object> params);

	List<Integer> queryListByPerIds(List<Integer> asList);

	List<BorrowingInformationEntity> queryCurrentMonthIntoManage(Map<String, Object> params);

	List<BorrowingInformationEntity> queryCurrentMonthBidNo(Map<String, Object> params);
}

