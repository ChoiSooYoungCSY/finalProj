package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.HshldCmnuseVO;
import kr.or.ddit.vo.MemberVO;

/**
 * @Class Name : HshldCmnuseMapper.java
 * @Description : HshldCmnuseMapper Interface
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.07.09    임경빈                   최초생성
 * @ 2023.07.11    최수영             입주민 관리비 조회 추가
 *
 * @author 임경빈
 * @since 2023.07.09
 * @version 1.0
 * @see
 */

public interface HshldCmnuseMapper {


	// 세대 관리비 조회
	public List<HshldCmnuseVO> selectAll(MemberVO memberVO);

	// 공용 관리비 연월 검색
	public HshldCmnuseVO selectOne(HshldCmnuseVO hshldCmnuseVO);


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
	 * 세대 공용관리비를 등록 및 업데이트한다.
	 * @param hshldCmnuseVO
	 * @return 등록 및 업데이트된 행의 수
	 */
	public int saveHshldCmnuse(HshldCmnuseVO hshldCmnuseVO);
}
