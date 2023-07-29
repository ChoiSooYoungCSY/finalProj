package kr.or.ddit.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class EmpVO {
	private String empNm;
	private String empId;
	private String password;
	private String empMail;
	private String deptCd;
	private String deptNm;
	private String jbgdCd;
	private String jbgdNm;
	private String empBrthdy;
	private String empImg;
	private String bankCd;
	private String actno;
	private String jncmpYmd;
	private String rsgntnYmd;
	private String superiorId;
	private List<AuthoritiesVO> empAuthVOList;
	private MultipartFile picture;
	private String empPhoneNo;
	private String addr;
	private String empStatus;

	public EmpVO() {}

	public EmpVO(String empId, String empNm, String jbgdNm, String deptNm, String empStatus) {
		this.empId = empId;
		this.empNm = empNm;
		this.jbgdNm = jbgdNm;
		this.deptNm = deptNm;
		this.empStatus = empStatus;
	}
}
