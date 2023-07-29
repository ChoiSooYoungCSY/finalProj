package kr.or.ddit.mem.mypg.personalInfo;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import org.apache.commons.io.FilenameUtils;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.MemberMapper;
import kr.or.ddit.mapper.UserMapper;
import kr.or.ddit.mem.main.MemMainServiceImpl;
import kr.or.ddit.vo.FamilyVO;
import kr.or.ddit.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Slf4j
@Service
public class PersonalInfoServiceImpl implements PersonalInfoService {
	@Autowired
	MemberMapper memberMapper;

	//회원정보수정 진입시 패스워드 확인
	public int passwordConfirm(MemberVO memberVO){
		return this.memberMapper.passwordConfirm(memberVO);
	}

	//회원정보수정
	@Override
	public int editMemInfo(MemberVO memberVO) {
	    String uploadFolder = "C:\\eGovFrameDev-4.1.0-64bit\\workspace\\finalProj\\src\\main\\webapp\\resources\\images\\member";
	    log.info("memberVO : " + memberVO);

	    File uploadPath = new File(uploadFolder);

	    MultipartFile picture = memberVO.getPicture();
	    String uploadFileName = null;

	    if (picture != null && !picture.isEmpty()) { //새로운 사진을 올렸으면
	        uploadFileName = picture.getOriginalFilename();
	        uploadFileName = memberVO.getMemId() + "." + FilenameUtils.getExtension(uploadFileName);

	        try {
	            File saveFile = new File(uploadPath, uploadFileName);
	            picture.transferTo(saveFile);
	        } catch (IllegalStateException | IOException e) {
	            log.error(e.getMessage());
	            return 0;
	        }
	    } else { //프로필 사진을 안올렸으면
	        uploadFileName = memberVO.getMemImg();
	    }

	    memberVO.setMemImg(uploadFileName);

	    try {
	    	//회원 정보 수정하기
	        int result = this.memberMapper.editMemInfo(memberVO);
	        log.info("회원정보 수정 result: " + result);

	        this.memberMapper.deleteMemFamily(memberVO);
	        result++;
	        for (FamilyVO familyVO : memberVO.getFamilyVOList()) {
	            if (familyVO.getFamilyNm() != null && !familyVO.getFamilyNm().equals("")) {
	                familyVO.setMemId(memberVO.getMemId());
	                this.memberMapper.insertMemberFamily(familyVO);
	                result++;
	            }
	        }
	        return result;
	    } catch (Exception e) {
	        log.error(e.getMessage());
	        return 0;
	    }
	}

	//얼굴인식 로그인 등록
	@Override
	public int registerFace(MemberVO memberVO) {
		return this.memberMapper.faceRegister(memberVO);
	}
}
