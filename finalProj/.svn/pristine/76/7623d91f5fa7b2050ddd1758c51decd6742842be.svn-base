package kr.or.ddit.emp.pa.mngaccnt;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import freemarker.core.ParseException;
import kr.or.ddit.mem.cmnt.club.ClubService;
import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.vo.AcntSttsVO;
import kr.or.ddit.vo.BankVO;
import kr.or.ddit.vo.BlacklistVO;
import kr.or.ddit.vo.ClubVO;
import kr.or.ddit.vo.DeptVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.JobGradeVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.ScndhdBbsVO;
import kr.or.ddit.vo.SttemntVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @Class Name : MngAccountController.java.java
 * @Description : MngAccountController.java Class
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.07.12         				  최초생성
 *
 * @author 김도희
 * @since 2023.07.12
 * @version 1.0
 * @see
 */

@Slf4j
@RequestMapping("/emp/pa")
@Controller
public class MngAccountController {

	@Autowired
	MngAccountService mngAccountService;


	// 인사행정 - 직원계정 관리 mngaccnts -> mngempacnt
	@GetMapping("/mngempacnt")
	public String mngEmpAccount() {
		log.info("mngEmpAccount");
		return "emp/pa_mng_emp_account";
	}

	/** 인사행정 - 계정 관리 - 직원계정 불러오기 */
	@ResponseBody
	@GetMapping("/mngempacnt/empAccount")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray empAccount() {
		log.info("empAccount");

		return (JSONArray) this.mngAccountService.selectAllEmp();
	}

	/** 인사행정 - 계정 관리 - 특정 직원계정 불러오기 */
	@GetMapping("/mngempacnt/detail")
	public String mngEmpAccountDetail(Model model, @RequestParam("empId") String empId) {
	    log.info("mngEmpAccountDetail");

	    EmpVO empVO = this.mngAccountService.selectEmp(empId);
	    log.info("empVO", empVO);

	    model.addAttribute("detailEmp", empVO);

	    return "emp/pa_mng_emp_account_detail";
	}

	/** 인사행정 - 계정 관리 - 특정 직원계정 수정하기 */
	@ResponseBody
	@PostMapping(value = "/mngempacnt/detailPost", produces = "text/html; charset=UTF-8")
	public String mngEmpAccountDetailPost(EmpVO empVO) {
	    log.info("mngEmpAccountDetailPost");

	    int cnt = this.mngAccountService.editEmpInfo(empVO);
		if(cnt >= 3) {
			return "<script>alert('직원정보 수정 성공!'); location.href='/emp/pa/mngempacnt/detail?empId=" + empVO.getEmpId() +"';</script>";
		} else {
			return "<script>alert('직원정보 수정 실패'); location.href='/emp/pa/mngempacnt/detail?empId=" + empVO.getEmpId() +"';</script>";
		}
	}

	/** 인사행정 - 계정 관리 - 직원 추가 */
	@GetMapping("/mngempacnt/register")
	public String register() {
	    log.info("mngEmpAccountDetail");

	    return "emp/pa_mng_emp_account_register";
	}

	/** 인사행정 - 계정 관리 - 직원 추가 - 아이디 중복확인*/
	@ResponseBody
	@GetMapping("/mngempacnt/empCheckId")
	public int empCheckId(@RequestParam String empId) {
		log.info("empCheckId : 직원추가 아이디 중복체크");

		int cnt = this.mngAccountService.checkEmpId(empId);
		log.info("cnt : " + cnt);

		return cnt;
	}

	/** 인사행정 - 계정 관리 - 직원 추가 - 부서코드 가져오기 */
	@ResponseBody
	@GetMapping("/mngempacnt/dept")
	public List<DeptVO> dept() {
		log.info("dept");

		return this.mngAccountService.selectDept();
	}

	/** 인사행정 - 계정 관리 - 직원 추가 - 직급코드 가져오기 */
	@ResponseBody
	@GetMapping("/mngempacnt/jbgd")
	public List<JobGradeVO> jbgd() {
		log.info("jbgd");

		return this.mngAccountService.selectJbgd();
	}

	/** 인사행정 - 계정 관리 - 직원 추가 - 은행코드 가져오기 */
	@ResponseBody
	@GetMapping("/mngempacnt/bank")
	public List<BankVO> bank() {
		log.info("mngEmpAccountDetail");

		return this.mngAccountService.selectBank();
	}

	/** 인사행정 - 계정 관리 - 직원 추가 Post */
	@ResponseBody
	@PostMapping(value = "/mngempacnt/registerPost", produces = "text/html; charset=UTF-8")
	public String registerPost(@ModelAttribute EmpVO empVO) {
	    log.info("registerPost");
	    log.debug("empVO : {}", empVO);

	    int cnt = this.mngAccountService.registerEmp(empVO);

	    if(cnt >= 1) {
			return "1";
		} else {
			return "0";
		}
	}

	/** 인사행정 - 계정 관리 - 직원 추가 문자 보내기 */
	@ResponseBody
	@PostMapping("/mngempacnt/registerEmp")
	public String registerEmp(@RequestBody EmpVO empVO) { // 휴대폰 문자보내기
		log.info("registerEmp : 핸드폰 인증 체크 " + empVO);

		mngAccountService.sendPassword(empVO.getEmpPhoneNo(), empVO.getEmpNm(), empVO.getEmpId() ,empVO.getPassword());

		return "1";
	}

	/** 인사행정 - 계정 관리 - 특정 직원계정 삭제하기(비활성화) */
	@ResponseBody
	@PostMapping("/mngempacnt/delete")
	public String mngEmpAccountDelete(@RequestBody EmpVO empVO) {
	    log.info("mngEmpAccountDelete");

	    int cnt = this.mngAccountService.deleteEmp(empVO);
	    log.info("empVO", empVO);

	    if(cnt >= 1) {
			return "1";
		} else {
			return "0";
		}
	}




	// 인사행정 - 입주민계정 관리
	@GetMapping("/mngmemacnt")
	public String mngMemAccount(Model model) {
		log.info("mngMemAccount");

	    int awaitingApprovalNum = this.mngAccountService.awaitingApprovalNum();
	    log.info("awaitingApprovalNum: {}", awaitingApprovalNum);
	    int blacklistNum = this.mngAccountService.blacklistNum();
	    log.info("blacklistNum: {}", blacklistNum);

	    model.addAttribute("awaitingApprovalNum", Integer.valueOf(awaitingApprovalNum));
	    model.addAttribute("blacklistNum", Integer.valueOf(blacklistNum));

		return "emp/pa_mng_mem_account";
	}


	/** 인사행정 - 계정 관리 - 회원계정 불러오기 */
	@ResponseBody
	@GetMapping("/mngmemacnt/memAccount")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray memAccount() {
		log.info("memAccount");

		return (JSONArray) this.mngAccountService.selectAllMem();
	}

	/** 인사행정 - 계정 관리 - 승인대기 페이지 */
		@GetMapping("/mngmemacnt/awaitingApproval")
		public String awaitingApproval() {
			log.info("mngMemAccount");
			return "emp/pa_mng_mem_awaitingApproval";
		}

	/** 인사행정 - 계정 관리 - 승인대기중인 회원계정 불러오기 */
	@ResponseBody
	@GetMapping("/mngmemacnt/awaitingApproval/load")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray awaitingApprovalLoad() {
		log.info("awaitingApprovalLoad");

		return (JSONArray) this.mngAccountService.selectAwaitingApprovalMem();
	}

	/** 인사행정 - 계정 관리 - 블랙리스트 페이지 */
	@GetMapping("/mngmemacnt/blacklist")
	public String blacklist() {
		log.info("blacklist");
		return "emp/pa_mng_mem_blacklist";
	}

	/** 인사행정 - 계정 관리 - 블랙리스트 회원계정 불러오기 */
	@ResponseBody
	@GetMapping("/mngmemacnt/blacklist/load")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray blacklistLoad() {
		log.info("blacklistLoad");

		return (JSONArray) this.mngAccountService.selectBlacklistMem();
	}

	/** 인사행정 - 계정 관리 - 블랙리스트 회원 신고내역 불러오기*/
	@ResponseBody
	@PostMapping("/mngmemacnt/sttemnt")
	public List<SttemntVO> sttemnt(@RequestBody MemberVO memVO) {
		log.info("sttemnt");

		return this.mngAccountService.selectMemSttemnt(memVO);
	}

	/** 인사행정 - 계정 관리 - 특정 회원계정 블랙리스트 만들기 */
	@ResponseBody
	@PostMapping("/mngmemacnt/blacklist")
	public String blacklistPost(@RequestBody BlacklistVO blacklistVO) {
	    log.info("blacklistPost");

	    int cnt = this.mngAccountService.blacklistMem(blacklistVO);
	    log.info("memVO", blacklistVO);

	    if(cnt >= 2) {
			return "1";
		} else {
			return "0";
		}
	}

	/** 인사행정 - 계정 관리 - 특정 회원계정 블랙리스트 해제하기 */
	@ResponseBody
	@PostMapping("/mngmemacnt/blacklist/clear")
	public String blacklistClear(@RequestBody MemberVO memVO) {
		log.info("blacklistClear");

		int cnt = this.mngAccountService.blacklistMemClear(memVO);
		log.info("memVO", memVO);

		if(cnt >= 2) {
			return "1";
		} else {
			return "0";
		}
	}


	/** 인사행정 - 계정 관리 - 특정 회원계정 불러오기 */
	@GetMapping("/mngmemacnt/detail")
	public String mngMemAccountDetail(Model model, @RequestParam("memId") String memId) {
	    log.info("mngEmpAccountDetail");

	    MemberVO memVO = this.mngAccountService.selectMem(memId);
	    log.info("memVO", memVO);

	    model.addAttribute("detailMem", memVO);

	    return "emp/pa_mng_mem_account_detail";
	}

	/** 인사행정 - 계정 관리 - 회원 상태 가져오기 */
	@ResponseBody
	@GetMapping("/mngempacnt/acntStts")
	public List<AcntSttsVO> acntStts() {
		log.info("acntStts");

		return this.mngAccountService.selectAcntStts();
	}

	/** 인사행정 - 계정 관리 - 특정 회원계정 수정하기 */
	@ResponseBody
	@PostMapping(value = "/mngmemacnt/detailPost", produces = "text/html; charset=UTF-8")
	public String mngMemAccountDetailPost(MemberVO memVO) {
	    log.info("mngMemAccountDetailPost");

	    int cnt = this.mngAccountService.editMemInfo(memVO);
		if(cnt >= 1) {
			return "<script>alert('회원정보 수정 성공!'); location.href='/emp/pa/mngmemacnt/detail?memId=" + memVO.getMemId() +"';</script>";
		} else {
			return "<script>alert('회원정보 수정 실패'); location.href='/emp/pa/mngmemacnt/detail?memId=" + memVO.getMemId() +"';</script>";
		}
	}

	/** 인사행정 - 계정 관리 - 특정 회원계정 탈퇴처리하기(비활성화) */
	@ResponseBody
	@PostMapping("/mngmemacnt/delete")
	public String mngMemAccountDelete(@RequestBody MemberVO memVO) {
	    log.info("mngMemAccountDelete");

	    int cnt = this.mngAccountService.deleteMem(memVO);
	    log.info("memVO", memVO);

	    if(cnt >= 1) {
			return "1";
		} else {
			return "0";
		}
	}


	/** 인사행정 - 계정 관리 - 특정 회원계정 가입 승인하기 */
	@ResponseBody
	@PostMapping("/mngmemacnt/approval")
	public String mngMemAccountApproval(@RequestBody MemberVO memVO) {
	    log.info("mngMemAccountApproval");

	    int cnt = this.mngAccountService.approvalMem(memVO);
	    log.info("memVO", memVO);

	    if(cnt >= 1) {
			return "1";
		} else {
			return "0";
		}
	}

	/** 인사행정 - 계정 관리 - 승인대기중인 계정 완전 삭제하기 */
	@ResponseBody
	@PostMapping("/mngmemacnt/approvalDelete")
	public String mngMemAccountApprovalDelete(@RequestBody MemberVO memVO) {
		log.info("mngMemAccountApprovalDelete");

		int cnt = this.mngAccountService.approvalMemDelete(memVO);
		log.info("memVO", memVO);

		if(cnt >= 1) {
			return "1";
		} else {
			return "0";
		}
	}

}















