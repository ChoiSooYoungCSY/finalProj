package kr.or.ddit.emp.atrz;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.or.ddit.vo.AtrzDocVO;
import kr.or.ddit.vo.DocFormVO;
import kr.or.ddit.vo.EmpVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @Class Name : AtrzController.java
 * @Description : AtrzController Class
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.07.11          최초생성
 *
 * @author 임경빈
 * @since 2023.07.11
 * @version 1.0
 * @see
 */

@Slf4j
@RequestMapping("/emp/atrz")
@Controller
public class AtrzController {

	@Autowired
	DocFormService docFormService;
	@Autowired
	AtrzLineService atrzLineService;
	@Autowired
	AtrzDocService atrzDocService;

	/**
	 * 전자결재 - 내 문서함 페이지로 포워딩한다.
	 * @return 내 문서함 페이지
	 */
	@GetMapping("/mydoc")
	public String myDocument(Model model, String empId) {
		log.info("electronicAuthorization");

		// 문서양식 트리를 위한 리스트
		List<DocFormVO> docFormVOList = this.docFormService.docFormList();
		List<Map<String, Object>> nodes = new ArrayList<Map<String, Object>>();

		for (DocFormVO docFormVO : docFormVOList) {
			Map<String, Object> node = new HashMap<>();
	        node.put("child", docFormVO.getDocFormSj());
	        node.put("parent", docFormVO.getDocSeNm());
	        nodes.add(node);
	    }
		log.info("nodes : " + nodes);

	    Gson gson = new Gson();
	    String json = gson.toJson(nodes);
	    log.info("json : " + json);
	    model.addAttribute("json", json);

	    // 기안문서 목록
	    List<AtrzDocVO> atrzDocVOList = this.atrzDocService.myDocList(empId);
	    log.info("myDocument - atrzDocVOList : " + atrzDocVOList);
	    model.addAttribute("atrzDocVOList", atrzDocVOList);

	    // 결재 대기 문서 목록
	    List<AtrzDocVO> atrz01List = this.atrzDocService.atrz01List(empId);
	    log.info("myDocument - atrz01List : " + atrz01List);
	    model.addAttribute("atrz01List", atrz01List);

	    // 참조 문서 목록
	    List<AtrzDocVO> atrz07List = this.atrzDocService.atrz07List(empId);
	    log.info("myDocument - atrz01List : " + atrz07List);
	    model.addAttribute("atrz07List", atrz07List);

		return "emp/emp_atrz_mydocument";
	}

	/**
	 * 전자결재 - 새 결제 진행 페이지로 포워딩한다.
	 * @return 새 결제 진행 페이지
	 */
	@GetMapping("/register")
	public String register(Model model, String docFormSj) {
		log.info("register - docFormSj : " + docFormSj);

		model.addAttribute("docFormSj", docFormSj);

		// 전체 사원 목록
		List<EmpVO> empVOList = this.atrzLineService.selectAllEmp();

		List<Map<String, Object>> nodes = new ArrayList<Map<String, Object>>();
		for (EmpVO empVO : empVOList) {
			Map<String, Object> node = new HashMap<>();

			String position = empVO.getEmpNm() + " " + empVO.getJbgdNm();
	        node.put("child", position);
	        node.put("parent", empVO.getDeptNm());
	        node.put("empId", empVO.getEmpId());
	        nodes.add(node);
	    }
		log.info("nodes : " + nodes);

	    Gson gson = new Gson();
	    String json = gson.toJson(nodes);
	    log.info("json : " + json);
	    model.addAttribute("json", json);

		return "emp/emp_atrz_register";
	}

	/**
	 * 결재문서, 결재권자 등록
	 * @param atrzDocVO
	 * @return 결재문서 상세정보 페이지 재요청
	 */
	@PostMapping("/registerPost")
	public String regAtrzDoc(AtrzDocVO atrzDocVO) {
		log.info("regAtrzDoc - atrzDocVO : " + atrzDocVO);

		int result = this.atrzDocService.regAtrzDoc(atrzDocVO);
		log.info("regAtrzDoc - result : " + result);

		return "redirect:/emp/atrz/detail?atrzDocId=" + atrzDocVO.getAtrzDocId();
	}

	/**
	 * 결재문서 상세정보 페이지로 포워딩한다.
	 * @param atrzDocId
	 * @return 결재문서 상세정보 페이지
	 */
	@GetMapping("/detail")
	public String atrzDetail(Model model,String atrzDocId) {
		log.info("atrzDetail - atrzDocId : " + atrzDocId);

		// 결재문서 상세정보
		AtrzDocVO atrzDocVO = this.atrzDocService.atrzDetail(atrzDocId);
		log.info("atrzDetail - atrzDocVO : " + atrzDocVO);
		model.addAttribute("atrzDocVO", atrzDocVO);

		return "emp/emp_atrz_detail";
	}

	/**
	 * 결재 승인시 결재상태 코드, 문서 내용 업데이트
	 * @param atrzDocVO
	 * @return
	 */
	@ResponseBody
	@PostMapping("/updateatrz02")
	public String updateAtrz02(@RequestBody AtrzDocVO atrzDocVO) {
		log.info("updateAtrz02 - atrzDocVO : " + atrzDocVO);
		int result = this.atrzDocService.updateAtrz02(atrzDocVO);
		log.info("updateAtrz02 - result : " + result);

		return String.valueOf(result);
	}

	/**
	 * 결재 반려시 결재상태 코드, 문서 내용 업데이트
	 * @param atrzDocVO
	 * @return
	 */
	@ResponseBody
	@PostMapping("/updateatrz03")
	public String updateAtrz03(@RequestBody AtrzDocVO atrzDocVO) {
		log.info("updateAtrz03 - atrzDocVO : " + atrzDocVO);
		int result = this.atrzDocService.updateAtrz03(atrzDocVO);
		log.info("updateAtrz03 - result : " + result);

		return String.valueOf(result);
	}
}

















