package kr.or.ddit.vo;

import lombok.Data;

@Data
public class GlfprUseRcordVO {
	private int rcordNo;
	private int roomNo;
	private String memId;
	private String useYmd;
	private String startTm;
	private String endTm;
	private String filePath;
}
