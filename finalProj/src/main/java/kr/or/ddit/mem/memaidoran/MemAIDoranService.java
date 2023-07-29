package kr.or.ddit.mem.memaidoran;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.BookRecomVO;
import kr.or.ddit.vo.ReviewVO;
import kr.or.ddit.vo.RstrntRecomVO;
import kr.or.ddit.vo.RstrntVO;
import kr.or.ddit.vo.ScndhdBbsVO;
import kr.or.ddit.vo.ScndhdRecomVO;

public interface MemAIDoranService {

	// 식당 추천

	// 전체 등록된 주변 식당의 수
	public RstrntVO rstrntCount();
	// 식당 분류별 식당의 수
	public List<RstrntVO> rstrntCntBySe();

	// 등록된 전체 식당 리뷰 수
	public RstrntVO rstrntReviewCnt();
	// 등록된 식당 중 리뷰 수가 가장 많은 탑 5 식당 정보
	public List<RstrntVO> bestReviewCntRstrnt();

	public List<RstrntVO> selectRecomBymemID(RstrntRecomVO rstrntRecomVO);

	public List<ReviewVO> selectReviewCountByGender(String rstrntId);


	// 도서 추천 서비스
	/**
	 * 게시글 목록보기
	 *
	 * @param bookRecomVO
	 * @return
	 */
	public List<Map<String, Object>> list(BookRecomVO bookRecomVO);


	//중고장터 게시글 추천
	public List<ScndhdBbsVO> selectRecomList(String memId);

	//중고장터 카테고리별 게시글 등록 수
	public List<ScndhdBbsVO> bestCateGoryCount(ScndhdBbsVO scndhdBbsVO);

	//중고장터 카테고리 총 게시글의 수
	public ScndhdBbsVO cateTotalCnt(ScndhdBbsVO scndhdBbsVO);

	//최근 한달동안 카테고리별 등록 판매게시글 best10
	public List<ScndhdBbsVO> oneMonthBest(ScndhdBbsVO scndhdBbsVO);

	//최근 한달동안 카테고리별 등록 판매게시글 best10 총 합
	public ScndhdBbsVO oneMonthBestCnt(ScndhdBbsVO scndhdBbsVO);

	//중고장터 금일 최다 조회수 best5
	public List<ScndhdBbsVO> todayBest(ScndhdBbsVO scndhdBbsVO);
}
