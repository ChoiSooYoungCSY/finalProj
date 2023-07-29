package kr.or.ddit.mem.mypg.visit;


import java.security.Principal;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.vo.VisitVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mem/mypg/visit")
public class VisitController {

	@Inject
	VisitService visitService;

	@GetMapping("")
	public String visitInfo(Principal principal, Model model) {
		log.info("visitInfo");
		String memId = principal.getName();
		List<VisitVO> selctVisitInfoList = this.visitService.selctVisitInfo(memId);
		VisitVO visitVO = this.visitService.selectMonthCnt(memId);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			String selctVisitInfo = objectMapper.writeValueAsString(selctVisitInfoList);

			model.addAttribute("selctVisitInfo", selctVisitInfo);

		} catch (Exception e) {
			log.error("json변환중 에러 발생" + e.getMessage());
		}
		model.addAttribute("visitVO", visitVO);
		return "mem/mem_mypg_visit_info";
	}

	@ResponseBody
	@PostMapping("/regist")
	public String regist(@RequestBody VisitVO visitVO) {
		log.info("visit/regist" +visitVO);
		int cnt = this.visitService.registVisit(visitVO);

		if(cnt == 1) {
			return "success";
		}
		return "failed";
	}
	@ResponseBody
	@PostMapping("/update")
	public String update(@RequestBody VisitVO visitVO) {
		log.info("visit/update" +visitVO);
		int cnt = this.visitService.updateVisit(visitVO);

		if(cnt == 1) {
			return "success";
		}
		return "failed";
	}
	@ResponseBody
	@PostMapping("/delete")
	public String delete(@RequestBody VisitVO visitVO) {
		log.info("visit/delete" +visitVO);
		int cnt = this.visitService.deleteVisit(visitVO);

		if(cnt == 1) {
			return "success";
		}
		return "failed";
	}

}
