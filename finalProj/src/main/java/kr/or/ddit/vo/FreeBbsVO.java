package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class FreeBbsVO implements Serializable {

	private String rnum;
	private String pstId;
	private String frstWrterId;
	private String frstWrterTm;
	private String pstSj;
	private String pstCn;
	private int rdcnt;
	private String lastUpdusrId;
	private String lastUpdtTm;
	private String atchmnflId;
	private String memImg;
	private String memId;

	//삭제여부
	private String delYn;

	private MultipartFile[] contentImages;

	private List<AtchmnflDetailVO> atchmnflDetailList;
	private List<FreeBbsCmntVO> freeBbsCmntList;
	private List<FreeBbsEmtVO> freeBbsEmtList;

}
