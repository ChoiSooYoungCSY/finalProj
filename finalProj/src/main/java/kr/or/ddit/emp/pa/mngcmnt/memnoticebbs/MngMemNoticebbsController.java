package kr.or.ddit.emp.pa.mngcmnt.memnoticebbs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp/pa/mngmemntcbbs")
@Controller
public class MngMemNoticebbsController {

	// 인사행정 - 커뮤니티 관리 - 공지사항
		@GetMapping("")
		public String mngMemNoticeBoard() {
			log.info("mngMemNoticeBoard");
			return "emp/pa_mng_mem_notice_board";
		}
}
