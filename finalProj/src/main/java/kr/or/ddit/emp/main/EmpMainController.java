 package kr.or.ddit.emp.main;


import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.ServerEndpoint;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.vo.BoardVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.ScheduleVO;
import kr.or.ddit.vo.SmsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp")
@Controller
public class EmpMainController {


	@Inject
	EmpMainService empMainService;
	@Inject
	ServletContext servletContext;

	// 관리자 메인페이지
	@GetMapping("/main")
	public String empMain(Model model, Principal principal) {
		log.info("empMain : 관리자 메인페이지");
		String empId = principal.getName();
		List<ScheduleVO> selectAllSchedule = this.empMainService.selectAllSchedule(empId);
		model.addAttribute("selectAllSchedule",selectAllSchedule);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			String writeValueAsString = objectMapper.writeValueAsString(selectAllSchedule);
			model.addAttribute("writeValueAsString", writeValueAsString);
		} catch (JsonProcessingException e) {
			log.error("json 변환 중 에러 발생"+e.getMessage());
		}
		return "emp/emp_main";
	}

	// 메인페이지 - 업무상태 메시지, 출근시간, 퇴근시간 유지
	@ResponseBody
	@GetMapping("/state")
	public String empState(String state, String workInTime, String workOutTime, String dclzH, String dclzM) {
		if (state != null) {
			log.info("empState - state : " + state);
			servletContext.setAttribute("state", state);
		}
		if (workInTime != null) {
			log.info("empState - workInTime : " + workInTime);
			servletContext.setAttribute("workInTime", workInTime);
		}
		if (workOutTime != null) {
			log.info("empState - workOutTime : " + workOutTime);
			servletContext.setAttribute("workOutTime", workOutTime);
		}
		if (dclzH != null) {
			log.info("empState - dclzH : " + dclzH);
			servletContext.setAttribute("dclzH", dclzH);
		}
		if (dclzM != null) {
			log.info("empState - dclzM : " + dclzM);
			servletContext.setAttribute("dclzM", dclzM);
		}
		return "success";
	}

	// 마이페이지 - 마이홈
	@GetMapping("/mypage/myhome")
	public String myHome() {
		log.info("myHome");
		return "emp/emp_mypage_myhome";
	}

	// 마이페이지 - 개인정보 수정
	@GetMapping("/mypage/updtinfo")
	public String updateInfo() {
		log.info("updateInfo");
		return "emp/emp_mypage_update_info";
	}

	// 마이페이지 - 근태 현황
	@GetMapping("/mypage/mydclz")
	public String myDiligenceAndLaziness() {
		log.info("diligenceAndLaziness");
		return "emp/emp_mypage_diligenceandlaziness";
	}

	// 마이페이지 - 연차 내역
	@GetMapping("/mypage/mypaidlv")
	public String myPaidLeave() {
		log.info("myPaidLeave");
		return "emp/emp_mypage_my_paidleave";
	}

	// 마이페이지 - 급여명세서
	@GetMapping("/mypage/mysalary")
	public String mySalary() {
		log.info("mySalary");
		return "emp/emp_mypage_my_salary";
	}

	// 마이페이지 - 재직증명서
	@GetMapping("/mypage/mycrtf")
	public String myCertificate() {
		log.info("myCertificate");
		return "emp/emp_mypage_my_certificate";
	}

	// 마이페이지 - 전체 쪽지함
	@GetMapping("/mypage/allsms")
	public String allSms() {
		log.info("allSms");
		return "emp/emp_mypage_all_sms";
	}

	// 마이페이지 - 받은 쪽지함
	@GetMapping("/mypage/receivedsms")
	public String receivedSms() {
		log.info("receivedSms");
		return "emp/emp_mypage_received_sms";
	}

	// 마이페이지 - 보낸 쪽지함
	@GetMapping("/mypage/sentsms")
	public String sentSms() {
		log.info("sentSms");
		return "emp/emp_mypage_sent_sms";
	}

	// 마이페이지 - 쪽지 즐겨찾기
	@GetMapping("/mypage/bkmksms")
	public String bookmarkSms() {
		log.info("bookmarkSms");
		return "emp/emp_mypage_bookmark_sms";
	}

	// 마이페이지 - 나의 게시글
	@GetMapping("/mypage/mypst")
	public String myPost() {
		log.info("myPost");
		return "emp/emp_mypage_my_post";
	}

	// 마이페이지 - 나의 댓글
	@GetMapping("/mypage/mycmnt")
	public String myComment() {
		log.info("myComment");
		return "emp/emp_mypage_my_comment";
	}

	// 마이페이지 - 나의 관심글
	@GetMapping("/mypage/bkmkpst")
	public String bookmarkPost() {
		log.info("bookmarkPost");
		return "emp/emp_mypage_bookmark_post";
	}


	// 인사행정 - AI추천시스템 관리 - 나들이장소 추천 관리
	@GetMapping("/pa/mngpicnicrecom")
	public String mngPicnicRecommend() {
		log.info("mngPicnicRecommend");
		return "emp/pa_mng_picnic_recommend";
	}

	// 인사행정 - AI추천시스템 관리 - 맛집 추천 관리
	@GetMapping("/pa/mngrstrntrecom")
	public String mngRestaurantRecommend() {
		log.info("mngRestaurantRecommend");
		return "emp/pa_mng_restaurant_recommend";
	}




	// 시설보안 - 회사정보 관리 - 조직도
	@GetMapping("/fs/mngorgcht")
	public String mngOrganizationChart() {
		log.info("mngOrganizationChart");
		return "emp/fs_mng_organization_chart";
	}

	// 시설보안 - 회사정보 관리 - 비상연락망
	@GetMapping("/fs/mngemptelno")
	public String mngEmpTelephoneNumber() {
		log.info("mngEmpTelephoneNumber");
		return "emp/fs_mng_emp_telephone_number";
	}

	// 시설보안 - 아파트정보 관리 - 단지정보
	@GetMapping("/fs/mngaptinfo")
	public String mngAptInfo() {
		log.info("mngAptInfo");
		return "emp/fs_mng_apt_info";
	}

	// 시설보안 - 아파트정보 관리 - 평형정보
	@GetMapping("/fs/mnghpprinfo")
	public String mngHouseSupplyAreaInfo() {
		log.info("mngHouseSupplyAreaInfo");
		return "emp/fs_mng_house_supply_area_info";
	}

	// 시설보안 - 아파트정보 관리 - 연락처
	@GetMapping("/fs/mngcttpc")
	public String mngContactPlace() {
		log.info("mngContactPlace");
		return "emp/fs_mng_contactplace";
	}

	// 시설보안 - 아파트정보 관리 - 부동산정보
	@GetMapping("/fs/mngestateinfo")
	public String mngEstateInfo() {
		log.info("mngEstateInfo");
		return "emp/fs_mng_estate_info";
	}

	// 시설보안 - 공용시설 관리 - 헬스장
	@GetMapping("/fs/mnggym")
	public String mngGym() {
		log.info("mngGym");
		return "emp/fs_mng_gym";
	}

	// 시설보안 - 공용시설 관리 - 수영장
	@GetMapping("/fs/mngpool")
	public String mngPool() {
		log.info("mngPool");
		return "emp/fs_mng_pool";
	}

	// 시설보안 - 공용시설 관리 - 스크린골프장
	@GetMapping("/fs/mngglfpr")
	public String mngGolfPracticeRange() {
		log.info("mngGolfPracticeRange");
		return "emp/fs_mng_golf_practive_range";
	}

	// 시설보안 - 공용시설 관리 - 독서실
	@GetMapping("/fs/mngreadingroom")
	public String mngReadingRoom() {
		log.info("mngReadingRoom");
		return "emp/fs_mng_readingroom";
	}


	// 주소록 - 조직도
	@GetMapping("/addr/orgcht")
	public String organizationChart() {
		log.info("organizationChart");
		return "emp/emp_addr_organization_chart";
	}

	// 주소록 - 비상연락망
	@GetMapping("/addr/telno")
	public String telephoneNumber() {
		log.info("telephoneNumber");
		return "emp/emp_addr_telephone_number";
	}

	// 메신저
	@GetMapping("/messenger")
	public String messenger() {
		log.info("messenger");
		return "emp/emp_messenger";
	}

	@ResponseBody
	@GetMapping("/tabletest")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray tableTest() {
		log.info("tableTest");

		JSONArray jsonArr = new JSONArray();

		for (int i = 1; i < 20; i++) {
			jsonArr.add(new BoardVO(i, "제목" + i, "작성자" + i, "2023-01-" + i, 300 + i));
		}

		return jsonArr;
	}





	@ResponseBody
	@PostMapping("/onlineUserDetail")
	public List<EmpVO> onlineUserDetail(@RequestBody String data) {

		log.info("onlineUserDetail ===" + data);
		String[] users = data.split(",");
		List<EmpVO> onlineMemberVOList = new ArrayList<>();
		for (int i = 0; i< users.length; i++) {
			String user = users[i].trim().replace("\"", "");

			log.info("onlineEmpVOList"+user);
			EmpVO empVO = this.empMainService.detailEmp(user);
			onlineMemberVOList.add(empVO);
		}
		log.info("onlineUserDetail onlineMemberVOList"+onlineMemberVOList);

		return onlineMemberVOList;
	}

	@ResponseBody
	@PostMapping("/selectMyChat")
	public List<SmsVO> selectMyChat(@RequestBody SmsVO smsVO){
		log.info("selectMyChat"+smsVO);

		return this.empMainService.selectMyChat(smsVO);
	}

}
