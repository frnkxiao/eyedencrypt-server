package eyedencrypt

import java.util.Date;

class User {

	transient springSecurityService

	String id
	String username
	String firstName
	String lastName
	String password

	String email
	String emailValidationKey
	boolean emailValidated
	Date createDate
	boolean notifyMeOnLogin
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	String hashCode	
	
	static transients = ['springSecurityService']

	static constraints = {
		id blank: false, unique: true, nullable: false, minSize: 32, maxSize: 32
        username blank: false, unique: true, size: 4..50, matches: "^[a-z0-9][a-z0-9_\\.\\-_@]*[a-z0-9]"
        email email: true, blank: false, nullable: false, unique: true
        password password: true, blank: false, size: 4..100
        
        firstName maxSize: 50, blank: true, nullable: true
        lastName maxSize: 80, blank: true, nullable: true

        emailValidationKey nullable: true, blank: true, maxSize: 36
		hashCode nullable:true, size: 32..100
	}

	static mapping = {
		password column: '`password`'		
		id column: 'id', generator: 'assigned'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}
	
	def beforeValidate() {
		if (id == null) id = RandomId.getUUID32();
	}

	def beforeInsert() {
		encodePassword()
		if (hashCode == null) hashCode = RandomId.getRandom(32);
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
