package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberVO implements Serializable {
	private String memIntrst;
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
	private String acntSttsCd;
	private int memVisit;
	private List<AuthoritiesVO> memberAuthVOList;
	private MultipartFile picture;
	private List<FamilyVO> familyVOList;
	private String acntSttsNm;
	private String sttemnt;
	private String joinDate;

	private int maleCnt;
	private int femaleCnt;
	private int memberTotal;
	private int teenagers;
	private int twenties;
	private int thirties;
	private int forties;
	private int fifties;
	private int sixties;
	private int seventies;
	private int eighties;
	private int nineties;
}
