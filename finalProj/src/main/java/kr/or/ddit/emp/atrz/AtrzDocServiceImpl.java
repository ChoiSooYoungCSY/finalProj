package kr.or.ddit.emp.atrz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.or.ddit.mapper.AtrzDocMapper;
import kr.or.ddit.vo.AtrzDocVO;
import kr.or.ddit.vo.AtrzVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @Class Name : AtrzDocServiceImpl.java
 * @Description : AtrzDocServiceImpl Class
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.07.19          최초생성
 *
 * @author 임경빈
 * @since 2023.07.19
 * @version 1.0
 * @see
 */

@Slf4j
@Service
public class AtrzDocServiceImpl implements AtrzDocService {

	@Autowired
	AtrzDocMapper atrzDocMapper;

	/**
	 * 기안 문서 목록
	 * @param empId
	 * @return 기안 문서 목록 리스트
	 */
	public List<AtrzDocVO> myDocList(String empId) {
		return this.atrzDocMapper.myDocList(empId);
	}

	/**
	 * 결재 대기 문서 목록
	 * @param empId
	 * @return 결재 대기 문서 목록 리스트
	 */
	public List<AtrzDocVO> atrz01List(String empId) {
		return this.atrzDocMapper.atrz01List(empId);
	}

	/**
	 * 참조 문서 목록
	 * @param empId
	 * @return 참조 문서 목록 리스트
	 */
	public List<AtrzDocVO> atrz07List(String empId) {
		return this.atrzDocMapper.atrz07List(empId);
	}

	/**
	 * 결재문서 상세정보
	 * @param atrzDocId
	 * @return 결재문서 상세정보
	 */
	public AtrzDocVO atrzDetail(String atrzDocId) {
		return this.atrzDocMapper.atrzDetail(atrzDocId);
	}

	/**
	 * 결재문서 등록
	 * @param atrzDocVO
	 * @return 등록에 성공한 행의 수
	 */
	@Override
	@Transactional
	public int regAtrzDoc(AtrzDocVO atrzDocVO) {
		// 결재문서 등록
		int result = this.atrzDocMapper.regAtrzDoc(atrzDocVO);

		// AtrzVO에 결재문서 ID 세팅
		String atrzDocId = atrzDocVO.getAtrzDocId();
		List<AtrzVO> atrzVOList = atrzDocVO.getAtrzVOList();
		for (AtrzVO atrzVO : atrzVOList) {
			atrzVO.setAtrzDocId(atrzDocId);
			// 결재권자 등록
			result += this.atrzDocMapper.regAtrz(atrzVO);
		}

		return result;
	}

	/**
	 * 결재 승인시 결재상태 코드, 문서 내용 업데이트
	 * @param atrzDocVO
	 * @return 업데이트에 성공한 행의 수
	 */
	@Override
	@Transactional
	public int updateAtrz02(AtrzDocVO atrzDocVO) {
		AtrzVO atrzVO = atrzDocVO.getAtrzVOList().get(0);
		// 결재상태 코드 업데이트
		int result = this.atrzDocMapper.updateAtrz02(atrzVO);
		// 문서 내용 업데이트
		result += this.atrzDocMapper.updateAtrzDocCn(atrzDocVO);
		log.info("updateAtrz02 - result : " + result);

		return result;
	}

	/**
	 * 결재 반려, 반송시 결재상태 코드, 문서 내용 업데이트
	 * @param atrzDocVO
	 * @return 업데이트에 성공한 행의 수
	 */
	@Override
	@Transactional
	public int updateAtrz03(AtrzDocVO atrzDocVO) {
		AtrzVO atrzVO = atrzDocVO.getAtrzVOList().get(0);
		// 결재상태 코드 업데이트
		int result = this.atrzDocMapper.updateAtrz03(atrzVO);
		// 문서 내용 업데이트
		result += this.atrzDocMapper.updateAtrzDocCn(atrzDocVO);
		log.info("updateAtrz03 - result : " + result);

		return result;
	}

}






