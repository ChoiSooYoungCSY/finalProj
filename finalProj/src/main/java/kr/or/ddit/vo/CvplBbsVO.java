package kr.or.ddit.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CvplBbsVO {
	private String rnum;
	private String pstId;
	private String frstWrterId;
	private String fsrtWritingTm;
	private String pstSj;
	private String pstCn;
	private int rdcnt;
	private String delYn;
	private String rlsYn;
	private String atchmnflId;
	private String lastUpdusrId;
	private String lastUpdtTm;

	private MultipartFile[] productImage;

	private List<AtchmnflDetailVO> atchmnflDetailList;

}
