package kr.or.ddit.mem.memaidoran;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.vo.BookRecomVO;
import kr.or.ddit.vo.ReviewVO;
import kr.or.ddit.vo.RstrntRecomVO;
import kr.or.ddit.vo.RstrntVO;
import kr.or.ddit.vo.ScndhdBbsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/mem/ai/doran")
@Controller
public class MemAIDoranController {

	@Inject
	MemAIDoranService memAIDoranService;


	// AI도란
	@GetMapping("")
	public String aiDoran(Model model,ScndhdBbsVO scndhdBbsVO, Principal principal) {
		String memId = principal.getName();
		//식당 추천 데이터
		RstrntVO rstrntVO1 = this.memAIDoranService.rstrntCount();
		List<RstrntVO> rstrntVOList1 = this.memAIDoranService.rstrntCntBySe();

		RstrntVO rstrntVO2 = this.memAIDoranService.rstrntReviewCnt();
		List<RstrntVO> rstrntVOList2 = this.memAIDoranService.bestReviewCntRstrnt();

		RstrntRecomVO rstrntRecomVO = new RstrntRecomVO();
		rstrntRecomVO.setMemId(memId);
		List<RstrntVO> rstrntRecomList = this.memAIDoranService.selectRecomBymemID(rstrntRecomVO);

		// 중고장터
		List<ScndhdBbsVO> scndhdRecomList = this.memAIDoranService.selectRecomList(memId);

		// 중고장터 카테고리별 게시글 등록 수
		List<ScndhdBbsVO> scndhdBbsVO1 = this.memAIDoranService.bestCateGoryCount(scndhdBbsVO);
		log.info("scndhdBbsVO1 : " + scndhdBbsVO1);

		//중고장터 카테고리 총 게시글의 수
		ScndhdBbsVO scndhdBbsCnt = this.memAIDoranService.cateTotalCnt(scndhdBbsVO);
		log.info("scndhdBbsCnt : " + scndhdBbsCnt);

		// 최근 한달동안 카테고리별 등록된 판매게시글 best10
		List<ScndhdBbsVO> scndhdBbsVO3 = this.memAIDoranService.oneMonthBest(scndhdBbsVO);
		log.info("scndhdBbsVO3 : " + scndhdBbsVO3);

		//최근 한달동안 카테고리별 등록 판매게시글 best10 총 합
		ScndhdBbsVO scndhdBbsCnt2 = this.memAIDoranService.oneMonthBestCnt(scndhdBbsVO);
		log.info("scndhdBbsCnt2 : " + scndhdBbsCnt2);

		// 중고장터 금일 게시글 조회수 best 5
		List<ScndhdBbsVO> scndhdBbsVO2 = this.memAIDoranService.todayBest(scndhdBbsVO);
		log.info("scndhdBbsVO2 : " + scndhdBbsVO2);


		// AI 도서추천 화면 구현 처리
		BookRecomVO bookRecomVO = new BookRecomVO();
		bookRecomVO.setMemId(memId);

		List<Map<String, Object>> bookRecomList = this.memAIDoranService.list(bookRecomVO);

		log.info("rstrntVO1: "+rstrntVO1);
		log.info("rstrntVO2: "+rstrntVO2);
		log.info("rstrntVOList1: "+rstrntVOList1);
		log.info("rstrntVOList2: "+rstrntVOList2);
		log.info("rstrntRecomVO: "+rstrntRecomVO);
		log.info("bookRecomList: " + bookRecomList);


		ObjectMapper objectMApper = new ObjectMapper();
		try {
			String rstrntCount = objectMApper.writeValueAsString(rstrntVO1);
			model.addAttribute("rstrntCount", rstrntCount);

			String rstrntCntBySe = objectMApper.writeValueAsString(rstrntVOList1);
			model.addAttribute("rstrntCntBySe", rstrntCntBySe);


			String rstrntReviewCnt = objectMApper.writeValueAsString(rstrntVO2);
			model.addAttribute("rstrntReviewCnt", rstrntReviewCnt);

			String bestReviewCntRstrnt = objectMApper.writeValueAsString(rstrntVOList2);
			model.addAttribute("bestReviewCntRstrnt", bestReviewCntRstrnt);


			String rstrntRecom = objectMApper.writeValueAsString(rstrntRecomList);
			model.addAttribute("rstrntRecom", rstrntRecom);



			// 중고장터 추천 게시글
			String scndhdRecom = objectMApper.writeValueAsString(scndhdRecomList);
			model.addAttribute("scndhdRecom", scndhdRecom);

			// 중고장터 카테고리별 등록 수
			String cateRegistr = objectMApper.writeValueAsString(scndhdBbsVO1);
			model.addAttribute("cateRegistr", cateRegistr);

			//중고장터 카테고리 총 게시글의 수
			String cateCnt = objectMApper.writeValueAsString(scndhdBbsCnt);
			model.addAttribute("cateCnt", cateCnt);

			// 중고장터 한달동안 카테고리별 판매게시글 등록 best10
			String monthBest = objectMApper.writeValueAsString(scndhdBbsVO3);
			model.addAttribute("monthBest", monthBest);

			//최근 한달동안 카테고리별 등록 판매게시글 best10 총 합
			String MonthCnt = objectMApper.writeValueAsString(scndhdBbsCnt2);
			model.addAttribute("MonthCnt", MonthCnt);

			// 중고장터 금일 조회수 best5
			String todayCateBest = objectMApper.writeValueAsString(scndhdBbsVO2);
			model.addAttribute("todayCateBest", todayCateBest);



			String bookRecom = objectMApper.writeValueAsString(bookRecomList);
			model.addAttribute("bookRecom", bookRecom);

		} catch (Exception e) {
			log.error("json변환중 에러 발생" + e.getMessage());
		}

		log.info("aiDoran");
		return "mem/mem_ai_doran";
	}

	@ResponseBody
	@GetMapping("/recomDetail")
	public List<ReviewVO> recomDetail(@RequestParam String rstrntId) {
		log.info("recomDetail :"+rstrntId);
		return this.memAIDoranService.selectReviewCountByGender(rstrntId);
	}






}
