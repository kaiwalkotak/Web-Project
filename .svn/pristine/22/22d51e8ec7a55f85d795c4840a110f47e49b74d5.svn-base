package com.system.justfeedback.model;


import java.io.Serializable;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author Keval.soni
 */

@Entity
@Table(name="clientuser")
public class ClientUser implements Comparable<ClientUser>,Serializable
{
	private static final long serialVersionUID = -4800889799692007506L;

	public ClientUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ClientUser(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="Clientuser_id")
	private Long id;
	
	@Column(name="Client_fullname")
	private String cname;
	
	@Column(name="Client_username")
	private String ccode;
	
	@Column(name="Client_password")
	private String cpass;
	
	@Column(name="Client_address")
	private String caddress;

	@Column(name="Client_isactive")
	private int isactive;
	
	@Column(name="Client_registrationdate")
	private Date regdate;
	
	@Column(name="Client_registeripaddress")
	private String ipaddress;
	
	@Column(name="Client_emailid")
	private String cemailid;
	
	@Column(name="Client_phone")
	private String cphone;
	
	@Column(name="Client_mobile")
	private String cmobile;
	
	@Column(name="Client_zipcode")
	private String czipcode;
	
	@Column(name="isApproved")
	private int isApproved;
	
	@Column(name="logo")
	private String logo;
	
	@Column(name="adminpass")
	private String adminpass;
	
	@ManyToOne
	@JoinColumn(name="state_id")
    private States state;
	public States getState() {
		return state;
	}

	public void setState(States state) {
		this.state = state;
	}
	@ManyToOne
	@JoinColumn(name="city_id")
    private city city;
	public city getCity() {
		return city;
	}

	public void setCity(city city) {
		this.city = city;
	}
	@OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="Clientuser_id")
    private Set<Customermaster> customermaster;
	public Set<Customermaster> getCustomermaster() {
		return customermaster;
	}

	public void setCustomermaster(Set<Customermaster> customermaster) {
		this.customermaster = customermaster;
	}

	@NotEmpty
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "clientuserrole", 
             joinColumns = { @JoinColumn(name = "Clientuser_id") }, 
             inverseJoinColumns = { @JoinColumn(name = "Role_id") })
	private Set<RoleMaster> userProfiles = new HashSet<RoleMaster>();
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	
	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCcode() {
		return ccode;
	}

	public void setCcode(String ccode) {
		this.ccode = ccode;
	}

	public String getCpass() {
		return cpass;
	}

	public void setCpass(String cpass) {
		this.cpass = cpass;
	}

	public String getCaddress() {
		return caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	public int getIsactive() {
		return isactive;
	}

	public void setIsactive(int isactive) {
		this.isactive = isactive;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getIpaddress() {
		return ipaddress;
	}

	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}

	public String getCemailid() {
		return cemailid;
	}

	public void setCemailid(String cemailid) {
		this.cemailid = cemailid;
	}

	public String getCphone() {
		return cphone;
	}

	public void setCphone(String cphone) {
		this.cphone = cphone;
	}

	public static Comparator<ClientUser> getClientNameComparator() {
		return clientNameComparator;
	}

	public static void setEmpNameComparator(Comparator<ClientUser> clientNameComparator) {
		ClientUser.clientNameComparator = clientNameComparator;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Set<RoleMaster> getUserProfiles() {
		return userProfiles;
	}

	public void setUserProfiles(Set<RoleMaster> userProfiles) {
		this.userProfiles = userProfiles;
	}

	public String getCmobile() {
		return cmobile;
	}

	public void setCmobile(String cmobile) {
		this.cmobile = cmobile;
	}

	public String getCzipcode() {
		return czipcode;
	}

	public void setCzipcode(String czipcode) {
		this.czipcode = czipcode;
	}

	public int getIsApproved() {
		return isApproved;
	}

	public void setIsApproved(int isApproved) {
		this.isApproved = isApproved;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getAdminpass() {
		return adminpass;
	}

	public void setAdminpass(String adminpass) {
		this.adminpass = adminpass;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((ccode == null) ? 0 : ccode.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof ClientUser))
			return false;
		ClientUser other = (ClientUser) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (ccode == null) {
			if (other.ccode != null)
				return false;
		} else if (!ccode.equals(other.ccode))
			return false;
		return true;
	}

	@Override
	public int compareTo(ClientUser arg0) {
		return 0;
	}

	public static Comparator<ClientUser> clientNameComparator = new Comparator<ClientUser>() {
		@Override
		public int compare(ClientUser o1, ClientUser o2) {String priceIn1=o1.getCname();String priceIn2=o2.getCname();
		return priceIn1.compareTo(priceIn2);
	}};
}
