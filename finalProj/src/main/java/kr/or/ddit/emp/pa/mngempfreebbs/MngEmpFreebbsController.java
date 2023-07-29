package kr.or.ddit.emp.pa.mngempfreebbs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp/pa/mngempfreebbs")
@Controller
public class MngEmpFreebbsController {

	// 인사행정 - 직원게시판 관리 - 자유게시판
	@GetMapping("")
	public String mngEmpFreeBoard() {
		log.info("mngEmpFreeBoard");
		return "emp/pa_mng_emp_free_board";
	}

}
