	
package com.example.Shop.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;


@Entity
@Table(name = "tbl_users")
public class UserEntity extends BaseEntity implements UserDetails{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5409485970279961028L;
	@NotEmpty(message = "Không được để trống!")
	@Pattern(regexp = "^[a-zA-z]{2,30}$",message = "Ten chua ki tu a-z va A-z")
	@Column(name = "username", length = 45, nullable = false)
	private String username;
	@NotEmpty(message = "Không được để trống!")
	@Pattern(regexp = "^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\\d)(?=.*[!#$%&?@ \"]).*$",message = "Mật khẩu có ít nhất 1 ký tự hoa và ký tự đặc biệt")
	@Column(name = "password", length = 100, nullable = false)
	private String password;

	@NotEmpty
	@Pattern(regexp = "^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$",message = "Email phải có định dạng abc@gmail.com")
	@Column(name = "email", length = 45, nullable = false)
	private String email;
	
	
//	@Column(name ="is_enabled")
//	private boolean isEnabled =Boolean.FALSE;
//	
//	public void setEnabled(boolean isEnabled) {
//		this.isEnabled = isEnabled;
//	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "user")
	private Set<SaleOrderEntity> sales = new HashSet<SaleOrderEntity>();
	
	
	public void addRelationSaleOrder(SaleOrderEntity sale) {
		sales.add(sale);
		sale.setUser(this);
	}

	/**
	 * xoa san pham khoi danh sach @OneToMany
	 * @param product
	 */
	public void deleteRelationSaleOrder(SaleOrderEntity sale) {
		sales.remove(sale);
		sale.setUser(null);
	}
	
	public Set<SaleOrderEntity> getSales() {
		return sales;
	}

	public void setSales(Set<SaleOrderEntity> sales) {
		this.sales = sales;
	}

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "users")
	private List<RoleEntity> roles = new ArrayList<RoleEntity>();
	
	public void addRoles(RoleEntity role) {
		role.getUser().add(this);
		roles.add(role);
	}
	
	public void deleteRoles(RoleEntity role) {
		role.getUser().remove(this);
		roles.remove(role);
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public List<RoleEntity> getRoles() {
		return roles;
	}
	public void setRoles(List<RoleEntity> roles) {
		this.roles = roles;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return roles;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

	

	
}	
