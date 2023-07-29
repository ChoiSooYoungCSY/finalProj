package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.ClubMemberVO;
import kr.or.ddit.vo.ClubRecomVO;
import kr.or.ddit.vo.ClubVO;

/**
 * @Class Name : ClubMapper.java
 * @Description : ClubMapper Interface
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.06.30          최초생성
 *
 * @author 임경빈
 * @since 2023.06.30
 * @version 1.0
 * @see
 */

public interface ClubMapper {

	/**
	 * 소모임 게시판의 모든 게시글을 조회한다.
	 * @return List<ClubVO>
	 */
	public List<ClubVO> selectAll(Map<String, String> map);

	/**
	 * 전체 소모임 개수를 조회한다.
	 * @param map
	 * @return 전체 소모임 개수
	 */
	public int getTotal(Map<String, String> map);

	/**
	 * 특정 소모임의 정보를 가져온다
	 * @param clubVO
	 * @return 특정 소모임의 정보
	 */
	public ClubVO selectOne(ClubVO clubVO);

	/**
	 * 새로운 소모임을 등록한다.
	 * @param clubVO
	 * @return 새로 등록된 소모임 수
	 */
	public int registerPost(ClubVO clubVO);

	/**
	 * 특정 회원에 대한 추천 소모임 아이디목록을 가져온다.
	 * @param memId
	 * @return 추천 소모임 아이디목록
	 */
	public ClubRecomVO selectRecomList(String memId);

	/**
	 * 특정 회원이 소모임에 가입되어 있는지 검색한다.
	 * @param clubMemberVO
	 * @return 가입된 경우 1을 리턴
	 */
	public int checkMem(ClubMemberVO clubMemberVO);

	/**
	 * 가입처리
	 * @param clubMemberVO
	 * @return INSERT에 성공한 행의 수
	 */
	public int join(ClubMemberVO clubMemberVO);


	/**
	 * 소모임 가입, 탈퇴 후 CLUB_AGE, CLB_NOW_NMPR 업데이트
	 * @param clubMemberVO
	 * @return UPDATE에 성공한 행의 수
	 */
	public int updateClub(ClubMemberVO clubMemberVO);

	/**
	 * 소모임 승인 및 취소 (CONFM_YN 업데이트)
	 * @param clbId
	 * @return UPDATE에 성공한 행의 수
	 */
	public int confirm(String clbId);

	/**
	 * 소모임 전체 승인
	 * @return UPDATE에 성공한 행의 수
	 */
	public int confirmAll();

	/**
	 * 특정 회원이 가입한 소모임 정보 조회
	 * @return 특정 회원이 가입한 소모임 정보
	 */
	public List<ClubVO> selectAllClubByMemId(String memId);
}







