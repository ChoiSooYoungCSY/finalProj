package kr.or.ddit.mem.mypg.personalInfo;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/mem/mypg/personalInfo")
@Controller
public class PersonalInfoController {

	@Autowired
	PersonalInfoService mypageService;

	//개인정보 수정 비밀번호 확인
	@GetMapping("")
	public String personalInfo() {
		log.info("personalInfo : 개인정보 수정 비밀번호를 입력하세요");

		return "mem/mem_mypg_personalInfo";
	}

	//개인정보수정 접근 인증
	@ResponseBody
	@PostMapping("/auth")
	public int personalInfoAuth(@RequestBody MemberVO memberVO) {
		log.info("personalInfoAuth : 개인정보 수정 - 인증");

		return this.mypageService.passwordConfirm(memberVO);

//		if (memberVO == null) {
//			return "fail";
//		}
//		return "success";
	}

	//개인정보 수정 화면
	@GetMapping("/auth")
	public String personalInfoAuth() {
		log.info("personalInfoAuth : 개인정보 수정 화면");

		return "mem/mem_mypg_personalInfo_auth";
	}

	//개인정보 수정 후 Post
	@ResponseBody
	@PostMapping(value = "/authPost", produces = "text/html; charset=UTF-8")
	public String memPersonalInfoAuthPost(MemberVO memberVO) {

		log.debug("memberVO : {}", memberVO);
		int cnt = this.mypageService.editMemInfo(memberVO);
		if(cnt >= 1) {
			return "<script>alert('회원정보 수정 성공!'); location.href='/mem/mypg/personalInfo/auth';</script>";
		} else {
			return "<script>alert('회원정보 수정 실패!'); location.href='/mem/mypg/personalInfo/auth';</script>";
		}
	}

	//얼굴인식 로그인 등록하는 화면
	@GetMapping("/faceloginRegister")
	public String faceloginRegister() {
		log.info("faceloginRegister : 얼굴인식 로그인 등록 화면");

		return "mem/mem_mypg_facelogin_register";
	}

	//얼굴인식 로그인 등록
	@ResponseBody
	@PostMapping("/faceloginRegister")
	public int faceloginRegisterPost(@RequestBody MemberVO memberVO) {
		log.info("/faceloginRegisterPost : 얼굴인식 등록 Post");
		log.info("C: "+ memberVO);

		return mypageService.registerFace(memberVO);
	}



}
