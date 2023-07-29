package kr.or.ddit.socket;

import java.io.Serializable;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.commons.lang.StringUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import kr.or.ddit.security.CustomUser;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.SmsVO;
import kr.or.ddit.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class SmsHandler extends TextWebSocketHandler implements Serializable {


	@Inject
	SmsService smsService;

	Map<String, WebSocketSession> memSessions = new HashMap<>();
	Map<String, WebSocketSession> empSessions = new HashMap<>();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {

		log.info("afterConnectionEstablished");

		String userSocketKey = getId(session);
		log.info("smsService.checkUser(userSocketKey)" +smsService.checkUser(userSocketKey));
		//User가 아닐 경우 sesison.close();
		if(smsService.checkUser(userSocketKey) == 0 ) { session.close();}


		log.info("afterConnectionEstablished userSocketKey"+ userSocketKey);
		Object sessionAttribute = session.getAttributes().get("SPRING_SECURITY_CONTEXT");

		if (sessionAttribute instanceof SecurityContext) {
			// SecurityContext 가져오기
			SecurityContext securityContext = (SecurityContext) sessionAttribute;

			// Authentication 가져오기
			Authentication authentication = securityContext.getAuthentication();

			// principal 가져오기
			CustomUser principal = (CustomUser) authentication.getPrincipal();

			// principal의 정보 활용
			UserVO userVO = principal.getUserVO();

			if (userVO.getMemberVO().getMemNm() != null) {
				log.info("방금 로그인한 사람은 입주민 입니다.");
				memSessions.put(userSocketKey, session);
				List<String> keyList = new ArrayList<>(memSessions.keySet());
				for (String loginUser : memSessions.keySet()) {
					memSessions.get(loginUser).sendMessage(new TextMessage("online=" + keyList.toString()));
				}

			} else if (userVO.getEmpVO().getEmpNm() != null) {
				log.info("방금 로그인한 사람은 관리사무소 직원입니다.");
				empSessions.put(userSocketKey, session);
				List<String> keyList = new ArrayList<>(empSessions.keySet());
				for (String loginUser : empSessions.keySet()) {
					empSessions.get(loginUser).sendMessage(new TextMessage("online=" +keyList.toString()));
				}
			}
		}

	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		log.info("handleTextMessage" + session);
		log.info("handleTextMessage" + message);
		SmsVO smsVO = new SmsVO();
		// 힌명에게만 전송
		// protocol : 보내는 이: 받는 이: 전송시간: 메세지
		String msg = message.getPayload();
		if (StringUtils.isNotEmpty(msg)) {
			String[] strs = msg.split(":");
			if (strs != null && strs.length == 5) {
				String cmd = strs[0];
				String sender = strs[1];
				String receiver = strs[2];
				String time = strs[3];
				String mess = strs[4];

				smsVO.setSndpyId(sender);
				smsVO.setRcvrId(receiver);
				smsVO.setSmsCn(mess);
				//기존 발신자는 읽음 상태 수신자는 안읽음 상태
				smsVO.setSndptyStts("ESMS01");
				smsVO.setRcvrStts("ESMS02");
				Object sessionAttribute = session.getAttributes().get("SPRING_SECURITY_CONTEXT");
				if (cmd.equals("chat")) {
					int cnt = this.smsService.insertMessage(smsVO);
					log.info("save Message ::SmsHandler "+cnt);
					if (sessionAttribute instanceof SecurityContext) {
						// SecurityContext 가져오기
						SecurityContext securityContext = (SecurityContext) sessionAttribute;

						// Authentication 가져오기
						Authentication authentication = securityContext.getAuthentication();

						// principal 가져오기
						CustomUser principal = (CustomUser) authentication.getPrincipal();

						// principal의 정보 활용
						UserVO userVO = principal.getUserVO();

						if (userVO.getMemberVO().getMemNm() != null) {
							WebSocketSession receiverSession = memSessions.get(receiver);
							if (receiverSession != null) {
								TextMessage tmpMsg = new TextMessage("chat=" + sender +":" +receiver+ ":" + time + ":" + mess);
								receiverSession.sendMessage(tmpMsg);

							}
						} else if (userVO.getEmpVO().getEmpNm() != null) {
							WebSocketSession receiverSession = empSessions.get(receiver);
							if (receiverSession != null) {
								TextMessage tmpMsg = new TextMessage("chat="+ sender +":" +receiver+ ":" + time + ":" + mess);
								receiverSession.sendMessage(tmpMsg);
							}
						}
					}
				}else if (cmd.equals("echo")){
					if (sessionAttribute instanceof SecurityContext) {
						// SecurityContext 가져오기
						SecurityContext securityContext = (SecurityContext) sessionAttribute;

						// Authentication 가져오기
						Authentication authentication = securityContext.getAuthentication();

						// principal 가져오기
						CustomUser principal = (CustomUser) authentication.getPrincipal();

						// principal의 정보 활용
						UserVO userVO = principal.getUserVO();

						if (userVO.getMemberVO().getMemNm() != null) {
							WebSocketSession receiverSession = memSessions.get(receiver);
							if (receiverSession != null) {
								TextMessage tmpMsg = new TextMessage("echo=" + sender +":" +receiver+ ":" + time + ":" + mess);
								receiverSession.sendMessage(tmpMsg);

							}
						} else if (userVO.getEmpVO().getEmpNm() != null) {
							WebSocketSession receiverSession = empSessions.get(receiver);
							if (receiverSession != null) {
								TextMessage tmpMsg = new TextMessage("echo=" + sender +":" +receiver+ ":" + time + ":" + mess);
								receiverSession.sendMessage(tmpMsg);
							}
						}
					}
				}

			}
		}
	}

	private String getId(WebSocketSession session) {
		log.info("getId(WebSocketSession session)" + session.getAttributes());
		Object sessionAttribute = session.getAttributes().get("SPRING_SECURITY_CONTEXT");

		if (sessionAttribute instanceof SecurityContext) {
			// SecurityContext 가져오기
			SecurityContext securityContext = (SecurityContext) sessionAttribute;

			// Authentication 가져오기
			Authentication authentication = securityContext.getAuthentication();

			// principal 가져오기
			CustomUser principal = (CustomUser) authentication.getPrincipal();

			// principal의 정보 활용
			UserVO userVO = principal.getUserVO();
			log.info("principal UserVO" +userVO);

			if (userVO.getMemberVO().getMemNm() != null) {
				log.info("userVO.getMemberVO().getMemId()"+ userVO.getMemberVO().getMemId());
				MemberVO memberVO = userVO.getMemberVO();

				return memberVO.getMemId();
			} else if (userVO.getEmpVO().getEmpNm() != null) {
				log.info("userVO.getEmpVO().getEmp()"+ userVO.getEmpVO().getEmpId());
				EmpVO empVO = userVO.getEmpVO();

				return empVO.getEmpId();
			}
		}

		return session.getId();
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		log.info("afterConnectionClosed" + session);
		log.info("afterConnectionClosed" + status);

		String socketCloseUser = getId(session);
		Object sessionAttribute = session.getAttributes().get("SPRING_SECURITY_CONTEXT");

		if (sessionAttribute instanceof SecurityContext) {
			// SecurityContext 가져오기
			SecurityContext securityContext = (SecurityContext) sessionAttribute;

			// Authentication 가져오기
			Authentication authentication = securityContext.getAuthentication();

			// principal 가져오기
			CustomUser principal = (CustomUser) authentication.getPrincipal();

			// principal의 정보 활용
			UserVO userVO = principal.getUserVO();

			if (userVO.getMemberVO().getMemNm() != null) {
				memSessions.remove(socketCloseUser);
			} else if (userVO.getEmpVO().getEmpNm() != null) {
				empSessions.remove(socketCloseUser);
			}
		}

	}

}
