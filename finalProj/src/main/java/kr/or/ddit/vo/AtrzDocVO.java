package kr.or.ddit.vo;

import java.util.List;

import lombok.Data;

@Data
public class AtrzDocVO {
	private String atrzDocId;
	private String frstWrterId;
	private String fsrtWritingTm;
	private String atrzDocSj;
	private String atrzDocCn;
	private String atrzTermYmd;
	private int docFormNo;
	private String atchmnflId;
	private String lastUpdusr;
	private String lastUpdtTm;
	// 결재문서 : 결재 = 1 : N
	private List<AtrzVO> atrzVOList;
	// 결재권자 ID
	private String sanctnerId;
	// 결재 상태 코드
	private String atrzSttsCd;
	// 문서 제목
	private String docFormSj;
	// 결재 상태명
	private String atrzSttsNm;
	private String rnum;

}
