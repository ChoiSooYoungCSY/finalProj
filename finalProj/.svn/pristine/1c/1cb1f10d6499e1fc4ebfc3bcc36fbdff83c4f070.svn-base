package kr.or.ddit.mem.mypg;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/mem/mypg/myhome")
@Controller
public class MypageController {

	@Autowired
	MypageService mypageService;

	//마이홈
	@GetMapping("")
	public String myHome() {
		log.info("myhome : 마이홈");

		return "mem/mem_mypg_myhome";
	}


}
