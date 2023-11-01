package com.yjcaifu.modules.generator.entity;

import java.io.Serializable;
import java.util.List;

public class ApplicationRequirementsListEntity implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private List<ApplicationRequirementsEntity> applicationRequirementsList;

	public List<ApplicationRequirementsEntity> getApplicationRequirementsList() {
		return applicationRequirementsList;
	}

	public void setApplicationRequirementsList(List<ApplicationRequirementsEntity> applicationRequirementsList) {
		this.applicationRequirementsList = applicationRequirementsList;
	}
}
