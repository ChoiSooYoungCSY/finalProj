package kr.or.ddit.mem.mypg.managect;

import java.security.Principal;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;

import org.apache.catalina.User;
import org.apache.maven.artifact.repository.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import kr.or.ddit.security.CustomUser;
import kr.or.ddit.vo.CmnuseManagectVO;
import kr.or.ddit.vo.HshldCmnuseVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/mem/mypg/managectbbs")
@Controller
public class HshldCmnuseCostController {

	@Inject
	HshldCmnuseCostService mypgManageCostService;



	// 회원 메인페이지 - 관리비 조회
	@GetMapping("")
	public String managectBoard(Model model, Principal principal) {
		log.info("managectBoard");


		String memId = principal.getName();
		MemberVO memberVO = new MemberVO();
		memberVO.setMemId(memId);
		log.info("memId : " + memId);

		List<HshldCmnuseVO> mangList = mypgManageCostService.selectAll(memberVO);
		log.info("mangList : " + mangList);

		for (HshldCmnuseVO vo : mangList) {
			String rlvtYm = vo.getRlvtYm();
			String year = rlvtYm.substring(0, 4);
			String month = rlvtYm.substring(4);

			vo.setStrYm(year + "년 " + month + "월");
		}

		model.addAttribute("mangList" , mangList);

		return "mem/mem_mypg_managectbbs_board";
	}


	// 관리비 상세 정보
	@GetMapping("/detail")
	public String managectDetail() {
		log.info("managectDetail");

			return "mem/mem_mypg_managectbbs_detail";
		}


	/**
	 * AJAX를 이용해 총 공용관리비를 연월로 검색한다.
	 * @param rlvtYm
	 * @return 검색된 관리비 정보를 담은 VO객체
	 */
	@ResponseBody
	@GetMapping("/detail.ajax")
	public HshldCmnuseVO selectOneAjax (HshldCmnuseVO hshldCmnuseVO) {
		log.info("HshldCmnuseVO : " + hshldCmnuseVO);


		HshldCmnuseVO hshldInfoNo = this.mypgManageCostService.selectOne(hshldCmnuseVO);
		log.info("hshldInfoNo : " +  hshldInfoNo);

		HshldCmnuseVO rlvtYm = this.mypgManageCostService.selectOne(hshldCmnuseVO);
		log.info("CmnuseManagectVO : " + rlvtYm);


		if (rlvtYm == null) {
			HshldCmnuseVO voForReturn = new HshldCmnuseVO();
			voForReturn.setManagectNo(0);
			return voForReturn;
		}
		return hshldInfoNo;
	}


	//관리비 상세 비교 페이지
	@GetMapping("/comp/detail")
	public String managectCompDetail(Model model, Principal principal) {
		log.info("managectCompDetail");
		String memId = principal.getName();
		MemberVO memberVO = new MemberVO();
		memberVO.setMemId(memId);
		log.info("memId : " + memId);

		List<HshldCmnuseVO> compList = mypgManageCostService.selectAll(memberVO);
		log.info("compList : " + compList);

		for (HshldCmnuseVO vo : compList) {
			String rlvtYm = vo.getRlvtYm();
			String year = rlvtYm.substring(0, 4);
			String month = rlvtYm.substring(4);

			vo.setStrYm(year + "년 " + month + "월");
		}

		model.addAttribute("compList" , compList);

		return "mem/mem_mypg_managectbbs_comp_detail";
	}



	// 관리비 비교
	@GetMapping("/comp")
	public String managectComp(Model model, Principal principal, HshldCmnuseVO hshldCmnuseVO) {
		log.info("managectComp");


		String memId = principal.getName();
		MemberVO memberVO = new MemberVO();
		memberVO.setMemId(memId);

		List<HshldCmnuseVO> compList = mypgManageCostService.selectAll(memberVO);
		log.info("managectCompTotal :" + compList);

		model.addAttribute("managectCompTotal" , compList);

		compList.sort(Comparator.comparing(HshldCmnuseVO::getRlvtYm));

		Gson gson = new Gson();
		JsonArray jArray = new JsonArray();

		Iterator<HshldCmnuseVO> vo = compList.iterator();
		while (vo.hasNext()) {
			HshldCmnuseVO hshldCmnuseVO2 = (HshldCmnuseVO) vo.next();
			JsonObject object = new JsonObject();

			//총액
			Long managectTotal = hshldCmnuseVO2.getManagectTot();
			//날짜
			String rlvtYm = hshldCmnuseVO2.getRlvtYm();
			//전기
			Long managectElctyList = hshldCmnuseVO2.getManagectElcty();
			//수도
			Long managectWtrList = hshldCmnuseVO2.getManagectWtr();
			//가스
			Long managectHeatList = hshldCmnuseVO2.getManagectHeat();
			//청소
			Long managectClnList = hshldCmnuseVO2.getManagectCln();
			//소독
			Long managectDsnfList = hshldCmnuseVO2.getManagectDsnf();
			//수선
			Long managectRepairList = hshldCmnuseVO2.getManagectRepair();
			//승강기
			Long managectElvtrList = hshldCmnuseVO2.getManagectElvtr();


			object.addProperty("managectTotal", managectTotal);
			object.addProperty("rlvtYm", rlvtYm);
			object.addProperty("elc", managectElctyList);
			object.addProperty("wtr", managectWtrList);
			object.addProperty("heat", managectHeatList);
			object.addProperty("cln", managectClnList);
			object.addProperty("dsn", managectDsnfList);
			object.addProperty("repair", managectRepairList);
			object.addProperty("elvt", managectElvtrList);

			jArray.add(object);

		}

		String compJson = gson.toJson(jArray);
		log.info("compJson : " + compJson);

		model.addAttribute("compJson" , compJson);


		return "mem/mem_mypg_managectbbs_comp";
		}



	/**
	 * AJAX를 이용해 총 공용관리비를 연월로 검색한다.
	 * @param rlvtYm
	 * @return 검색된 관리비 정보를 담은 VO객체
	 */
	@ResponseBody
	@GetMapping("/comp.ajax")
	public HshldCmnuseVO selectOneCompAjax (HshldCmnuseVO hshldCmnuseVO) {
		log.info("HshldCmnuseVO : " + hshldCmnuseVO);


		HshldCmnuseVO hshldInfoNo = this.mypgManageCostService.selectOne(hshldCmnuseVO);
		log.info("hshldInfoNo : " +  hshldInfoNo);

		HshldCmnuseVO rlvtYm = this.mypgManageCostService.selectOne(hshldCmnuseVO);
		log.info("CmnuseManagectVO : " + rlvtYm);


		if (rlvtYm == null) {
			HshldCmnuseVO voForReturn = new HshldCmnuseVO();
			voForReturn.setManagectNo(0);
			return voForReturn;
		}
		return hshldInfoNo;
	}
}
