package com.yjcaifu.modules.generator.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.yjcaifu.modules.generator.entity.BorrowingInformationEntity;
import com.yjcaifu.modules.generator.entity.ReimbursementType;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

/**
 * 借款信息; InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-04 17:09:03
 */
@Mapper
public interface BorrowingInformationDao extends BaseMapper<BorrowingInformationEntity> {
	/**
	 * 根据id查找还款方式
	 * @return	还款方式
	 */
	List<ReimbursementType> findReimbursementType();
	
	BorrowingInformationEntity selectById(Integer id);

	List<BorrowingInformationEntity> queryPage(Page<BorrowingInformationEntity> borrowingInformationPage,Map<String, Object> params);

	List<Integer> queryListByPerIds(List<Integer> perIds);

	List<BorrowingInformationEntity> queryCurrentMonthIntoManage(Map<String, Object> params);

	List<BorrowingInformationEntity> queryCurrentMonthBidNo(Map<String, Object> params);
	
}
