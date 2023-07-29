package kr.or.ddit.mapper;

import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;

public interface AtchmnflMapper {
	public AtchmnflVO maxAtchId();
	public int registerAtch(AtchmnflVO atchmnflVO);
	public int registerAtchDetail(AtchmnflDetailVO atchmnflDetailVO);
}
