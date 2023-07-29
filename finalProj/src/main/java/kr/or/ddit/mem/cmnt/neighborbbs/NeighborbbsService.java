package kr.or.ddit.mem.cmnt.neighborbbs;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.ReviewVO;
import kr.or.ddit.vo.RstrntRecomVO;
import kr.or.ddit.vo.RstrntVO;

public interface NeighborbbsService {


	public List<ReviewVO> selectReviewsByRstrntId(RstrntVO rstrntVO);
	public int insertReview(ReviewVO reviewVO);

	public RstrntRecomVO selectRecomBymemID(RstrntRecomVO rstrntRecomVO);

	public List<RstrntVO> selectAllRstrnt();

	public int registRstrnt(RstrntVO rstrntVO);


	public List<ReviewVO> selectAllReviews(Map<String, String> map);
	public int getTotal(Map<String, String> map);

	public int deleteReview(int reviewNo);
}
