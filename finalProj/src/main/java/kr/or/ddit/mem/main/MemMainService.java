package kr.or.ddit.mem.main;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.PicnicRecomVO;
import kr.or.ddit.vo.UserVO;
import kr.or.ddit.vo.SmsVO;

public interface MemMainService {

	//주말 나들이 장소 추천
	public List<Map<String, Object>> detailPicnic(PicnicRecomVO picnicRecomVO);

	//아이디 중복확인
	public int checkMemId(String memId);

	//회원가입시 문자인증
	public void certifiedPhoneNumber(String memPhoneNumber, int ranNum);

	//회원가입신청
	public int signUpMember(MemberVO memberVO);

	//회원상세정보
	//<select id="detailMember" parameterType="memberVO" resultMap="memberMap">
	public MemberVO detailMember(MemberVO memberVO);

	//회원+직원 아이디 찾기
	public String findId(UserVO userVO);

	//회원+직원 패스워드 찾기
	public String findPassword(UserVO userVO);

	//회원+직원 패스워드 변경하기
	public int changePassword(UserVO userVO);


	public List<SmsVO> selectMyChat(SmsVO smsVO);
	}
