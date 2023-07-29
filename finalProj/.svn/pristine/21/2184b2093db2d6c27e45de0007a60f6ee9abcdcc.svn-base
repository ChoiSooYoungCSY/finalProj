package kr.or.ddit.emp.empaidoran;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/emp/ai/doran")
public class EmpAIDoranController {

	@Inject
	EmpAIDoranService empAIDoranService;

	// AI도란
	@GetMapping("")
	public String aiDoran(Model model) {
		log.info("aiDoran");
		MemberVO memberVO = this.empAIDoranService.selectAllGenderCnt();
		MemberVO memberVO2 = this.empAIDoranService.selectAllMemberAgeCnt();
		ObjectMapper objectMApper = new ObjectMapper();
		try {
			String memberCnt = objectMApper.writeValueAsString(memberVO);
			model.addAttribute("memberCnt", memberCnt);

			String memberCnt2 = objectMApper.writeValueAsString(memberVO2);
			model.addAttribute("memberCnt2", memberCnt2);
		} catch (Exception e) {
			log.error("json변환중 에러 발생" + e.getMessage());
		}

		log.info("aiDoran");
		return "emp/emp_ai_doran";
	}



}
