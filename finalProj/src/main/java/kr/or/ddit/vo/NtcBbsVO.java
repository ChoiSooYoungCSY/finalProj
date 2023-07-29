package kr.or.ddit.vo;

import lombok.Data;


public class NtcBbsVO {
	private String pstId;
	private String frstWrterId;
	private String fsrtWritingTm;
	private String pstSj;
	private String pstCn;
	private int rdcnt;
	private String atchmnflId;
	private String lastUpdusrId;
	private String lastUpdtTm;
	private String delYn;
	private String ab;
	public String getPstId() {
		return pstId;
	}
	public void setPstId(String pstId) {
		this.pstId = pstId;
	}
	public String getFrstWrterId() {
		return frstWrterId;
	}
	public void setFrstWrterId(String frstWrterId) {
		this.frstWrterId = frstWrterId;
	}
	public String getFsrtWritingTm() {
		return fsrtWritingTm;
	}
	public void setFsrtWritingTm(String fsrtWritingTm) {
		this.fsrtWritingTm = fsrtWritingTm;
	}
	public String getPstSj() {
		return pstSj;
	}
	public void setPstSj(String pstSj) {
		this.pstSj = pstSj;
	}
	public String getPstCn() {
		return pstCn;
	}
	public void setPstCn(String pstCn) {
		this.pstCn = pstCn;
	}
	public int getRdcnt() {
		return rdcnt;
	}
	public void setRdcnt(int rdcnt) {
		this.rdcnt = rdcnt;
	}
	public String getAtchmnflId() {
		return atchmnflId;
	}
	public void setAtchmnflId(String atchmnflId) {
		this.atchmnflId = atchmnflId;
	}
	public String getLastUpdusrId() {
		return lastUpdusrId;
	}
	public void setLastUpdusrId(String lastUpdusrId) {
		this.lastUpdusrId = lastUpdusrId;
	}
	public String getLastUpdtTm() {
		return lastUpdtTm;
	}
	public void setLastUpdtTm(String lastUpdtTm) {
		this.lastUpdtTm = lastUpdtTm;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public String getAb() {
		return "관리자";
	}
	public void setAb(String ab) {
		this.ab = "관리자";
	}
	@Override
	public String toString() {
		return "NtcBbsVO [pstId=" + pstId + ", frstWrterId=" + frstWrterId + ", fsrtWritingTm=" + fsrtWritingTm
				+ ", pstSj=" + pstSj + ", pstCn=" + pstCn + ", rdcnt=" + rdcnt + ", atchmnflId=" + atchmnflId
				+ ", lastUpdusrId=" + lastUpdusrId + ", lastUpdtTm=" + lastUpdtTm + ", delYn=" + delYn + ", ab=" + ab
				+ "]";
	}



}
