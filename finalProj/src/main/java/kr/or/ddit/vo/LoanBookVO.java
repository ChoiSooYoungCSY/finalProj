package kr.or.ddit.vo;

import lombok.Data;

@Data
public class LoanBookVO {
	private int lonNo;
	private String memId;
	private int bookNo;
	private String bookSj;
	private String beginYmd;
	private String endYmd;
	private String loanSttsCd;
	private String loanSttsNm;
	private int loanBookNo;
	private int returnBookNo;
}
