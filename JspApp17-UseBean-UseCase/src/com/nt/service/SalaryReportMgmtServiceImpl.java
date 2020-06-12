package com.nt.service;

import com.nt.dto.EmployeeDTO;

public class SalaryReportMgmtServiceImpl implements SalaryReportMgmtService {

	public SalaryReportMgmtServiceImpl() {
		System.out.println("SalaryReportMgmtServiceImpl:: 0-param constructor");
	}
	@Override
	public void generateReport(EmployeeDTO dto) {
	     float netSalary=0.0f, grossSalary=0.0f;
	     //calculate gorss,net Salaries
	     grossSalary=dto.getBasicSalary()+ (dto.getBasicSalary()*0.4f);
	     netSalary=grossSalary-(grossSalary*0.15f);
	     //set results to dto
	     dto.setGrossSalary(grossSalary);
	     dto.setNetSalary(netSalary);

	}

}
