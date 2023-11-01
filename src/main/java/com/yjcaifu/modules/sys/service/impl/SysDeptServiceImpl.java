package com.yjcaifu.modules.sys.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;

import com.yjcaifu.modules.sys.dao.SysDeptDao;
import com.yjcaifu.modules.sys.entity.SysDeptEntity;
import com.yjcaifu.modules.sys.service.SysDeptService;


@Service("sysDeptService")
public class SysDeptServiceImpl extends ServiceImpl<SysDeptDao, SysDeptEntity> implements SysDeptService {

	@Autowired
	private SysDeptDao sysDeptDao;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SysDeptEntity> page = this.selectPage(
                new Query<SysDeptEntity>(params).getPage(),
                new EntityWrapper<SysDeptEntity>()
        );
        List<SysDeptEntity> sysDeptEntity = page.getRecords();
        for (SysDeptEntity sysDeptEntity2 : sysDeptEntity) {
        	sysDeptEntity2.setParentName(sysDeptDao.selectParentName(sysDeptEntity2.getParentId()));
		}

        return new PageUtils(page);
    }

	@Override
	public List<SysDeptEntity> queryListParentId(Long parentId) {
		
		return sysDeptDao.queryListParentId(parentId);
	}

}
