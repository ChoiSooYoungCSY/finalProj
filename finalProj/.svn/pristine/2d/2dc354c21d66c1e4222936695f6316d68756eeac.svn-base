package kr.or.ddit.emp.aa.mngmanagect;

import java.util.List;

import kr.or.ddit.vo.CmnuseManagectVO;
import kr.or.ddit.vo.HshldCmnuseVO;
import kr.or.ddit.vo.HshldManagectVO;

/**
 * @Class Name : MngManageCostService.java
 * @Description : MngManageCostService Interface
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

public interface MngManageCostService {

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
	 * @return 등록 및 업데이트된 행의 수
	 */
	public int saveCmnuseManagect(CmnuseManagectVO cmnuseManagectVO);

	/**
	 * 세대 공용관리비를 전체 조회한다.
	 * @return 세대 공용관리비 목록
	 */
	public List<HshldCmnuseVO> selectAllHshldCmnuse();

	/**
	 * 세대 공용관리비를 연월, 동호수로 검색한다.
	 * @return 특정 세대, 해당 연월의 공용관리비 정보
	 */
	public HshldCmnuseVO selectOneHshldCmnuse(HshldCmnuseVO hshldCmnuseVO);

	/**
	 * 세대 관리비를 전체 조회한다.
	 * @return 세대 공용관리비 목록
	 */
	public List<HshldManagectVO> selectAllHshldManagect();

	/**
	 * 세대 관리비를 연월, 동호수로 검색한다.
	 * @return 특정 세대, 해당 연월의 세대 관리비 정보
	 */
	public HshldManagectVO selectOneHshldManagect(HshldManagectVO hshldManagectVO);

	/**
	 * 세대 공용관리비를 등록 및 업데이트한다.
	 * @param hshldCmnuseVO
	 * @return 등록 및 업데이트된 행의 수
	 */
	public int saveHshldCmnuse(HshldCmnuseVO hshldCmnuseVO);

}
