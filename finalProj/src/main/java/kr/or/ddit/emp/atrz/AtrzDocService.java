package kr.or.ddit.emp.atrz;

import java.util.List;

import kr.or.ddit.vo.AtrzDocVO;
import kr.or.ddit.vo.AtrzVO;

/**
 * @Class Name : AtrzDocService.java
 * @Description : AtrzDocService Interface
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

public interface AtrzDocService {

	/**
	 * 기안 문서 목록
	 * @param empId
	 * @return 기안 문서 목록 리스트
	 */
	public List<AtrzDocVO> myDocList(String empId);

	/**
	 * 결재 대기 문서 목록
	 * @param empId
	 * @return 결재 대기 문서 목록 리스트
	 */
	public List<AtrzDocVO> atrz01List(String empId);

	/**
	 * 참조 문서 목록
	 * @param empId
	 * @return 참조 문서 목록 리스트
	 */
	public List<AtrzDocVO> atrz07List(String empId);

	/**
	 * 결재문서 상세정보
	 * @param atrzDocId
	 * @return 결재문서 상세정보
	 */
	public AtrzDocVO atrzDetail(String atrzDocId);

	/**
	 * 결재문서 등록
	 * @param atrzDocVO
	 * @return 등록에 성공한 행의 수
	 */
	public int regAtrzDoc(AtrzDocVO atrzDocVO);

	/**
	 * 결재 승인시 결재상태 코드, 문서 내용 업데이트
	 * @param atrzDocVO
	 * @return 업데이트에 성공한 행의 수
	 */
	public int updateAtrz02(AtrzDocVO atrzDocVO);

	/**
	 * 결재 반려, 반송시 결재상태 코드, 문서 내용 업데이트
	 * @param atrzDocVO
	 * @return 업데이트에 성공한 행의 수
	 */
	public int updateAtrz03(AtrzDocVO atrzDocVO);

}






