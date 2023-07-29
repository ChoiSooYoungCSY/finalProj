package kr.or.ddit.vo;

import java.util.List;

import lombok.Data;

@Data
public class DocSectionVO {
	private String docSeCd;
	private String docSeNm;
	private String useYn;
	// DocSection : 1 , DocForm : N
	private List<DocFormVO> docFormVOList;
}
