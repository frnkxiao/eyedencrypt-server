package eyedencrypt

import grails.plugin.springsecurity.annotation.Secured
import java.text.SimpleDateFormat

class APIController {
	def passwordEncoder
	
    def index() { }
	@Secured("permitAll")
	def requestHash(			
            String un  /* username */,
            String pw  /* password */,
            String s   /* Signature */) {
		
			if(un!=null) un = Base64Converter.decode(un.trim());
			if(pw!=null) pw = Base64Converter.decode(pw.trim());
			if(s!=null) s = s.trim();

			String remoteAddress = request.getRemoteAddr()
			String userAgent = request.getHeader("User-Agent")
			
			println("un:" + un + ",pw:" + pw + ",signature:" + s);
			println("remote:" + remoteAddress + "useragent:" + userAgent);
			
			User user = User.findByUsername(un);
						
			if (!user || !pw || !User.findByUsername(un) || !passwordEncoder.isPasswordValid(user.password, pw, null)) {
				return [responseCode: ResponseCode.INVALID_USERNAME_OR_PASSWORD];
			}
				
			
			SimpleDateFormat sm = new SimpleDateFormat("yyyyMMdd-HHmmss");
			sm.setTimeZone(TimeZone.getTimeZone("UTC"));
			
			
			
			return [responseCode : ResponseCode.SUCCESS, hashCode : Base64Converter.encode(user.hashCode), timestamp: sm.format(new Date())]

	}
}
