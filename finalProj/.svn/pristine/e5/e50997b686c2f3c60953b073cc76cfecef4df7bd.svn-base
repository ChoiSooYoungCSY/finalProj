package kr.or.ddit.emp.fs.mnginspection;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.emp.aa.mngmanagect.MngManageCostService;
import kr.or.ddit.vo.CmnuseManagectVO;
import kr.or.ddit.vo.HshldCmnuseVO;
import kr.or.ddit.vo.HshldManagectVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @Class Name : MngEelectricityInsepectionController.java
 * @Description : MngEelectricityInsepectionController Class
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
@RequestMapping("/emp/fs")
@Controller
public class MngEelectricityInsepectionController {

	@Autowired
	MngManageCostService mngManageCostService;

	/** 파일 업로드 및 다운로드를 위한 전역변수 */
	private String fileName = "";

	/**
	 * 시설보안 - 검침기록 관리 - 전기검침 페이지로 포워딩한다.
	 * @param model
	 * @param hshldCmnuseVO
	 * @return 전기검침 페이지
	 */
	@GetMapping("/mngelctymtinsp")
	public String selectOneHshldCmnuse(Model model, HshldCmnuseVO hshldCmnuseVO) {
		log.info("hshldCmnuseVO(latest) : " + hshldCmnuseVO);

		List<HshldCmnuseVO> voList = new ArrayList<>();

		// 특정 연월, 호수의 관리비 정보
		// /mngelctymtinsp/detail?rlvtYm=202307&hshldInfoNo=101101
		voList.add(this.mngManageCostService.selectOneHshldCmnuse(hshldCmnuseVO));

		// 해당 관리비의 1년 전 관리비 정보
		String strRlvtYm = hshldCmnuseVO.getRlvtYm();
		int intRlvtYm = Integer.parseInt(strRlvtYm) - 100;
		hshldCmnuseVO.setRlvtYm(String.valueOf(intRlvtYm));
		log.info("hshldCmnuseVO(past) : " + hshldCmnuseVO);
		voList.add(this.mngManageCostService.selectOneHshldCmnuse(hshldCmnuseVO));

		// 총 공용관리비
		List<CmnuseManagectVO> cmnuseManagectVOList = this.mngManageCostService.selectAllCmnuseManagect();
		// 날짜 형식 변경
		for (CmnuseManagectVO vo : cmnuseManagectVOList) {
			String rlvtYm = vo.getRlvtYm();
			String year = rlvtYm.substring(0, 4);
			String month = rlvtYm.substring(4);
			vo.setStrYm(year + "년 " + month + "월");
		}

		model.addAttribute("voList", voList);
		model.addAttribute("cmnuseManagectVOList", cmnuseManagectVOList);

		return "emp/fs_mng_electricity_meter_inspection";
	}

	/**
	 * 세대관리비 등록 페이지로 포워딩한다.
	 * @return 세대관리비 등록 페이지
	 */
	@GetMapping("/mngelctymtinsp/register")
	public String registerHshldManagect() {
		log.info("registerHshldManagect");

		return "emp/aa_mng_household_management_cost_register";
	}

	/**
	 * AJAX를 이용해 세대관리비를 연월, 세대정보로 검색한다.
	 * @param vo
	 * @return 검색된 관리비 정보를 담은 VO객체
	 */
	@ResponseBody
	@GetMapping("/mngelctymtinsp/detail.ajax")
	public HshldCmnuseVO selectOneHshldCmnuse(HshldCmnuseVO hshldCmnuseVO) {
		log.info("hshldCmnuseVO : " + hshldCmnuseVO);

		// 세대 공용관리비 검색
		hshldCmnuseVO = this.mngManageCostService.selectOneHshldCmnuse(hshldCmnuseVO);

		if (hshldCmnuseVO == null) {
			HshldCmnuseVO voForReturn = new HshldCmnuseVO();
			voForReturn.setManagectNo(0);
			return voForReturn;
		}

		// 세대 관리비 검색
		HshldManagectVO hshldManagectVO = new HshldManagectVO();
		hshldManagectVO.setHshldInfoNo(hshldCmnuseVO.getHshldInfoNo());
		hshldManagectVO.setRlvtYm(hshldCmnuseVO.getRlvtYm());
		hshldManagectVO = this.mngManageCostService.selectOneHshldManagect(hshldManagectVO);

		// 전기료, 수도료, 가스사용료 합산
		if (hshldManagectVO != null) {
			hshldCmnuseVO.setManagectWtr(hshldCmnuseVO.getManagectWtr() + hshldManagectVO.getManagectWtr());
			hshldCmnuseVO.setManagectElcty(hshldCmnuseVO.getManagectElcty() + hshldManagectVO.getManagectElcty());
			hshldCmnuseVO.setManagectHeat(hshldManagectVO.getManagectGas());
			log.info("hshldCmnuseVO : " + hshldCmnuseVO);

			return hshldCmnuseVO;
		} else {
			HshldCmnuseVO voForReturn = new HshldCmnuseVO();
			voForReturn.setManagectNo(0);
			return voForReturn;
		}
	}

	/**
	 * 세대 공용관리비 등록 및 업데이트
	 * @param hshldCmnuseVO
	 * @return 등록 및 업데이트된 행의 수
	 */
	@ResponseBody
	@PostMapping("/mngelctymtinsp/save")
	public String saveHshldCmnuse(HshldCmnuseVO hshldCmnuseVO) {
		log.info("hshldCmnuseVO : " + hshldCmnuseVO);

		// 세대 공용관리비 등록 및 업데이트
		int result = this.mngManageCostService.saveHshldCmnuse(hshldCmnuseVO);

		return String.valueOf(result);
	}
}












