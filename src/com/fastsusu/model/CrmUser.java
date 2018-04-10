package com.fastsusu.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class CrmUser implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	@Id
	@Column(name = "username", unique = true, nullable = false)
	private String userName;

	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	@Column(name = "password")
	private String password;

	@Column(name = "enabled")
	private boolean enabled = true;

	public CrmUser() {

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public boolean isEnabled() {
		return enabled;
	}

}
