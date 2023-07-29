package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.DocFormVO;
import kr.or.ddit.vo.DocSectionVO;

/**
 * @Class Name : DocFormMapper.java
 * @Description : DocFormMapper Interface
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.07.11          최초생성
 *
 * @author 임경빈
 * @since 2023.07.11
 * @version 1.0
 * @see
 */

public interface DocFormMapper {

	/**
	 * 문서양식 전체 목록을 조회한다.
	 * @return 문서양식 전체 목록
	 */
	public List<DocFormVO> docFormList();
}
