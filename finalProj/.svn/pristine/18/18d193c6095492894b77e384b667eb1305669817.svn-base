package kr.or.ddit.emp.pa.mngcmnt.memfreebbs;

import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.FreeBbsMapper;
import kr.or.ddit.vo.FreeBbsVO;
@Service
public class MngMemFreebbsServiceImpl implements MngMemFreebbsService{

	@Inject
	FreeBbsMapper freeBbsMapper;


	/**
	 * 입주민 자유게시판 전체 게시물
	 */
	@Override
	public List<FreeBbsVO> selectAll() {
		JSONArray jsonArr = new JSONArray();
		List<FreeBbsVO> freeBbsVOList = this.freeBbsMapper.selectAll();

		for (FreeBbsVO freeBbsVO : freeBbsVOList) {
			jsonArr.add(freeBbsVO);
		}
		return jsonArr;
	}

	/**
	 * 입주민 자유게시판 게시글 삭제하기
	 */
	@Override
	public int deletePost(FreeBbsVO freeBbsVO) {
		return this.freeBbsMapper.deletePost(freeBbsVO);
	}


}
