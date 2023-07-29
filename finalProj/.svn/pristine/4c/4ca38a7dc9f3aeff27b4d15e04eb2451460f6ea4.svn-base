package kr.or.ddit.mem.cmnt.club;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.ClubMemberVO;
import kr.or.ddit.vo.ClubRecomVO;
import kr.or.ddit.vo.ClubVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @Class Name : ClubController.java
 * @Description : ClubController Class
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.06.30          최초생성
 *
 * @author 임경빈
 * @since 2023.06.30
 * @version 1.0
 * @see
 */

@Slf4j
@RequestMapping("/mem/cmnt/clubbbs")
@Controller
public class ClubController {

	@Autowired
	ClubService clubService;

	/** 커뮤니티 - 소모임 목록 */
	@GetMapping("")
	public String clubBoard(Model model
			, @RequestParam(value="size", 		 required=false, defaultValue="10") int size
			, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage
			, @RequestParam(value="cond", 		 required=false, defaultValue="confmY")  String cond
			, @RequestParam(value="keyword", 	 required=false, defaultValue="")  String keyword) {

		log.info("clubBoard");

		Map<String, String> map = new HashMap<>();
		map.put("size"		 , String.valueOf(size));
		map.put("currentPage", String.valueOf(currentPage));
		map.put("cond"		 , cond);
		map.put("keyword"	 , keyword);

		log.info("clubBoard - map : " + map);

		// 전체 글 목록 구하기
		List<ClubVO> clubVOList = this.clubService.selectAll(map);

		// 전체 글 수 구하기
		int total = this.clubService.getTotal(map);
		log.info("clubBoard - total : " + total);

		// 모달 생성용 소모임 목록 (size와 상관없이 전체 목록 조회)
		map.put("size", String.valueOf(total));
		map.put("currentPage", "1");
		map.put("cond"		 , "");
		map.put("keyword"	 , "");
		List<ClubVO> allClubVOList = this.clubService.selectAll(map);
		log.info("clubBoard - allClubVOList : " + allClubVOList);

		model.addAttribute("data",
				new ArticlePage<ClubVO>(total, currentPage, size, clubVOList));
		model.addAttribute("allData", allClubVOList);

		return "mem/mem_cmnt_club_board";
	}

	/** 소모임 등록 페이지 */
	@GetMapping("/register")
	public String clubRegister() {
		log.info("clubRegister");

		return "mem/mem_cmnt_club_register";
	}

	/** 소모임 등록 처리 */
	@PostMapping("/registerPost")
	public String clubRegisterPost(ClubVO clubVO) {
		log.info("clubRegisterPost");
		log.info("clubVO : " + clubVO);

		//==================== 파일 업로드 시작 ====================
		File uploadPath = new File(CommonFile.uploadFolder, CommonFile.getFolder()); // upload/2023/07/03

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		MultipartFile picture = clubVO.getPicture();
		String uploadFileName = picture.getOriginalFilename();
		//=================== UUDI 처리 시작 =======================
//		UUID uuid = UUID.randomUUID();
//		uploadFileName = uuid.toString() + "_" + uploadFileName;
		//==================== UUDI 처리 끝 =======================

		try {
			// 설계
			File saveFile = new File(uploadPath, uploadFileName);
			// 복사 실행
			picture.transferTo(saveFile);
			//===================== 파일 업로드 끝 =====================

			// /2023/05/24/asdfasdf_P1237.jpg
			clubVO.setClbImg("/" + CommonFile.getFolder().replace("\\", "/") + "/" + uploadFileName);
			log.info("insert할 clubVO : " + clubVO);

			// insert 실행
			int result = this.clubService.registerPost(clubVO);
			log.info("result : " + result);

			return "redirect:/mem/cmnt/clubbbs";

		} catch (IllegalStateException | IOException e) {
			log.error(e.getMessage());
			// 오류 발생 시 입력 화면으로 재요청
			return "redirect:/mem/cmnt/clubbbs/register";
		}
	}

	/** 소모임 추천 */
	@ResponseBody
	@PostMapping("/recom")
	public List<ClubVO> recom(@RequestBody String memId) {
		log.info("memId : " + memId);

		ClubRecomVO clubRecomVO = this.clubService.selectRecomList(memId);
		log.info("clubRecomVO : " + clubRecomVO);

		String clbIdList = clubRecomVO.getClbIdList();
		String[] clbIdArr = clbIdList.split(",");

		List<ClubVO> clubVOList = new ArrayList<>();

		for (String clbId : clbIdArr) {
			ClubVO clubVO = new ClubVO();
			clubVO.setClbId(clbId);

			clubVOList.add(this.clubService.selectOne(clubVO));
		}
		log.info("clubVOList : " + clubVOList);

		return clubVOList;
	}

	/** 소모임 가입 */
	@ResponseBody
	@GetMapping("/join")
	public String join(ClubMemberVO clubMemberVO) {
		log.info("clubMemberVO : " + clubMemberVO);

		// 소모임에 가입한 회원인지 검색
		int cnt = this.clubService.checkMem(clubMemberVO);
		if (cnt >= 1) {
			return "-1";
		}

		// 가입 처리
		int result = this.clubService.join(clubMemberVO);
		log.info("result : " + result);

		return String.valueOf(result);
	}
}


















