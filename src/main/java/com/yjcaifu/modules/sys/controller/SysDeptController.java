package com.yjcaifu.modules.sys.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yjcaifu.modules.sys.entity.SysDeptEntity;
import com.yjcaifu.modules.sys.entity.SysMenuEntity;
import com.yjcaifu.modules.sys.service.SysDeptService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;

/**
 * 部门管理; InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-20 14:50:44
 */
@RestController
@RequestMapping("sys/sysdept")
public class SysDeptController {
	@Autowired
	private SysDeptService sysDeptService;

	/**
	 * 列表
	 */
	@RequestMapping("/list")
	@RequiresPermissions("sys:sysdept:list")
	public R list(@RequestParam Map<String, Object> params) {
		PageUtils page = sysDeptService.queryPage(params);

		return R.ok().put("page", page);
	}

	/**
	 * 信息
	 */
	@RequestMapping("/info/{deptId}")
	@RequiresPermissions("sys:sysdept:info")
	public R info(@PathVariable("deptId") Long deptId) {
		SysDeptEntity sysDept = sysDeptService.selectById(deptId);

		return R.ok().put("sysDept", sysDept);
	}

	/**
	 * 保存
	 */
	@RequestMapping("/save")
	@RequiresPermissions("sys:sysdept:save")
	public R save(@RequestBody SysDeptEntity sysDept) {
		sysDeptService.insert(sysDept);

		return R.ok();
	}

	/**
	 * 修改
	 */
	@RequestMapping("/update")
	@RequiresPermissions("sys:sysdept:update")
	public R update(@RequestBody SysDeptEntity sysDept) {
		sysDeptService.updateById(sysDept);

		return R.ok();
	}

	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	@RequiresPermissions("sys:sysdept:delete")
	public R delete(@RequestBody Long deptId) {
		// sysDeptService.deleteBatchIds(Arrays.asList(deptIds));
		if (deptId <= 3) {
			return R.error("非常规部门，不能删除");
		}
		// 判断是否有子菜单或按钮
		List<SysDeptEntity> deptList = sysDeptService.queryListParentId(deptId);
		if (deptList.size() > 0) {
			return R.error("请先删除子部门或按钮");
		}

		sysDeptService.deleteById(deptId);
		return R.ok();
	}

}
