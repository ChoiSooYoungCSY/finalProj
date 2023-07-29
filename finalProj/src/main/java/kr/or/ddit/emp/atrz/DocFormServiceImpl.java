package kr.or.ddit.emp.atrz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.DocFormMapper;
import kr.or.ddit.vo.DocFormVO;

/**
 * @Class Name : DocFormServiceImpl.java
 * @Description : DocFormServiceImpl Class
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

@Service
public class DocFormServiceImpl implements DocFormService {

	@Autowired
	DocFormMapper docFormMapper;

	/**
	 * 문서양식 전체 목록을 조회한다.
	 * @return 문서양식 전체 목록
	 */
	@Override
	public List<DocFormVO> docFormList() {
		return this.docFormMapper.docFormList();
	}
}
