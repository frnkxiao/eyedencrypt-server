package eyedencrypt

import grails.plugin.springsecurity.annotation.Secured

class HomeController {

	def springSecurityService
	
	@Secured("permitAll")
    def index() { 
				
		if (springSecurityService.isLoggedIn()) {
			redirect (controller: "User", action: "show", id:springSecurityService.currentUser.id)
			return
		}

		
	}
		
}
