package kr.or.ddit.emp.cmnt.freebbs;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.vo.EmpBbsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/emp/cmnt/freebbs")
public class EmpFreebbsController {

	@Inject
	EmpFreebbsService empFreebbsService;

	// 커뮤니티 - 자유게시판
	@GetMapping("")
	public String empFreeBoard() {
		log.info("empFreeBoard");
		return "emp/emp_cmnt_free_board";
	}

	/** 직원 게시판 게시물 불러오기 **/
	@ResponseBody
	@GetMapping("/postList")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray postList() {
		log.info("postList");

		return (JSONArray) this.empFreebbsService.selectAll();
	}

	/**
	 * 직원자유게시판 게시글 등록
	 * @return
	 */
	@GetMapping("/register")
	public String register() {
		log.info("register");
		return "emp/emp_cmnt_free_board_register";
	}

	/**
	 * 직원자유게시판 게시글 등록
	 * @param freeBbsVO
	 * @return
	 */
	@PostMapping("/registerPost")
	public String registerPost(@ModelAttribute("EmpBbsVO") EmpBbsVO empBbsVO) {
		log.info("게시글 등록 empBbsVO => " + empBbsVO);

		int result = this.empFreebbsService.registerPost(empBbsVO);
		log.info("등록 result : " + result);

		return "redirect:/emp/cmnt/freebbs";
	}


	@GetMapping("/freedetail")
	public String freeDetail(@ModelAttribute("EmpBbsVO") EmpBbsVO empBbsVO, Model model) throws ParseException {

		log.info("empBbsVO : " + empBbsVO);

		EmpBbsVO freebbsdata = this.empFreebbsService.freeDetail(empBbsVO);
		log.info("상세보기 freebbsdata : " + freebbsdata);

		//데이터 베이스에 varchar2형식으로 저장되어 있는 날짜를 변환해서 나타냄
		SimpleDateFormat sourceFormat = new SimpleDateFormat("yyyyMMddHHmmss");
	    SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        Date lstWritingDate = sourceFormat.parse(freebbsdata.getLastUpdtTm());
        String formattedDate = targetFormat.format(lstWritingDate);
        freebbsdata.setLastUpdtTm(formattedDate);
        log.info("formattedDate : " + formattedDate);

		model.addAttribute("freebbsdata", freebbsdata);

		//게시글 조회수 증가
		empFreebbsService.plusCnt(empBbsVO);


		return "emp/emp_cmnt_free_board_detail";
	}
}
