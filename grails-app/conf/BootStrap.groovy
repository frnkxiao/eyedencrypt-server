import eyedencrypt.User
import eyedencrypt.Role
import eyedencrypt.UserRole
import junit.framework.Assert

class BootStrap {

    def init = { servletContext ->
		
		// Create Roles
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

		// Create default eyedsecure.User
		def adminUser = User.findById("00000000000000000000000000000001") ?:
			new User(
					id: "00000000000000000000000000000001",
					username: "admin",
					enabled: true,
					password: "admin",
					email: "boksman@eyedsecure.com",
					createDate: new Date(),
					notifyMeOnLogin: false
			).save(failOnError: true, flush: true)

		if (!adminUser.authorities.contains(adminRole)) {
			UserRole.create(adminUser, adminRole, true)
		}

		// Create default eyedsecure.User
		def testUser = User.findById("00000000000000000000000000000002") ?:
			new User(
					id: "00000000000000000000000000000002",
					username: "test",
					enabled: true,
					password: "test",
					email: "fxiao@eyedsecure.com",
					createDate: new Date(),
					notifyMeOnLogin: false
			).save(failOnError: true, flush: true)

		if (!testUser.authorities.contains(userRole)) {
			UserRole.create(testUser, userRole, true)
		}

		//Assert.assertNotNull(User.findById("00000000000000000000000000000001"))

    }
    def destroy = {
    }
}
