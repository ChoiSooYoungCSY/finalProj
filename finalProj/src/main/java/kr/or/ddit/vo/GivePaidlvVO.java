package kr.or.ddit.vo;

import java.util.List;

import lombok.Data;

@Data
public class GivePaidlvVO {
	private int giveNo;
	private String empId;
	private String lvSeCd;
	private String lvSeNm;
	private String giveYmd;
	private String extshYmd;
	private int giveLvCnt;
	private String giveRsn;
	private String frstWriterId;
	private String lastUpdusrId;
	private String lastUpdtTm;
	private String delYn;
	private String fsrtWritingTm;
	private String date;

	private List<PaidlvSectionVO> paidlvSectionList;

}
