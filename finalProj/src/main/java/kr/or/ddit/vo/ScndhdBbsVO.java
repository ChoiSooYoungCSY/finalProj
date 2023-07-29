package kr.or.ddit.vo;



import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ScndhdBbsVO implements Serializable {

	private String rnum;
	private String pstId;
	private String frstWrterId;
	private String fsrtWritingTm;
	private String pstSj;
	private String pstCn;
	private int    rdcnt;
	private String delYn;
	private int    scndhandPc;
	private String schandSeCd;
	private String schandSeNm;
	private String atchmnflId;
	private String lastUpdusrId;
	private String lastUpdtTm;
	private String ntslStts;
	private String flpth;
	private String streFlNm;
	// 중고장터 게시글 게시글 전체의 수
	private int cateCnt;
	// 중고장터 카테고리별 판매 게시글 등록 수량 파악
	private int productCount;
	// 중고장터 한달동안 판매게시글 등록 수량 파악
	private int registeredQuantity;
	// 중고장터 한달동안 판매게시글 총 수량
	private int totalRegisteredQuantity;


	private MultipartFile[] productImage;

	private List<AtchmnflDetailVO> atchmnflDetailList;

	private List<SttemntPstVO> reportList;
}
