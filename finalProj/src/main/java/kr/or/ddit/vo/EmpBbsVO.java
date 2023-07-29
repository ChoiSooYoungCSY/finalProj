package kr.or.ddit.vo;


import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class EmpBbsVO implements Serializable {

	private String rnum;
	private String pstId;
	private String frstWrterId;
	private String fsrtWritingTm;
	private String pstSj;
	private String pstCn;
	private int rdcnt;
	private String delYn;
	private String atchmnflId;
	private String lastUpdusrId;
	private String lastUpdtTm;
	private String timeForm;
	private String empId;
	private String empImg;

	private MultipartFile[] contentImages;

	private List<AtchmnflDetailVO> atchmnflDetailList;
	private List<EmpBbsCmntVO> empBbsCmntList;
	private List<EmpBbsEmtVO> empBbsEmtList;
}
