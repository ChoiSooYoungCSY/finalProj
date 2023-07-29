package kr.or.ddit.vo;

import lombok.Data;

@Data
public class ReadrmUseRcordVO {
	private int useRcordNo;
	private String memId;
	private String useYmd;
	private String beginTm;
	private String endTm;
	private int seatNo;
}
