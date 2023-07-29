package kr.or.ddit.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class SttemntPstVO {

	private String rnum;
	private int    sttemntPstNo;
	private String sttemntPstId;
	private String aplcntId;
	private String sttemntRsn;
	private String delYn;
	private String rspndnt;

	private String pstId;
	private String frstWrterId;
	private String fsrtWritingTm;
	private String pstSj;
	private String pstCn;
	private int    rdcnt;
	private int    scndhandPc;
	private String atchmnflId;
	private String flpth;
	private String streFlNm;

	// 게시글 신고 당한 횟수
	private int cnt;



	private MultipartFile[] productImage;

	private List<AtchmnflDetailVO> atchmnflDetailList;
}
