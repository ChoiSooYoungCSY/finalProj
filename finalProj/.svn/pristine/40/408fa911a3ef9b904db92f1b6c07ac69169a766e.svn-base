package kr.or.ddit.mem.notice;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.BookMapper;
import kr.or.ddit.mapper.BookRecomMapper;
import kr.or.ddit.mapper.LoanBookMapper;
import kr.or.ddit.mapper.NtcBbsMapper;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.BookRecomVO;
import kr.or.ddit.vo.BookVO;
import kr.or.ddit.vo.CvplBbsVO;
import kr.or.ddit.vo.LoanBookVO;
import kr.or.ddit.vo.NtcBbsVO;
import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnailator;

@Slf4j
@Service
public class NtcBbsServiceImpl implements NtcBbsService {

	@Autowired
	NtcBbsMapper ntcBbsMapper;

	@Override
	public List<NtcBbsVO> selectAll() {
		JSONArray jsonArr = new JSONArray();
		List<NtcBbsVO> postList = this.ntcBbsMapper.selectAll();
		for (NtcBbsVO ntcBbsVO : postList) {
			jsonArr.add(ntcBbsVO);
		}

		return jsonArr;
	}


}
