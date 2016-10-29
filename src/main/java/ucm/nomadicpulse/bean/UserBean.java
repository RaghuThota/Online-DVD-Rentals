package ucm.nomadicpulse.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.search.annotations.Indexed;

@Entity
@Indexed
@Table(name = "Registration")
public class UserBean {
	
	@Id
	@Column(name = "id")
	private int id;
	
	@Column(name = "firstName", nullable= false, length = 30)
	private String firstName;
	
	@Column(name = "lastName", nullable= false, length = 30)
	private String lastName;
	
	@Column(name = "emailAddress", nullable= false, length = 30)
	private String emailAddress;
	
	@Column(name = "address", nullable= false, length = 300)
	private String address;
	
	@Column(name = "gender", nullable= false, length = 7)
	private String gender;
	
	@Column(name = "password", nullable= false, length = 30)
	private String password;
	
	@Column(name = "re_password", nullable= false, length = 30)
	private String re_password;
	
	 @Column(name = "createdate", nullable= false)
	   private Date createDate;
	   
	   @Column(name = "updatedate", nullable= false)
	   private Date updateDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "UserBean [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", emailAddress="
				+ emailAddress + ", address=" + address + ", gender=" + gender + ", password=" + password + "]";
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public String getRe_password() {
		return re_password;
	}
	public void setRe_password(String re_password) {
		this.re_password = re_password;
	}
	
	

}
