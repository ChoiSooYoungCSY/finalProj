package kr.or.ddit.mem.life.library;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.BookRecomVO;
import kr.or.ddit.vo.BookVO;
import kr.or.ddit.vo.LoanBookVO;
import kr.or.ddit.vo.PicnicRecomVO;
import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnailator;

@Slf4j
@Controller
@RequestMapping("/mem/life/library")
public class LibraryController {

	// DI. IoC (의존성 주입)
	@Inject
	LibraryService libraryService;

	@GetMapping("")
	public String Librarylist(Model model, Principal principal, BookVO bookVO,
			@RequestParam(value = "size", required = false, defaultValue = "9") int size,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			@RequestParam(value = "cond", required = false, defaultValue = "") String cond,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword) {

		// 로그인 한 아이디
		String memId = principal.getName();
		// list->memId : 멤버아이디명
		log.info("list->memId : " + memId);
		log.info("cond : " + cond);
		log.info("keyword : " + keyword);

		// Map에 cond, keyword를 넣어서 해당 조건에 맞는 레코드수를 구하기
		Map<String, String> map = new HashMap<String, String>();

		map.put("size", String.valueOf(size));
		map.put("currentPage", Integer.toString(currentPage));
		map.put("cond", cond);
		map.put("keyword", keyword);
		map.put("memId", memId);

		int total = this.libraryService.getTotal(map);

		// 위의 Map에 currentPage와 size(한페이지에 보여줄 개수)를 추가해서 list구하기
		List<BookVO> data = this.libraryService.list(map);
		log.info("data : " + data);

		// 전체 글 수 구하기
		log.info("total : " + total);
		model.addAttribute("data", new ArticlePage<BookVO>(total, currentPage, size, data));

		// AI 도서추천 화면 구현 처리
		BookRecomVO bookRecomVO = new BookRecomVO();
		bookRecomVO.setMemId(memId);

		List<Map<String, Object>> recomData = this.libraryService.list(bookRecomVO);
		log.info("recomData : " + recomData);
		model.addAttribute("recomData", recomData);

		return "mem/mem_life_library";
	}

	// 도서 상세보기
	@GetMapping("/bookdetail")
	public String bookDetail(@ModelAttribute BookVO bookVO, Model model) {

		log.info("bookVO : " + bookVO);

		BookVO bookdata = this.libraryService.detailBook(bookVO);

		model.addAttribute("bookdata", bookdata);

		return "mem/mem_life_library_detail";
	}

	// 도서 대출 데이터 정보 받기, 로그인한 ID와 대출하기버튼을 누른 책의 번호(loanBookNo)를 받고, 그 데이터를 도서대출 테이블에
	// 등록 => 책 대출
	@GetMapping("/loanbook")
	public String loanBook(@ModelAttribute("loanBookVO") LoanBookVO loanBookVO, Principal principal,
			@RequestParam("loanBookNo") int loanBookNo) {

		// 로그인한 아이디
		String memId = principal.getName();
		log.info("대출 memId : " + memId);

		log.info("대출할 책loanBookNo : " + loanBookNo);

		loanBookVO.setMemId(memId);
		loanBookVO.setBookNo(loanBookNo);

		List<Map<String, Object>> LoanData = this.libraryService.list(loanBookVO);

		int result = this.libraryService.insertLoan(loanBookVO);
		log.info("result: " + result);

		return "redirect:/mem/life/library";
	}

	// 도서를 반날할 경우, 대출현황이 'LOAN01'(대출중)에서 'LOAN02'(반납완료)로 변경(update) => 책 반납
	@GetMapping("/returnbook")
	public String returnBook(@ModelAttribute("loanBookVO") LoanBookVO loanBookVO, Principal principal,
			@RequestParam("returnBookNo") int returnBookNo) {

		// 로그인한 아이디
		String memId = principal.getName();
		log.info("반납 memId : " + memId);
		log.info("반납할 책 returnBookNo : " + returnBookNo);

		loanBookVO.setMemId(memId);
		loanBookVO.setBookNo(returnBookNo);

		int result = this.libraryService.updateLoan(loanBookVO);

		return "redirect:/mem/life/library";
	}

}
