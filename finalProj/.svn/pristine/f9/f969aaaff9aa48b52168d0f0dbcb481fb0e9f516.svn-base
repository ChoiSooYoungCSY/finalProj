package kr.or.ddit.mem.cmnt.club;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.ddit.mapper.ClubMapper;
import kr.or.ddit.vo.ClubMemberVO;
import kr.or.ddit.vo.ClubRecomVO;
import kr.or.ddit.vo.ClubVO;

/**
 * @Class Name : ClubServiceImpl.java
 * @Description : ClubServiceImpl Class
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

@Service
public class ClubServiceImpl implements ClubService {


	@Autowired
	ClubMapper clubMapper;

	/**
	 * 소모임 게시판의 모든 게시글을 조회한다.
	 * @return List<ClubVO>
	 */
	@Override
	public List<ClubVO> selectAll(Map<String, String> map) {
		return this.clubMapper.selectAll(map);
	}

	/**
	 * 전체 소모임 개수를 조회한다.
	 * @param map
	 * @return 전체 소모임 개수
	 */
	@Override
	public int getTotal(Map<String, String> map) {
		return this.clubMapper.getTotal(map);
	}

	/**
	 * 특정 소모임의 정보를 가져온다
	 * @param clubVO
	 * @return 특정 소모임의 정보
	 */
	@Override
	public ClubVO selectOne(ClubVO clubVO) {
		return this.clubMapper.selectOne(clubVO);
	}

	/**
	 * 새로운 소모임을 등록한다.
	 * @param clubVO
	 * @return 새로 등록된 소모임 수
	 */
	@Override
	public int registerPost(ClubVO clubVO) {
		return this.clubMapper.registerPost(clubVO);
	}

	/**
	 * 특정 회원에 대한 추천 소모임 아이디목록을 가져온다.
	 * @param memId
	 * @return 추천 소모임 아이디목록
	 */
	@Override
	public ClubRecomVO selectRecomList(String memId) {
		return this.clubMapper.selectRecomList(memId);
	}

	/**
	 * 특정 회원이 소모임에 가입되어 있는지 검색한다.
	 * @param clubMemberVO
	 * @return 가입된 경우 1을 리턴
	 */
	@Override
	public int checkMem(ClubMemberVO clubMemberVO) {
		return this.clubMapper.checkMem(clubMemberVO);
	}

	/**
	 * 가입처리
	 * @param clubMemberVO
	 * @return INSERT에 성공한 행의 수
	 */
	@Transactional
	@Override
	public int join(ClubMemberVO clubMemberVO) {

		// 소모임 가입
		int result = this.clubMapper.join(clubMemberVO);

		// 소모임 가입 후 CLUB_AGE, CLB_NOW_NMPR 업데이트
		result += this.clubMapper.updateClub(clubMemberVO);

		return result;
	}

	/**
	 * 소모임 승인 및 취소 (CONFM_YN 업데이트)
	 * @param clbId
	 * @return UPDATE에 성공한 행의 수
	 */
	@Override
	public int confirm(String clbId) {
		return this.clubMapper.confirm(clbId);
	}

	/**
	 * 소모임 전체 승인
	 * @return UPDATE에 성공한 행의 수
	 */
	@Override
	public int confirmAll() {
		return this.clubMapper.confirmAll();
	}

	/**
	 * 특정 회원이 가입한 소모임 정보 조회
	 * @return 특정 회원이 가입한 소모임 정보
	 */
	@Override
	public List<ClubVO> selectAllClubByMemId(String memId) {
		return this.clubMapper.selectAllClubByMemId(memId);
	}

}



















