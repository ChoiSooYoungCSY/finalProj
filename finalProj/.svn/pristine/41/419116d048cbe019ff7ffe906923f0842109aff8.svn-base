package kr.or.ddit.emp.pa.mnghmnrsrcs;

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
import kr.or.ddit.vo.DclzVO;
import kr.or.ddit.vo.DeptVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.GivePaidlvVO;
import kr.or.ddit.vo.JobGradeVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.PaidlvSectionVO;
import kr.or.ddit.vo.PaidlyRcordVO;
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
 * @ 2023.07.19         				  최초생성
 *
 * @author 김도희
 * @since 2023.07.19
 * @version 1.0
 * @see
 */

@Slf4j
@RequestMapping("/emp/pa")
@Controller
public class MngHumanResourcesController {

	@Autowired
	MngHumanResourcesService mngHumanResourcesService;

	// 인사행정 - 근태 관리
	@GetMapping("/mngdclz")
	public String mngDiligenceAndLaziness() {
		log.info("mngDiligenceAndLaziness");
		return "emp/pa_mng_diligenceandlaziness";
	}

	/** 인사행정 - 근태 관리 - 날짜별로 DB에서 불러오기 **/
	@ResponseBody
	@GetMapping("/mngdclz/date")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray getDclzData(@RequestParam(name = "date") String date) {
		log.info("getData : 근태 DB에서 데이터 가져오기");

		return (JSONArray) this.mngHumanResourcesService.getDclzData(date);
	}

	/** 인사행정 - 근태 관리 - 특정 직원 근태 정보 불러오기 **/
	@ResponseBody
	@PostMapping("/mngdclz/detail")
	public List<DclzVO> mngdclzDetail(@RequestBody DclzVO dclzVO) {
	    log.info("mngdclzDetail");

	    return this.mngHumanResourcesService.selectEmpDclz(dclzVO);
	}

	/** 인사행정 - 근태 관리 - 특정 직원 근태 정보 업데이트 **/
	@ResponseBody
	@PostMapping("/mngdclz/detailPost")
	public String mngdclzDetailPost(@RequestBody DclzVO dclzVO) {
		log.info("mngdclzDetailPost");

		int cnt = this.mngHumanResourcesService.updateEmpDclz(dclzVO);
		if(cnt >= 1) {
			return "1";
		} else {
			return "0";
		}
	}

	/** 인사행정 - 근태 관리 - 기간별로 DB에서 불러오기 **/
	@ResponseBody
	@GetMapping("/mngdclz/dates")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray getDclzData(@RequestParam("startDate") String startDate,
            					 @RequestParam("endDate") String endDate) {
		log.info("getDatas : 근태 DB에서 데이터 가져오기");
		log.info(startDate, endDate);
		return (JSONArray) this.mngHumanResourcesService.getDclzPeriodData(startDate, endDate);
	}

	/** 인사행정 - 근태 관리 - 차트 **/
	@GetMapping("/mngdclz/chart")
	public String mngdclzChart() {
		log.info("mngdclzChart");
		return "emp/pa_mng_diligenceandlaziness_chart";
	}



	// 인사행정 - 연차 관리
	@GetMapping("/mngpaidlv")
	public String mngPaidLeave() {
		log.info("mngPaidLeave");
		return "emp/pa_mng_paidleave";
	}

	/** 인사행정 - 연차 관리 - 날짜별로 DB에서 불러오기 **/
	@ResponseBody
	@GetMapping("/mngpaidlv/date")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray getPaidlvData(@RequestParam(name = "date") String date) {
		log.info("getData : 근태 DB에서 데이터 가져오기");

		return (JSONArray) this.mngHumanResourcesService.getPaidlvData(date);
	}

	/** 인사행정 - 연차 관리 - 연차 구분 코드 가져오기 */
	@ResponseBody
	@GetMapping("/mngpaidlv/paidlvSection")
	public List<PaidlvSectionVO> paidlvSection() {
		log.info("paidlvSection");

		return this.mngHumanResourcesService.selectPaidlvSection();
	}

	/** 인사행정 - 연차 관리 - 연차 지급내역 불러오기*/
	@ResponseBody
	@PostMapping("/mngpaidlv/givePaidlv")
	public List<GivePaidlvVO> givePaidlv(@RequestBody GivePaidlvVO givePaidlvVO) {
		log.info("givePaidlv");
		List<PaidlvSectionVO> paidlvSectionList = this.mngHumanResourcesService.selectPaidlvSection();
		List<GivePaidlvVO> givePaidlvList = this.mngHumanResourcesService.selectEmpGivePaidlv(givePaidlvVO);
		for(GivePaidlvVO gvo : givePaidlvList) {
			gvo.setPaidlvSectionList(paidlvSectionList);
		}
		return  givePaidlvList;

	}

	/** 인사행정 - 연차 관리 - 특정 직원 지급 연차 정보 업데이트 **/
	@ResponseBody
	@PostMapping("/mngpaidlv/updateGivePaidlv")
	public String updateGivePaidlv(@RequestBody GivePaidlvVO givePaidlvVO) {
		log.info("updateGivePaidlv");

		int cnt = this.mngHumanResourcesService.updateGivePaidlv(givePaidlvVO);
		if(cnt >= 1) {
			return "1";
		} else {
			return "0";
		}
	}

	/** 인사행정 - 연차 관리 - 특정 직원 지급 연차 정보 삭제 **/
	@ResponseBody
	@PostMapping("/mngpaidlv/deleteGivePaidlv")
	public String deleteGivePaidlv(@RequestBody GivePaidlvVO givePaidlvVO) {
		log.info("deleteGivePaidlv");

		int cnt = this.mngHumanResourcesService.deleteGivePaidlv(givePaidlvVO);
		if(cnt >= 1) {
			return "1";
		} else {
			return "0";
		}
	}

	/** 인사행정 - 연차 관리 - 연차 사용내역 불러오기*/
	@ResponseBody
	@PostMapping("/mngpaidlv/paidlyRcord")
	public List<PaidlyRcordVO> PaidlyRcord(@RequestBody PaidlyRcordVO paidlyRcordVO) {
		log.info("PaidlyRcord");
		return this.mngHumanResourcesService.selectPaidlyRcord(paidlyRcordVO);

	}

	/** 인사행정 - 연차 관리 - 특정 직원 지급 연차 정보 업데이트 **/
	@ResponseBody
	@PostMapping("/mngpaidlv/updatePaidlyRcord")
	public String updatePaidlyRcord(@RequestBody PaidlyRcordVO paidlyRcordVO) {
		log.info("updatePaidlyRcord");

		int cnt = this.mngHumanResourcesService.updatePaidlyRcord(paidlyRcordVO);
		if(cnt >= 1) {
			return "1";
		} else {
			return "0";
		}
	}

	/** 인사행정 - 연차 관리 - 특정 직원 사용 연차 정보 삭제 **/
	@ResponseBody
	@PostMapping("/mngpaidlv/deletePaidlyRcord")
	public String deletePaidlyRcord(@RequestBody GivePaidlvVO givePaidlvVO) {
		log.info("deleteGivePaidlv");

		int cnt = this.mngHumanResourcesService.deletePaidlyRcord(givePaidlvVO);
		if(cnt >= 1) {
			return "1";
		} else {
			return "0";
		}
	}




	// 인사행정 - 급여 관리
	@GetMapping("/mngsalary")
	public String mngSalary() {
		log.info("mngSalary");
		return "emp/pa_mng_salary";
	}


}















