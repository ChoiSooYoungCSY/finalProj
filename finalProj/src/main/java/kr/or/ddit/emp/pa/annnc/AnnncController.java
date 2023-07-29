package kr.or.ddit.emp.pa.annnc;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.vo.AnnncVO;
import kr.or.ddit.vo.BookVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp/onair")
@Controller
public class AnnncController {

	// DI. IoC (의존성 주입)
	@Inject
	AnnncService annncService;

	/**
	 * 즉시 방송 리스트 불러오기
	 * @param model
	 * @param principal
	 * @param annncVO
	 * @param size
	 * @param currentPage
	 * @param cond
	 * @param keyword
	 * @return
	 * @throws ParseException
	 * @throws java.text.ParseException
	 */
	@GetMapping("/annnc")
	public String AnnncList(Model model, Principal principal, AnnncVO annncVO,
			@RequestParam(value = "size", required = false, defaultValue = "10") int size,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			@RequestParam(value = "cond", required = false, defaultValue = "") String cond,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword) throws ParseException, java.text.ParseException {

		// 로그인 한 아이디
		String memId = principal.getName();
		// list->memId : 멤버아이디명
		log.info("list->memId : " + memId);
		log.info("cond : " + cond);
		log.info("keyword : " + keyword);

		// Map에 cond, keyword를 넣어서 해당 조건에 맞는 레코드수를 구하기
		Map<String, String> map = new HashMap<String, String>();

		map.put("size", String.valueOf(size));
		map.put("currentPage", Integer.toString(currentPage));
		map.put("cond", cond);
		map.put("keyword", keyword);

		int total = this.annncService.getTotal(map);

		// 위의 Map에 currentPage와 size(한페이지에 보여줄 개수)를 추가해서 list구하기
		List<AnnncVO> data = this.annncService.list(map);
		log.info("data : " + data);

		//데이터 베이스에 varchar2형식으로 저장되어 있는 날짜를 변환해서 나타냄
		SimpleDateFormat sourceFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd");

		for (AnnncVO vo : data) {
		    Date fsrtWritingDate = sourceFormat.parse(vo.getFsrtWritingTm());
		    String formattedDate = targetFormat.format(fsrtWritingDate);
		    vo.setFsrtWritingTm(formattedDate);
		    log.info("formattedDate : " + formattedDate);
		}
		//데이터 베이스에 varchar2형식으로 저장되어 있는 날짜를 변환해서 나타냄
		SimpleDateFormat sourceFormatt = new SimpleDateFormat("yyyyMMddHHmmss");
		SimpleDateFormat targetFormatt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		for (AnnncVO vo : data) {
			Date fsrtWritingDatee = sourceFormatt.parse(vo.getAnnncResveTm());
			String formattedDatee = targetFormatt.format(fsrtWritingDatee);
			vo.setAnnncResveTm(formattedDatee);
			log.info("formattedDate : " + formattedDatee);
		}

		/**
		 * 페이징 처리를 위하 전체 글 수 구하기
		 */
		log.info("total : " + total);
		model.addAttribute("data", new ArticlePage<AnnncVO>(total, currentPage, size, data));

		return "emp/emp_announcement";
	}

	/**
	 * 즉시 안내방송 등록
	 * @return
	 */
	@GetMapping("/annnc/register")
	public String register() {
		log.info("register");

		return "emp/emp_announcement_register";
	}

	/**
	 * 즉시 안내방송 등록하기
	 * @param annncVO
	 * @return
	 */
	@PostMapping("/annnc/registerPost")
	public String registerPost(@ModelAttribute AnnncVO annncVO) {
		log.info("annncVO : " + annncVO);

		int result = this.annncService.registerPost(annncVO);
		log.info("방송 등록 result : " + result);

		return "redirect:/emp/onair/annnc";
	}

	/**
	 * 즉시 안내방송 삭제하기
	 * @param annncVO
	 * @return
	 */
	@ResponseBody
	@PostMapping("/annnc/deletePost")
	public String deletePost(@RequestBody AnnncVO annncVO) {

		log.info("삭제 할 annncVO : ", annncVO);

		int result = this.annncService.deletePost(annncVO);

		if(result>0) { //삭제 성공
			return "success";
		}else {
			return "fail";
		}
	}

//////////////////////////// 예약 안내방송 ///////////////////////////////

	/**
	 * 예약 안내방송 리스트 불러오기
	 * @param model
	 * @param principal
	 * @param annncVO
	 * @param size
	 * @param currentPage
	 * @param cond
	 * @param keyword
	 * @return
	 * @throws ParseException
	 * @throws java.text.ParseException
	 */
	@GetMapping("/resveannnc")
	public String resveannncList(Model model, Principal principal, AnnncVO annncVO,
			@RequestParam(value = "size", required = false, defaultValue = "10") int size,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			@RequestParam(value = "cond", required = false, defaultValue = "") String cond,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword) throws ParseException, java.text.ParseException {
		log.info("resveannncList");

		// 로그인 한 아이디
		String memId = principal.getName();
		// list->memId : 멤버아이디명
		log.info("list->memId : " + memId);
		log.info("cond : " + cond);
		log.info("keyword : " + keyword);

		// Map에 cond, keyword를 넣어서 해당 조건에 맞는 레코드수를 구하기
		Map<String, String> map = new HashMap<String, String>();

		map.put("size", String.valueOf(size));
		map.put("currentPage", Integer.toString(currentPage));
		map.put("cond", cond);
		map.put("keyword", keyword);

		int total = this.annncService.getTotal(map);

		// 위의 Map에 currentPage와 size(한페이지에 보여줄 개수)를 추가해서 list구하기
		List<AnnncVO> resData = this.annncService.list(map);
		log.info("resData : " + resData);

		//데이터 베이스에 varchar2형식으로 저장되어 있는 날짜를 변환해서 나타냄
		SimpleDateFormat sourceFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd");

		for (AnnncVO vo : resData) {
		    Date fsrtWritingDate = sourceFormat.parse(vo.getFsrtWritingTm());
		    String formattedDate = targetFormat.format(fsrtWritingDate);
		    vo.setFsrtWritingTm(formattedDate);
		    log.info("formattedDate : " + formattedDate);
		}

		//데이터 베이스에 varchar2형식으로 저장되어 있는 날짜를 변환해서 나타냄
		SimpleDateFormat sourceFormat2 = new SimpleDateFormat("yyyyMMddHHmmss");
		SimpleDateFormat targetFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");

		for (AnnncVO vo : resData) {
			Date fsrtWritingDate = sourceFormat2.parse(vo.getAnnncResveTm());
			String formattedDate = targetFormat2.format(fsrtWritingDate);
			vo.setAnnncResveTm(formattedDate);
			log.info("formattedDate : " + formattedDate);
		}

		/**
		 * 페이징 처리를 위하 전체 글 수 구하기
		 */
		log.info("total : " + total);
		model.addAttribute("resData", new ArticlePage<AnnncVO>(total, currentPage, size, resData));

		return "emp/emp_reservation_announcement";
	}

	/**
	 * 예약 안내방송 등록
	 * @return
	 */
	@GetMapping("/resveannnc/resvRegister")
	public String resvRegister() {
		log.info("resvRegister");

		return "emp/emp_reservation_announcement_register";
	}

	/**
	 * 예약 안내방송 등록하기
	 * @param annncVO
	 * @return
	 */
	@PostMapping("/resveannnc/resvRegisterPost")
	public String resvRegisterPost(@ModelAttribute AnnncVO annncVO) {
		// 예약 시간 값 파싱
	    String annncResveTm = annncVO.getAnnncResveTm();
	    String[] timeParts = annncResveTm.split(":");
	    int hour = Integer.parseInt(timeParts[0]);
	    int minute = Integer.parseInt(timeParts[1]);

	    // 현재 날짜와 시간을 가져오기
	    LocalDateTime now = LocalDateTime.now();
	    int year = now.getYear();
	    int month = now.getMonthValue();
	    int day = now.getDayOfMonth();

	    // 예약 시간을 포함한 LocalDateTime 객체를 생성
	    LocalDateTime resveDateTime = LocalDateTime.of(year, month, day, hour, minute);

	    // 날짜와 시간을 "yyyyMMddHHmmss" 형식으로 변환해주기
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
	    String formattedTime = resveDateTime.format(formatter);

	    annncVO.setAnnncResveTm(formattedTime);

		int result = this.annncService.resvRegister(annncVO);
		log.info("예약방송 등록 result : " + result);

		return "redirect:/emp/onair/resveannnc";
	}

	/**
	 * 예약방송 삭제하기
	 * @param annncVO
	 * @return
	 */
	@ResponseBody
	@PostMapping("/resveannnc/deleteResvPost")
	public String deleteResvPost(@RequestBody AnnncVO annncVO) {

		log.info("삭제 할 annncVO : ", annncVO);

		int result = this.annncService.deleteResvPost(annncVO);

		if(result>0) { //삭제 성공
			return "success";
		}else {
			return "fail";
		}
	}


}


