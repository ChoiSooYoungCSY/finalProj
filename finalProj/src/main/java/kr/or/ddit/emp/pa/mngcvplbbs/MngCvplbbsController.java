package kr.or.ddit.emp.pa.mngcvplbbs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp/pa/mngcvplbbs")
@Controller
public class MngCvplbbsController {

	// 인사행정 - 커뮤니티 관리 - 민원게시판
	@GetMapping("")
	public String mngMemCivilAppealBoard() {
		log.info("mngMemCivilAppealBoard");
		return "emp/pa_mng_civilappeal_board";
	}

}
