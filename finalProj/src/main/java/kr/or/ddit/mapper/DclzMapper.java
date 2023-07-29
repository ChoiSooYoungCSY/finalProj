package kr.or.ddit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.DclzVO;

public interface DclzMapper {

	//DB에서 근태 데이터 불러오기
	public List<DclzVO> getDclzData(String date);

	//특정 직원 근태 정보 불러오기
	public List<DclzVO> selectEmpDclz(DclzVO dclzVO);

	//특정 직원 근태 정보 업데이트
	public int updateEmpDclz(DclzVO dclzVO);

	//DB에서 기간 근태 데이터 불러오기
	public List<DclzVO> getDclzPeriodData(@Param("startDate") String startDate, @Param("endDate") String endDate);

}
