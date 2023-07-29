package kr.or.ddit.mem.mypg.myclub;

import java.security.Principal;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.mem.cmnt.club.ClubService;
import kr.or.ddit.vo.ClubVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @Class Name : MyClubController.java
 * @Description : MyClubController Class
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.07.16          최초생성
 *
 * @author 임경빈
 * @since 2023.07.16
 * @version 1.0
 * @see
 */

@Slf4j
@RequestMapping("/mem/mypg")
@Controller
public class MyClubController {

	@Autowired
	ClubService clubService;

	@GetMapping("/myclub")
	public String myClub(Model model, Principal principal) {

		String memId = principal.getName();
		log.info("myClub - memId : " + memId);

		List<ClubVO> clubVOList = this.clubService.selectAllClubByMemId(memId);
		log.info("clubVOList : " + clubVOList);

		model.addAttribute("data", clubVOList);

		return "mem/mem_mypg_myclub";
	}

}
