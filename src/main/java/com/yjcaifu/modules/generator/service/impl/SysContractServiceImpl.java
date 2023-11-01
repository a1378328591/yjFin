package com.yjcaifu.modules.generator.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.net.URL;
import java.util.Date;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;

import com.yjcaifu.modules.generator.dao.SysContractDao;
import com.yjcaifu.modules.generator.entity.SysContractEntity;
import com.yjcaifu.modules.generator.service.SysContractService;
import com.yjcaifu.modules.oss.cloud.OSSFactory;


@Service("sysContractService")
public class SysContractServiceImpl extends ServiceImpl<SysContractDao, SysContractEntity> implements SysContractService {

	@Autowired
	private SysContractDao sysContractDao;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SysContractEntity> page = this.selectPage(
                new Query<SysContractEntity>(params).getPage(),
                new EntityWrapper<SysContractEntity>()
        );
        List<SysContractEntity> list = page.getRecords();
        for (SysContractEntity sysContractEntity : list) {
        	String url=sysContractEntity.getUrl();
    		String suffix = url.substring((url.lastIndexOf("test")));
        	// 设置URL过期时间为1min
    		Date expiration = new Date(new Date().getTime() + 60 * 1000);
    		//返回带签名的url
    		URL retUrl = OSSFactory.build().download(suffix,expiration);
    		sysContractEntity.setDownloadUrl(retUrl);
		}

        return new PageUtils(page);
    }

	@Override
	public void deleteByConId(Integer id) {
		//sysContractDao.deleteByConId(id);
		baseMapper.deleteById(id);
	}

}
