package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UserVO implements Serializable{
	private String memId;
	private String password;
	private String memNm;
	private String sexDstn;
	private String email;
	private String faceH5;
	private String memImg;
	private String phoneNo;
	private String telNo;
	private String hshldInfoNo;
	private String memBrthdy;
	private int memVisit;
	private String acntSttsCd;
	private String memIntrst;

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
	private String empNm;
	private List<FamilyVO> familyVOList;
	private String empPhoneNo;
	private String addr;
	private String empStatus;

	private MemberVO memberVO;
	private EmpVO empVO;

	private MultipartFile picture;
	private List<AuthoritiesVO> authVOList;
}
