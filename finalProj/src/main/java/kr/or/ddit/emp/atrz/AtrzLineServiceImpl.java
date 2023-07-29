package kr.or.ddit.emp.atrz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.AtrzLineMapper;
import kr.or.ddit.vo.EmpVO;

/**
 * @Class Name : AtrzLineServiceImpl.java
 * @Description : AtrzLineServiceImpl Class
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

@Service
public class AtrzLineServiceImpl implements AtrzLineService {

	@Autowired
	AtrzLineMapper atrzLineMapper;

	/**
	 * 결재선 조직도를 위한 사원 목록 검색
	 * @return 사원 목록
	 */
	public List<EmpVO> selectAllEmp() {
		return this.atrzLineMapper.selectAllEmp();
	}
}










