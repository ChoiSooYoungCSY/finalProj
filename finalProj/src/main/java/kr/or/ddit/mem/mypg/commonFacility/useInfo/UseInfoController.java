package kr.or.ddit.mem.mypg.commonFacility.useInfo;

import java.security.Principal;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.vo.GlfprUseRcordVO;
import kr.or.ddit.vo.GymUseRcordVO;
import kr.or.ddit.vo.LoanBookVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.ReadrmUseRcordVO;
import kr.or.ddit.vo.SwmplUseRcordVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mem/mypg/useInfo")
public class UseInfoController {

	@Inject
	UseInfoService useInfoService;

	@GetMapping("")
	public String UseInfo(Model model, Principal principal) {
		log.info("UseInfoController");
		String userId = principal.getName();
		MemberVO memberVO = new MemberVO();
		memberVO.setMemId(userId);

		List<LoanBookVO> loanBookVOList = this.useInfoService.selectByIdLoanBook(memberVO);
		List<GlfprUseRcordVO> golfUseVOList = this.useInfoService.selectByIdGlfpr(memberVO);
		List<ReadrmUseRcordVO> readrmUseVOList = this.useInfoService.selectByIdReadrm(memberVO);
		List<GymUseRcordVO> gymUseVOList = this.useInfoService.selectByIdGym(memberVO);
		List<SwmplUseRcordVO> swmplUseVOList = this.useInfoService.selectByIdSwmpl(memberVO);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			String loanBookList = objectMapper.writeValueAsString(loanBookVOList);
			String golfUseList = objectMapper.writeValueAsString(golfUseVOList);
			String readrmUseList = objectMapper.writeValueAsString(readrmUseVOList);
			String gymUseList = objectMapper.writeValueAsString(gymUseVOList);
			String swmplUseList = objectMapper.writeValueAsString(swmplUseVOList);

			model.addAttribute("loanBookList", loanBookList);
			model.addAttribute("golfUseList", golfUseList);
			model.addAttribute("readrmUseList", readrmUseList);
			model.addAttribute("gymUseList", gymUseList);
			model.addAttribute("swmplUseList", swmplUseList);

		} catch (Exception e) {
			log.error("json변환중 에러 발생" + e.getMessage());
		}

		return "mem/mem_mypg_common_facility_use_info";
	}

}
