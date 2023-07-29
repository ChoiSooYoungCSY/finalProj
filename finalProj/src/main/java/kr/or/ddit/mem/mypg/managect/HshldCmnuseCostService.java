package kr.or.ddit.mem.mypg.managect;

import java.util.List;


import kr.or.ddit.vo.HshldCmnuseVO;
import kr.or.ddit.vo.MemberVO;


public interface HshldCmnuseCostService {

	/**
	 * 총 세대관리비 전체 조회한다.
	 * @return 총 공용관리비 목록
	 */
	public List<HshldCmnuseVO> selectAll(MemberVO memberVO);


	//연월 검색
	public HshldCmnuseVO selectOne(HshldCmnuseVO hshldCmnuseVO);


}
