package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.HshldManagectVO;

/**
 * @Class Name : HshldManagectMapper.java
 * @Description : HshldManagectMapper Interface
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.07.09          최초생성
 *
 * @author 임경빈
 * @since 2023.07.09
 * @version 1.0
 * @see
 */

public interface HshldManagectMapper {

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
	 * 세대 관리비를 등록 및 업데이트한다.
	 * @param hshldManagectVO
	 * @return 등록 및 업데이트에 성공한 행의 수
	 */
	public int saveHshldManagect(HshldManagectVO hshldManagectVO);

}
