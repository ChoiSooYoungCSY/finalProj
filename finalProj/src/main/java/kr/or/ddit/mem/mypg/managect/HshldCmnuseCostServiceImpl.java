package kr.or.ddit.mem.mypg.managect;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.HshldCmnuseMapper;
import kr.or.ddit.vo.HshldCmnuseVO;
import kr.or.ddit.vo.MemberVO;

@Service
public class HshldCmnuseCostServiceImpl implements HshldCmnuseCostService{

	@Autowired
	HshldCmnuseMapper hshldCmnuseMapper;

	/**
	 * 총 세대관리비 조회한다.
	 * @return 총 세대관리비 목록
	 */
	@Override
	// 세대 관리비 조회
	public List<HshldCmnuseVO> selectAll(MemberVO memberVO) {

		return this.hshldCmnuseMapper.selectAll(memberVO);
	}

	@Override
	// 공용 관리비 연월 검색
	public HshldCmnuseVO selectOne(HshldCmnuseVO hshldCmnuseVO) {
		return this.hshldCmnuseMapper.selectOne(hshldCmnuseVO);
	}



}
