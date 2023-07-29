package kr.or.ddit.emp.cmnt.empntcbbs;

import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.vo.EmpNtcBbsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/emp/cmnt/empntcbbs")
public class EmpNoticebbsController {

	@Inject
	EmpNoticebbsService empNoticebbsService;
	// 커뮤니티 - 공지사항
	@GetMapping("")
	public String empNoticeBoard() {
		log.info("empNoticeBoard");
		return "emp/emp_cmnt_notice_board";
	}


	/** 직원 공지사항 게시판 게시물 불러오기 **/
	@ResponseBody
	@GetMapping("/postList")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray postList() {
		log.info("postList");

		return (JSONArray) this.empNoticebbsService.selectAll();
	}

}
