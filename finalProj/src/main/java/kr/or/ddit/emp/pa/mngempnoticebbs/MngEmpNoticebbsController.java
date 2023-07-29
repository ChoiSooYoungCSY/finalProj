package kr.or.ddit.emp.pa.mngempnoticebbs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp/pa/mngempntcbbs")
@Controller
public class MngEmpNoticebbsController {

	// 인사행정 - 직원게시판 관리 - 공지사항
	@GetMapping("")
	public String mngEmpNoticeBoard() {
		log.info("mngEmpNoticeBoard");
		return "emp/pa_mng_emp_notice_board";
	}

}
