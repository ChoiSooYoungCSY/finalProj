package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.ReviewVO;
import kr.or.ddit.vo.RstrntVO;

public interface ReviewMapper {


	public List<ReviewVO> selectReviewsByRstrntId(RstrntVO rstrntVO);
	public int insertReview(ReviewVO reviewVO);

	public List<ReviewVO> selectAllReviews(Map<String, String> map);
	public int getTotal(Map<String, String> map);
	public int deleteReview(int reviewNo);
}
