package kr.or.ddit.mem.main;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FilenameUtils;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.MemberMapper;
import kr.or.ddit.mapper.PicnicRecomMapper;
import kr.or.ddit.mapper.SmsMapper;
import kr.or.ddit.mapper.UserMapper;
import kr.or.ddit.vo.FamilyVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.PicnicRecomVO;
import kr.or.ddit.vo.SmsVO;
import kr.or.ddit.vo.UserVO;
import lombok.extern.slf4j.Slf4j;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Slf4j
@Service
public class MemMainServiceImpl implements MemMainService {
	@Autowired
	PicnicRecomMapper picnicRecomMapper;

	@Autowired
	MemberMapper memberMapper;

	@Autowired
	UserMapper userMapper;

	@Autowired
	SmsMapper smsMapper;

	//주말 나들이 장소 추천
	@Override
	public List<Map<String, Object>> detailPicnic(PicnicRecomVO picnicRecomVO){
		return this.picnicRecomMapper.detailPicnic(picnicRecomVO);
	}

	//아이디 중복체크
	@Override
	public int checkMemId(String memId) {
		return this.memberMapper.checkMemId(memId);
	}

	//문자인증
	public void certifiedPhoneNumber(String userPhoneNumber, int ranNum) {
		String api_key = "NCSEBEEO4PEGMCZO "; 					//김도희꺼임
	    String api_secret = "E98R3TP3CVATYIUBHRHL1KI6KVCYZT1G"; //김도희꺼임
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", userPhoneNumber);    // 수신전화번호
	    params.put("from", "01022320202");    // 발신전화번호 김도희꺼임
	    params.put("type", "SMS");
	    params.put("text", "[도란도란] 인증번호는" + "["+ranNum+"]" + "입니다."); // 문자 내용 입력
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	        JSONObject obj = (JSONObject) coolsms.send(params);
	        System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	        System.out.println(e.getMessage());
	        System.out.println(e.getCode());
	      }

	}

	//회원가입
	@Override
	public int signUpMember(MemberVO memberVO) {
		String uploadFolder = "C:\\eGovFrameDev-4.1.0-64bit\\workspace\\finalProj\\src\\main\\webapp\\resources\\images\\member";
		log.info("memberVO : " + memberVO);

	    // 파일 업로드 시작
	    File uploadPath = new File(uploadFolder);

//	    // 만약에 연/월/일 해당 폴더가 없으면 새로 생성
//	    if (uploadPath.exists() == false) {
//	         uploadPath.mkdir();
//	    }

	    MultipartFile picture = memberVO.getPicture();
	    String uploadFileName = null;

	    if (picture != null && !picture.isEmpty()) { //사진을 올렸으면
	        uploadFileName = picture.getOriginalFilename();
	        uploadFileName = memberVO.getMemId() + "." + FilenameUtils.getExtension(uploadFileName);

	        try {
	            File saveFile = new File(uploadPath, uploadFileName);
	            picture.transferTo(saveFile);
	        } catch (IllegalStateException | IOException e) {
	            log.error(e.getMessage());
	            return 0;
	        }
	    } else { //프로필 사진을 안올렸으면
	        uploadFileName = memberVO.getMemImg();
	    }

	    memberVO.setMemImg(uploadFileName);
	    //아이디가 어차피 중복이 안되니까 uuid를 할지 말지 정하기
//	    UUID uuid = UUID.randomUUID();
//	    String uploadFileName = uuid.toString() + "_" + memberVO.getMemId();
	    // ===================== 파일 업로드 끝 =====================

	    try {
	         // member insert 실행
	         int result = this.memberMapper.signUpMember(memberVO);
	         log.info("회원 등록 result : " + result);

	         // family insert 실행
	         for (FamilyVO familyVO : memberVO.getFamilyVOList()) {
	        	 if (familyVO.getFamilyNm() != null && !familyVO.getFamilyNm().equals("")) {
	        		 familyVO.setMemId(memberVO.getMemId());
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

	//회원 상세정보
	@Override
	public MemberVO detailMember(MemberVO memberVO) {
		return this.memberMapper.detailMember(memberVO);
	}

	//회원+직원 아이디 찾기
	@Override
	public String findId(UserVO userVO) {
		return this.userMapper.findId(userVO);
	}

	//회원+직원 비밀번호 찾기
	@Override
	public String findPassword(UserVO userVO) {
		return this.userMapper.findPassword(userVO);
	}

	//회원+직원 비밀번호 변경하기
	@Override
	public int changePassword(UserVO userVO) {
		int memCnt = this.userMapper.findMember(userVO); // 회원인지 찾기
		if (memCnt == 1) { //멤버 테이블에 정보가 있으면
			return this.userMapper.changeMemPassword(userVO); // 회원 비밀번호 변경
		} else { // 멤버 테이블에 정보가 없으면
			int empCnt = this.userMapper.findEmp(userVO); //직원 테이블에 검색
			if (empCnt == 1) { //직원 테이블에 정보가 있으면
				return this.userMapper.changeEmpPassword(userVO); // 직원 비밀번호 변경
			} else { // 직원 테이블에도 정보가 없으면
				return 0;
			}
		}
	}


	/**
	 * 상대방과의 채팅 내역을 가져오는 메소드
	 * @param smsVO (me, you)
	 * @return List<SmsVO>
	 */
	@Override
	public List<SmsVO> selectMyChat(SmsVO smsVO) {
		return this.smsMapper.selectMyChat(smsVO);
	}


}
