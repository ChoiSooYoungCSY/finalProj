package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.EmpVO;

/**
 * @Class Name : AtrzLineMapper.java
 * @Description : AtrzLineMapper Interface
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.07.14          최초생성
 *
 * @author 임경빈
 * @since 2023.07.14
 * @version 1.0
 * @see
 */

public interface AtrzLineMapper {

	/**
	 * 결재선 조직도를 위한 사원 목록 검색
	 * @return 사원 목록
	 */
	public List<EmpVO> selectAllEmp();

}
