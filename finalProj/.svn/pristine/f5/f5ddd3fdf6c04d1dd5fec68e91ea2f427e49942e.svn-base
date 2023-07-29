package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.CmnuseManagectVO;

/**
 * @Class Name : CmnuseManagectMapper.java
 * @Description : CmnuseManagectMapper Interface
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

public interface CmnuseManagectMapper {

	/**
	 * 총 공용관리비를 전체 조회한다.
	 * @return 총 공용관리비 목록
	 */
	public List<CmnuseManagectVO> selectAllCmnuseManagect();

	/**
	 * 총 공용관리비를 연월로 검색한다.
	 * @param rlvtYm
	 * @return 특정 연월의 공용관리비 정보
	 */
	public CmnuseManagectVO selectOneCmnuseManagect(String rlvtYm);

	/**
	 * 총 공용관리비 등록 및 업데이트
	 * @param cmnuseManagectVO
	 * @return  등록 및 업데이트된 행의 수
	 */
	public int saveCmnuseManagect(CmnuseManagectVO cmnuseManagectVO);
}
