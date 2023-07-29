package kr.or.ddit.mem.cmnt.cvplbbs;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.apache.commons.beanutils.BeanUtils;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.CvplBbsMapper;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.CvplBbsVO;

@Service
public class CvplBbsServiceImpl implements CvplBbsService{

	@Autowired
	CvplBbsMapper cvplBbsMapper;

	@Override
	public List<CvplBbsVO> selectAll() {
		JSONArray jsonArr = new JSONArray();
		List<CvplBbsVO> postList = this.cvplBbsMapper.selectAll();
		for (CvplBbsVO cvplBbsVO : postList) {
			jsonArr.add(cvplBbsVO);
		}

		return jsonArr;
	}
}
