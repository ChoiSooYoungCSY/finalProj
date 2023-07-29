package kr.or.ddit.emp.aa.mngmanagect;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.vo.CmnuseManagectVO;
import kr.or.ddit.vo.HshldCmnuseVO;
import kr.or.ddit.vo.HshldManagectVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @Class Name : MngManageCostController.java
 * @Description : MngManageCostController Class
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.07.06          최초생성
 *
 * @author 임경빈
 * @since 2023.07.06
 * @version 1.0
 * @see
 */

@Slf4j
@RequestMapping("/emp/aa")
@Controller
public class MngManageCostController {

	@Autowired
	MngManageCostService mngManageCostService;

	/** 파일 업로드 및 다운로드를 위한 전역변수 */
	private String fileName = "";

	/**
	 * 경리회계 - 관리비 관리 - 공용관리비 페이지로 포워딩한다.
	 * @param model
	 * @return 공용관리비 페이지
	 */
	@GetMapping("/mngcmnusemanagect")
	public String mngCommonUseManagementCost(Model model) {
		log.info("mngCommonUseManagementCost");

		List<CmnuseManagectVO> voList = this.mngManageCostService.selectAllCmnuseManagect();

		// 날짜 형식 변경
		for (CmnuseManagectVO vo : voList) {
			String rlvtYm = vo.getRlvtYm();
			String year = rlvtYm.substring(0, 4);
			String month = rlvtYm.substring(4);

			vo.setStrYm(year + "년 " + month + "월");
		}
		model.addAttribute("voList", voList);

		return "emp/aa_mng_common_use_management_cost";
	}

	/**
	 * 파일 다운로드를 위한 컨트롤러
	 * @return
	 * @throws IOException
	 */
	@ResponseBody
	@GetMapping("/mngcmnusemanagect/download")
	public ResponseEntity<byte[]> downloadFile() throws IOException {
		log.info("downloadFile");

		// 001110101110111011100101100000100
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;

		HttpHeaders headers = new HttpHeaders();

		try {
			in = new FileInputStream("C:\\eGovFrameDev-4.1.0-64bit\\workspace\\finalProj\\src\\main\\webapp\\resources\\upload\\DongilSweet_202307.xls");

			// OCTET : 8 bit로 자름
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			headers.add("Content-Disposition", "attachment;filename=\"" +
						new String(fileName.getBytes("UTF-8"),"ISO-8859-1") + "\"");

			entity = new ResponseEntity<>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);

		} catch (FileNotFoundException e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		return entity;
	}

	/**
	 * 총 공용관리비 등록 페이지로 포워딩한다.
	 * @return 총 공용관리비 등록 페이지
	 */
	@GetMapping("/mngcmnusemanagect/register")
	public String registerCmnuseManagect() {
		log.info("registerCmnuseManagect");

		return "emp/aa_mng_common_use_management_cost_register";
	}

	/**
	 * AJAX를 이용해 총 공용관리비를 연월로 검색한다.
	 * @param rlvtYm
	 * @return 검색된 관리비 정보를 담은 VO객체
	 */
	@ResponseBody
	@GetMapping("/mngcmnusemanagect/detail.ajax")
	public CmnuseManagectVO selectOneCmnuseManagect(String rlvtYm) {
		log.info("rlvtYm : " + rlvtYm);

		CmnuseManagectVO vo = this.mngManageCostService.selectOneCmnuseManagect(rlvtYm);
		log.info("CmnuseManagectVO : " + vo);

		if (vo == null) {
			CmnuseManagectVO voForReturn = new CmnuseManagectVO();
			voForReturn.setManagectNo(0);
			return voForReturn;
		}
		return vo;
	}

	/**
	 * 총 공용관리비를 등록 및 업데이트한다.
	 * @param vo
	 * @return 등록 및 업데이트된 행의 수
	 */
	@ResponseBody
	@PostMapping("/mngcmnusemanagect/save")
	public String saveCmnuseManagect(CmnuseManagectVO vo) {
		log.info("CmnuseManagectVO : " + vo);

		// 총 공용관리비 등록 및 업데이트
		int result = this.mngManageCostService.saveCmnuseManagect(vo);

		return String.valueOf(result);
	}

	/**
	 * AJAX를 이용해 파일을 업로드한다.
	 * @param file
	 * @return 업로드 성공시 "fileUpload_success" 리턴
	 */
	@ResponseBody
	@PostMapping("/mngcmnusemanagect/uploadFile")
	public String uploadFile(MultipartFile file) {
		log.info("save-MultipartFile : " + file);
		//==================== 파일 업로드 시작 ====================
		File uploadPath
			= new File("C:\\eGovFrameDev-4.1.0-64bit\\workspace\\finalProj\\src\\main\\webapp\\resources\\upload");

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		fileName = file.getOriginalFilename();

		try {
			// 설계
			File saveFile = new File(uploadPath, fileName);
			// 복사 실행
			file.transferTo(saveFile);
			//===================== 파일 업로드 끝 =====================
			return "fileUpload_success";

		} catch (IllegalStateException | IOException e) {
			log.error(e.getMessage());
			// 오류 발생 시 입력 화면으로 재요청
			return "fileUpload_fail";
		}
	}

	/**
	 * 경리회계 - 관리비 관리 - 세대별관리비 페이지로 포워딩한다.
	 * @param model
	 * @param hshldCmnuseVO
	 * @return 세대별관리비 페이지
	 */
	@GetMapping("/mnghshldmanagect")
	public String selectOneHshldCmnuse(Model model, HshldCmnuseVO hshldCmnuseVO) {
		log.info("hshldCmnuseVO(latest) : " + hshldCmnuseVO);

		List<HshldCmnuseVO> voList = new ArrayList<>();

		// 특정 연월, 호수의 관리비 정보
		// /mnghshldmanagect/detail?rlvtYm=202307&hshldInfoNo=101101
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

		return "emp/aa_mng_household_management_cost";
	}

	/**
	 * 세대관리비 등록 페이지로 포워딩한다.
	 * @return 세대관리비 등록 페이지
	 */
	@GetMapping("/mnghshldmanagect/register")
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
	@GetMapping("/mnghshldmanagect/detail.ajax")
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
	@PostMapping("/mnghshldmanagect/save")
	public String saveHshldCmnuse(HshldCmnuseVO hshldCmnuseVO) {
		log.info("hshldCmnuseVO : " + hshldCmnuseVO);

		// 세대 공용관리비 등록 및 업데이트
		int result = this.mngManageCostService.saveHshldCmnuse(hshldCmnuseVO);

		return String.valueOf(result);
	}
}












