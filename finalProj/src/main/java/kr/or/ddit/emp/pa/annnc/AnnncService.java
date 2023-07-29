package kr.or.ddit.emp.pa.annnc;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.AnnncVO;


public interface AnnncService {


	/**
	 * 안내방송 목록불러오기
	 * @param annncVO
	 * @return
	 */
	public List<AnnncVO> list(Map<String, String> map);

	/**
	 * 전체 글 수 구하기
	 */
	public int getTotal(Map<String, String> map);


	/** 안내방송 등록하기
	 * @param annncVO
	 * @return
	 */
	public int registerPost(AnnncVO annncVO);

	/**
	 * 안내방송 삭제하기
	 * @param annncVO
	 * @return
	 */
	public int deletePost(AnnncVO annncVO);

	/**
	 * 예약방송 등록하기
	 * @param annncVO
	 * @return
	 */
	public int resvRegister(AnnncVO annncVO);

	/**
	 * 예약방송 삭제하기
	 * @param annncVO
	 * @return
	 */
	public int deleteResvPost(AnnncVO annncVO);






}
