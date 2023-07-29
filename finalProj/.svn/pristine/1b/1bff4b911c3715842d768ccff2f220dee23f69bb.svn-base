package kr.or.ddit.security;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Objects;
import kr.or.ddit.mapper.EmpMapper;
import kr.or.ddit.mapper.MemberMapper;
import kr.or.ddit.mapper.UserMapper;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.FamilyVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

//UserDetailsService : 스프링 시큐리티에서 제공해주고 있는
// 사용자 상세 정보를 갖고 있는 인터페이스
@Slf4j
@Service
public class CustomUserDetailsService implements UserDetailsService {
	//DI(Dependency Injection) 의존성 주입
	@Autowired
	private UserMapper userMapper;

	@Autowired
	private MemberMapper memberMapper;

	//username : 로그인 페이지에서 로그인 시도 시 입력된 아이디
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//username : b001
		log.info("username : " + username);

		//2)정보를 받아옴
		UserVO userVO =  this.userMapper.detailUser(username);
//		if (memberVO.getAcntSttsCd().equals("ACCT01") || memberVO.getAcntSttsCd().equals("ACCT03")) {
//			throw new UsernameNotFoundException("User account is disabled");
//		}//알림창 뜨게해야함

		log.info("userVO : " + userVO);

		//memberVO 세팅
		MemberVO memberVO = new MemberVO();
		BeanUtils.copyProperties(userVO, memberVO);
		userVO.setMemberVO(memberVO);
		memberVO.setFamilyVOList(this.memberMapper.detailmemFamily(username)); //가족 넣기


		//empVO 세팅
		EmpVO empVO = new EmpVO();
		BeanUtils.copyProperties(userVO, empVO);
		empVO.setEmpId(userVO.getMemId());
		userVO.setEmpVO(empVO);
		if (Objects.equals(userVO.getJncmpYmd(), userVO.getRsgntnYmd())) {
			userVO.setEmpStatus("재직");
		} else {
			userVO.setEmpStatus("퇴사");
		}

		//CustomUser : 사용자 정의 유저 정보. extends User를 상속받고 있음
		//2) 스프링 시큐리티의 User 객체의 정보를 넣어줌=>스프링이 이제부터 해당 유저를 관리.
		//User : 스프링 시큐리티에서 제공해주는 사용자 정보 클래스
		return userVO == null?null:new CustomUser(userVO);

	}

}











