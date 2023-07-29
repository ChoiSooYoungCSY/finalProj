package kr.or.ddit.emp.aa.mngmanagect;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.ddit.mapper.CmnuseManagectMapper;
import kr.or.ddit.mapper.HshldCmnuseMapper;
import kr.or.ddit.mapper.HshldManagectMapper;
import kr.or.ddit.vo.CmnuseManagectVO;
import kr.or.ddit.vo.HshldCmnuseVO;
import kr.or.ddit.vo.HshldManagectVO;

/**
 * @Class Name : MngManageCostServiceImpl.java
 * @Description : MngManageCostServiceImpl Class
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.07.06          최초생성
 *
 * @author 임경빈
 * @since 2023.07.06
 * @version 1.0
 * @see
 */

@Service
public class MngManageCostServiceImpl implements MngManageCostService {

	@Autowired
	CmnuseManagectMapper cmnuseManagectMapper;
	@Autowired
	HshldCmnuseMapper hshldCmnuseMapper;
	@Autowired
	HshldManagectMapper hshldManagectMapper;

	/**
	 * 총 공용관리비를 전체 조회한다.
	 * @return 총 공용관리비 목록
	 */
	@Override
	public List<CmnuseManagectVO> selectAllCmnuseManagect() {
		return this.cmnuseManagectMapper.selectAllCmnuseManagect();
	}

	/**
	 * 총 공용관리비를 연월로 검색한다.
	 * @param rlvtYm
	 * @return 특정 연월의 공용관리비 정보
	 */
	@Override
	public CmnuseManagectVO selectOneCmnuseManagect(String rlvtYm) {
		return this.cmnuseManagectMapper.selectOneCmnuseManagect(rlvtYm);
	}

	/**
	 * 총 공용관리비 등록 및 업데이트
	 * @param cmnuseManagectVO
	 * @return 등록 및 업데이트된 행의 수
	 */
	@Override
	public int saveCmnuseManagect(CmnuseManagectVO cmnuseManagectVO) {
		return this.cmnuseManagectMapper.saveCmnuseManagect(cmnuseManagectVO);
	}

	/**
	 * 세대 공용관리비를 전체 조회한다.
	 * @return 세대 공용관리비 목록
	 */
	@Override
	public List<HshldCmnuseVO> selectAllHshldCmnuse() {
		return this.hshldCmnuseMapper.selectAllHshldCmnuse();
	}

	/**
	 * 세대 공용관리비를 연월, 동호수로 검색한다.
	 * @return 특정 세대, 해당 연월의 공용관리비 정보
	 */
	@Override
	public HshldCmnuseVO selectOneHshldCmnuse(HshldCmnuseVO hshldCmnuseVO) {
		return this.hshldCmnuseMapper.selectOneHshldCmnuse(hshldCmnuseVO);
	}

	/**
	 * 세대 공용관리비, 세대 관리비를 등록 및 업데이트한다.
	 * @param hshldCmnuseVO
	 * @return 등록 및 업데이트된 행의 수
	 */
	@Transactional
	@Override
	public int saveHshldCmnuse(HshldCmnuseVO hshldCmnuseVO) {

		// 세대 공용관리비 등록 및 업데이트
		int result = this.hshldCmnuseMapper.saveHshldCmnuse(hshldCmnuseVO);

		// 세대 관리비 등록 및 업데이트
		HshldManagectVO hshldManagectVO = new HshldManagectVO();
		hshldManagectVO.setRlvtYm(hshldCmnuseVO.getRlvtYm());
		hshldManagectVO.setHshldInfoNo(hshldCmnuseVO.getHshldInfoNo());
		hshldManagectVO.setManagectElcty(hshldCmnuseVO.getManagectElcty() - 10000);
		hshldManagectVO.setManagectWtr(hshldCmnuseVO.getManagectWtr() - 10000);
		hshldManagectVO.setManagectGas(hshldCmnuseVO.getManagectHeat());
		result += this.hshldManagectMapper.saveHshldManagect(hshldManagectVO);

		return result;
	}

	/**
	 * 세대 관리비를 전체 조회한다.
	 * @return 세대 공용관리비 목록
	 */
	@Override
	public List<HshldManagectVO> selectAllHshldManagect() {
		return this.hshldManagectMapper.selectAllHshldManagect();
	}

	/**
	 * 세대 관리비를 연월, 동호수로 검색한다.
	 * @return 특정 세대, 해당 연월의 세대 관리비 정보
	 */
	@Override
	public HshldManagectVO selectOneHshldManagect(HshldManagectVO hshldManagectVO) {
		return this.hshldManagectMapper.selectOneHshldManagect(hshldManagectVO);
	}

}






















