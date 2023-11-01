package com.yjcaifu.common.service.impl;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.dao.SysAreaDao;
import com.yjcaifu.common.entity.SysAreaEntity;
import com.yjcaifu.common.service.SysAreaService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;



@Service("sysAreaService")
public class SysAreaServiceImpl extends ServiceImpl<SysAreaDao, SysAreaEntity> implements SysAreaService {
	
	@Autowired
	private SysAreaDao sysAreaDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
    	String pidStr=(String)params.get("pid");
        Page<SysAreaEntity> page = this.selectPage(
                new Query<SysAreaEntity>(params).getPage(),
                new EntityWrapper<SysAreaEntity>()
                .isNull(null==pidStr, "pid")
                .eq(StringUtils.isNotBlank(pidStr), "pid", pidStr)
        );

        return new PageUtils(page);
    }

	@Override
	public List<SysAreaEntity> querycityList(Map<String, Object> params) {
		List<SysAreaEntity> cityList=sysAreaDao.querycityList(params);
		return cityList;
	}

	@Override
	public List<SysAreaEntity> queryList(Map<String, Object> params) {
		List<SysAreaEntity> list=baseMapper.queryList(params);
		return list;
	}

}
