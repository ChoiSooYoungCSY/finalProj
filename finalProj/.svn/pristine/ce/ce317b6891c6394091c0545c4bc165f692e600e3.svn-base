package kr.or.ddit.util;

import javax.inject.Inject;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {
	private final JavaMailSender mailSender;

	@Inject
	public EmailService(JavaMailSender mailSender) {

		this.mailSender = mailSender;
	}


}
