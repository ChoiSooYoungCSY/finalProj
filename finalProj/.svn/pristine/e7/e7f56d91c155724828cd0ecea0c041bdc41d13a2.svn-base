package kr.or.ddit.emp.pa.mngaccnt;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.EmpMapper;
import kr.or.ddit.mapper.MemberMapper;
import kr.or.ddit.mapper.UserMapper;
import kr.or.ddit.mem.main.MemMainServiceImpl;
import kr.or.ddit.vo.AcntSttsVO;
import kr.or.ddit.vo.AuthoritiesVO;
import kr.or.ddit.vo.BankVO;
import kr.or.ddit.vo.BlacklistVO;
import kr.or.ddit.vo.DeptVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.FamilyVO;
import kr.or.ddit.vo.JobGradeVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.SttemntVO;
import lombok.extern.slf4j.Slf4j;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Slf4j
@Service
public class MngAccountServiceImpl implements MngAccountService {

	@Autowired
	EmpMapper empMapper;

	@Autowired
	MemberMapper memberMapper;

	//직원 리스트 받아오기
	@Override
	public List<EmpVO> selectAllEmp() {
		JSONArray jsonArr = new JSONArray();

		List<EmpVO> empList =  this.empMapper.selectAllEmp();

		for (EmpVO emp : empList) {
			if (emp.getJncmpYmd().equals(emp.getRsgntnYmd())) {
				emp.setEmpStatus("재직");
			} else {
				emp.setEmpStatus("퇴직");
			}

    		jsonArr.add(emp);

		}
		return jsonArr;
	}

	//특정 직원 정보 보기
	@Override
	public EmpVO selectEmp(String empId) {
		return this.empMapper.detailEmp(empId);
	}

	//직원 등록 시 아이디 중복확인
	@Override
	public int checkEmpId(String empId) {
		return this.empMapper.checkEmpId(empId);
	}

	//DB에서 부서 정보 가져오기
	@Override
	public List<DeptVO> selectDept() {
		return this.empMapper.selectDept();
	}

	//DB에서 직급 정보 가져오기
	@Override
	public List<JobGradeVO> selectJbgd() {
		return this.empMapper.selectJbgd();
	}

	//DB에서 은행 정보 가져오기
	@Override
	public List<BankVO> selectBank() {
		return this.empMapper.selectBank();
	}

	//직원 등록하기
	@Override
	public int registerEmp(EmpVO empVO) {
		//프로필사진 넣기
		String uploadFolder = "C:\\eGovFrameDev-4.1.0-64bit\\workspace\\finalProj\\src\\main\\webapp\\resources\\images\\emp";

		File uploadPath = new File(uploadFolder);

		MultipartFile picture = empVO.getPicture();
		String uploadFileName = null;

		if (picture != null && !picture.isEmpty()) { //새로운 사진을 올렸으면
		    uploadFileName = picture.getOriginalFilename();
		    uploadFileName = empVO.getEmpId() + "." + FilenameUtils.getExtension(uploadFileName);

		    try {
		    	File saveFile = new File(uploadPath, uploadFileName);
		        picture.transferTo(saveFile);
		    } catch (IllegalStateException | IOException e) {
		    	log.error(e.getMessage());
		        return 0;
		    }
		} else { //프로필 사진을 안올렸으면
			uploadFileName = empVO.getEmpImg();
		}

		empVO.setEmpImg(uploadFileName);

	    try {
	        //emp정보 넣기
	        int result = this.empMapper.registerEmp(empVO);

	        //권한정보 넣기
	        List<String> authList = new ArrayList<String>();
			if (empVO.getJbgdCd().equals("JBGD01")) {
				for(int i=3; i<=8; i++) {
					authList.add("AUTH0" + i);
				}

			} else {
				switch(empVO.getDeptCd()) {
					case "DEPT01" :
						authList.add("AUTH03");
						if(empVO.getJbgdCd().equals("JBGD02"))
							authList.add("AUTH06");
						break;
					case "DEPT02" :
						authList.add("AUTH04");
						if(empVO.getJbgdCd().equals("JBGD02"))
							authList.add("AUTH07");
						break;
					case "DEPT03" :
						authList.add("AUTH05");
						if(empVO.getJbgdCd().equals("JBGD02"))
							authList.add("AUTH08");
						break;
				}//switch 끝
			}//else 끝

			for (String authcd : authList) {
				AuthoritiesVO authVO = new AuthoritiesVO();
				authVO.setUserId(empVO.getEmpId());
				authVO.setAuthrtCd(authcd);
				this.empMapper.registerEmpAuth(authVO);
				result++;
			}
			return result; //권한정보 넣기 끝
	    } catch (Exception e) {
	        log.error(e.getMessage());
	        return 0;
	    }
	}

	@Override
	public void sendPassword(String empPhoneNo, String empNm, String empId, String password) {
		String api_key = "NCSEBEEO4PEGMCZO "; 					//김도희꺼임
	    String api_secret = "E98R3TP3CVATYIUBHRHL1KI6KVCYZT1G"; //김도희꺼임
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<>();
	    params.put("to", empPhoneNo);    // 수신전화번호
	    params.put("from", "01022320202");    // 발신전화번호 김도희꺼임
	    params.put("type", "SMS");
	    params.put("text", "[도란도란] " + empNm + "님의 직원정보가 등록되었습니다.\n아이디 ["+empId+"] 비밀번호 ["+password+"]"); // 문자 내용 입력
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	        JSONObject obj = (JSONObject) coolsms.send(params);
	        System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	        System.out.println(e.getMessage());
	        System.out.println(e.getCode());
	      }
	}

	//직원정보 수정하기
	@Override
	public int editEmpInfo(EmpVO empVO) {
		String uploadFolder = "C:\\eGovFrameDev-4.1.0-64bit\\workspace\\finalProj\\src\\main\\webapp\\resources\\images\\emp";
	    log.info("empVO : " + empVO);

	    File uploadPath = new File(uploadFolder);

	    MultipartFile picture = empVO.getPicture();
	    String uploadFileName = null;

	    if (picture != null && !picture.isEmpty()) { //새로운 사진을 올렸으면
	        uploadFileName = picture.getOriginalFilename();
	        uploadFileName = empVO.getEmpId() + "." + FilenameUtils.getExtension(uploadFileName);

	        try {
	            File saveFile = new File(uploadPath, uploadFileName);
	            picture.transferTo(saveFile);
	        } catch (IllegalStateException | IOException e) {
	            log.error(e.getMessage());
	            return 0;
	        }
	    } else { //프로필 사진을 안올렸으면
	        uploadFileName = empVO.getEmpImg();
	    }

	    empVO.setEmpImg(uploadFileName);

	    try {
	        //EMP 정보 수정하기
	    	int result = this.empMapper.editEmpInfo(empVO);
	        log.info("회원정보 수정 result: " + result);


	        //EMP 권한 삭제하기
	        AuthoritiesVO authVO = new AuthoritiesVO();
			authVO.setUserId(empVO.getEmpId());
	        this.empMapper.deleteEmpAuth(authVO);
	        result++;

	        //권한정보 넣기
	        List<String> authList = new ArrayList<>();
			if (empVO.getJbgdCd().equals("JBGD01")) {
				for(int i=3; i<=8; i++) {
					authList.add("AUTH0" + i);
				}

			} else {
				switch(empVO.getDeptCd()) {
					case "DEPT01" :
						authList.add("AUTH03");
						if(empVO.getJbgdCd().equals("JBGD02"))
							authList.add("AUTH06");
						break;
					case "DEPT02" :
						authList.add("AUTH04");
						if(empVO.getJbgdCd().equals("JBGD02"))
							authList.add("AUTH07");
						break;
					case "DEPT03" :
						authList.add("AUTH05");
						if(empVO.getJbgdCd().equals("JBGD02"))
							authList.add("AUTH08");
						break;
				}//switch 끝
			}//else 끝

			for (String authcd : authList) {
				authVO.setAuthrtCd(authcd);
				this.empMapper.registerEmpAuth(authVO);
				result++;
			}
			return result; //권한정보 넣기 끝

	    } catch (Exception e) {
	        log.error(e.getMessage());
	        return 0;
	    }
	}

	//특정 직원계정 삭제하기(비활성화)
	@Override
	public int deleteEmp(EmpVO empVO) {
		return this.empMapper.deleteEmp(empVO);
	}



	///////////////////////////////////////////////////////////////////////

	//회원 리스트 받아오기
	@Override
	public List<MemberVO> selectAllMem() {
		JSONArray jsonArr = new JSONArray();

		List<MemberVO> memberList =  this.empMapper.selectAllMem();

		for (MemberVO member : memberList) {
			String dongho = member.getHshldInfoNo();
			String dong = dongho.substring(0, 3);
			String ho = dongho.substring(3);
			dongho = dong + "동 " + ho + "호";
			member.setHshldInfoNo(dongho);
    		jsonArr.add(member);

		}
		return jsonArr;
	}

	//승인대기중인 회원 리스트 받아오기
	@Override
	public List<MemberVO> selectAwaitingApprovalMem() {
		JSONArray jsonArr = new JSONArray();

		List<MemberVO> memberList =  this.empMapper.selectAwaitingApprovalMem();

		for (MemberVO member : memberList) {
			String dongho = member.getHshldInfoNo();
			String dong = dongho.substring(0, 3);
			String ho = dongho.substring(3);
			dongho = dong + "동 " + ho + "호";
			member.setHshldInfoNo(dongho);
    		jsonArr.add(member);

		}
		return jsonArr;
	}

	//승인대기중인 회원이 몇명인지
	@Override
	public int awaitingApprovalNum() {
		return this.empMapper.awaitingApprovalNum();
	}

	//블랙리스트 회원 리스트 받아오기
	@Override
	public List<BlacklistVO> selectBlacklistMem() {
		JSONArray jsonArr = new JSONArray();

		List<BlacklistVO> blmemList =  this.empMapper.selectBlacklistMem();

		for (BlacklistVO blmem : blmemList) {
			jsonArr.add(blmem);

		}
		return jsonArr;
	}

	//블랙리스트 회원이 몇명인지
	@Override
	public int blacklistNum() {
		return this.empMapper.blacklistNum();
	}

	//회원 신고내역 받아오기
	@Override
	public List<SttemntVO> selectMemSttemnt(MemberVO memVO) {
		return this.empMapper.selectMemSttemnt(memVO);
	}

	//특정 회원계정 블랙리스트 만들기
	@Override
	public int blacklistMem(BlacklistVO blacklistVO) {
		//MEMBER 테이블에서 상태 변경
		int result = this.empMapper.blacklistMem(blacklistVO);

		//블랙리스트 테이블에 추가
		if (this.empMapper.blacklistMemAdd(blacklistVO) == 1) {
			result++;
		}

		//STTEMNT_CMNT, STTEMNT_PST, STTEMNT_SMS 테이블에서 내용 삭제(Y로 바꾸기)하기
		for (SttemntVO sttemntVO : blacklistVO.getList()) {
			this.empMapper.sttemntCmntDel(sttemntVO.getSttemntCmntNo());
			this.empMapper.sttemntPstDel(sttemntVO.getSttemntPstNo());
			this.empMapper.sttemntSmsDel(sttemntVO.getSttemntSmsNo());
			log.info(sttemntVO.toString());
			result++;
		}

		return result;
	}

	//특정 회원계정 블랙리스트 해제하기
	@Override
	public int blacklistMemClear(MemberVO memVO) {
		//MEMBER 테이블에서 상태 변경
		int result = this.empMapper.blacklistMemClear(memVO);

		//BLACKLIST 테이블에서 삭제
		if (this.empMapper.blacklistMemDelete(memVO) == 1) {
			result++;
		}

		return result;
	}

	//특정 회원 정보 보기
	@Override
	public MemberVO selectMem(String memId) {
		return this.empMapper.detailMem(memId);
	}

	//회원 상태 가져오기
	@Override
	public List<AcntSttsVO> selectAcntStts() {
		return this.empMapper.selectAcntStts();
	}

	//회원 정보 수정
	@Override
	public int editMemInfo(MemberVO memVO) {
		String uploadFolder = "C:\\eGovFrameDev-4.1.0-64bit\\workspace\\finalProj\\src\\main\\webapp\\resources\\images\\member";
	    log.info("memVO : " + memVO);

	    File uploadPath = new File(uploadFolder);

	    MultipartFile picture = memVO.getPicture();
	    String uploadFileName = null;

	    if (picture != null && !picture.isEmpty()) { //새로운 사진을 올렸으면
	        uploadFileName = picture.getOriginalFilename();
	        uploadFileName = memVO.getMemId() + "." + FilenameUtils.getExtension(uploadFileName);

	        try {
	            File saveFile = new File(uploadPath, uploadFileName);
	            picture.transferTo(saveFile);
	        } catch (IllegalStateException | IOException e) {
	            log.error(e.getMessage());
	            return 0;
	        }
	    } else { //프로필 사진을 안올렸으면
	        uploadFileName = memVO.getMemImg();
	    }

	    memVO.setMemImg(uploadFileName);

	    try {
	        //회원 정보 수정하기
	    	int result = this.empMapper.editMemInfo(memVO);
	        log.info("회원정보 수정 result: " + result);

	        this.memberMapper.deleteMemFamily(memVO);

	        for (FamilyVO familyVO : memVO.getFamilyVOList()) {
	            if (familyVO.getFamilyNm() != null && !familyVO.getFamilyNm().equals("")) {
	                familyVO.setMemId(memVO.getMemId());
	                this.memberMapper.insertMemberFamily(familyVO);
	                result++;
	            }
	        }
	        return result;

	    } catch (Exception e) {
	        log.error(e.getMessage());
	        return 0;
	    }
	}

	//회원 탈퇴상태로 바꾸기
	@Override
	public int deleteMem(MemberVO memVO) {
		return this.empMapper.deleteMem(memVO);
	}

	//승인대기중인 회원 승인하기
	@Override
	public int approvalMem(MemberVO memVO) {
		return this.empMapper.approvalMem(memVO);
	}

	//승인대기중인 회원 완전 삭제하기
	@Override
	public int approvalMemDelete(MemberVO memVO) {
		return this.empMapper.approvalMemDelete(memVO);
	}



}
