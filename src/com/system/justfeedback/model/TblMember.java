package com.system.justfeedback.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

/**
 * @author Keval.soni
 */

@Entity
@Table(name="tbl_m_member")
public class TblMember {
	public TblMember() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TblMember(Long id) {
		super();
		this.id=id;
	}

	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	@Column(name="membercode")
	private Long membercode;
	
	@Column(name="password")
	private String password;
	
	@Column(name="memberType")
	private String memberType;
	
	@Column(name="preMemberName")
	private String preMemberName;
	
	@Column(name="memberName")
	private String memberName;
	
	@Column(name="mobileNo")
	private String mobileNo;
	
	@Column(name="altMobileNo")
	private String altMobileNo;
	
	@Column(name="contractId")
	private int contractId;
	
	@Column(name="statusOfPLC")
	private String statusOfPLC;
	
	@Column(name="emailId")
	private String emailId;
	
	@Column(name="controlLocation")
	private String controlLocation;
	
	@Column(name="salesBranch")
	private String salesBranch;
	
	@Column(name="enrollCamp")
	private String enrollCamp;
	
	@Column(name="salesChannel")
	private String salesChannel;
	
	@Column(name="organizationUnit")
	private String organizationUnit;
	
	@Column(name="salesAgentId")
	private String salesAgentId;
	
	@Column(name="salesAgentName")
	private String salesAgentName;
	
	@Column(name="reportingmanagercode")
	private String reportingmanagercode;
	
	@Column(name="reportingManager")
	private String reportingManager;
	
	@ManyToOne
	@JoinColumn(name="productId")
    private TblProducts product;
	
	@Column(name="productName")
	private String productName;
	
	@Column(name="productSubType")
	private String productSubType;
	
	@Column(name="price")
	private float price;
	
	@Column(name="sellingprice")
	private float sellingprice;
	
	@Column(name="basePrice")
	private float basePrice;
	
	@Column(name="paymentPlan")
	private String paymentPlan;
	
	@Column(name="tenure")
	private String tenure;
	
	@Column(name="dpAmount")
	private float dpAmount;
	
	@Column(name="emIAmount")
	private float emIAmount;
	
	@Column(name="princRealized")
	private float princRealized;
	
	@Column(name="cancellationReason")
	private String cancellationReason;
	
	@Temporal(TemporalType.DATE)
	@Column(name="cancellationPostedOn")
	private Date cancellationPostedOn;
	
	@Temporal(TemporalType.DATE)
	@Column(name="startDate")
	private Date startDate;
	
	@Temporal(TemporalType.DATE)
	@Column(name="endDate")
	private Date endDate;
	
	@Column(name="dpDiscount")
	private float dpDiscount;
	
	@Column(name="sPDiscount")
	private float sPDiscount;
	
	@Column(name="paymentDiscount")
	private float paymentDiscount;
	
	@Column(name="reactivationProductPrice")
	private float reactivationProductPrice;
	
	@Column(name="premiumOption")
	private String premiumOption;
	
	@Temporal(TemporalType.DATE)
	@Column(name="mAFSignedDate")
	private Date mAFSignedDate;
	
	@Column(name="dpPaymentMode")
	private String dpPaymentMode;
	
	@Column(name="tmecode")
	private String tmecode;
	
	@Column(name="tmEName")
	private String tmEName;
	
	@Column(name="resCity")
	private String resCity;
	
	@Column(name="address")
	private String address;
	
	@Column(name="pinCode")
	private String pinCode;
	
	@Column(name="coAppDetails")
	private String coAppDetails;
	
	@Column(name="kyC")
	private String kyC;
	
	@Column(name="kyCNo")
	private String kyCNo;
	
	@Column(name="paymentMode")
	private String paymentMode;
	
	@Column(name="chequeNo")
	private String chequeNo;
	
	@Column(name="planDays")
	private int planDays;
	
	@Column(name="utilizedDays")
	private int utilizedDays;
	
	@Column(name="balanceDays")
	private int balanceDays;
	
	@Column(name="eMINo")
	private int eMINo;
	
	@Column(name="documentPath")
	private String documentPath;
	
	@Column(name="status")
	private int status;
	
	@Temporal(TemporalType.DATE)
	@Column(name="approvalDate")
	private Date approvalDate;
	
	@Column(name="isActive")
	private int isActive;
	
	@Temporal(TemporalType.DATE)
	@Column(name="createdAt")
	private Date createdAt;
	
	@Temporal(TemporalType.DATE)
	@Column(name="updatedAt")
	private Date updatedAt;
	
	@Column(name="isDelete")
	private int isDelete;
	
	@Column(name="hFRPId")
	private String hFRPId;
	
	@Column(name="asF")
	private int asF;
	
	@Column(name="actualPrice")
	private float actualPrice;
	
	@Column(name="remarks")
	private String remarks;
	
	@Column(name="resState")
	private String resState;
	
	@Column(name="receiptNo")
	private String receiptNo;
	
	@Temporal(TemporalType.DATE)
	@Column(name="doB")
	private Date doB;
	
	@Column(name="baseActualPrice")
	private float baseActualPrice;
	
	@Temporal(TemporalType.DATE)
	@Column(name="coAppDOB")
	private Date coAppDOB;
	
	@Temporal(TemporalType.DATE)
	@Column(name="childDOB")
	private Date childDOB;
	
	@Temporal(TemporalType.DATE)
	@Column(name="anniversaryDate")
	private Date anniversaryDate;
	
	@Column(name="internalid")
	private String internalid;
	
	@Column(name="locationname")
	private String locationname;
	
	@Transient
	private int utilizenight;
	
	@Transient
	private int remnight;
	
	@Column(name="productinternalid")
	private String productinternalid;
	
	@Column(name="campaigncode")
	private String campaigncode;
	
	@Column(name="campaignname")
	private String campaignname;
	
	@Column(name="salesstatus")
	private String salesstatus;
	
	@Column(name="offer_id")
	private long offer_id;
	
	@Column(name="offername")
	private String offername;
	
	@Column(name="tmecodesup")
	private String tmecodesup;
	
	@Column(name="tmENamesup")
	private String tmENamesup;
	
	@Column(name="referby")
	private String referby;
	
	@Column(name="pancard")
	private String pancard;
	
	@Column(name="aadharcard")
	private String aadharcard;
	
	@Column(name="wcstatus")
	private String wcstatus;
	
	@Transient
	List<TblReservation> reservation = new ArrayList<>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	

	public String getMemberType() {
		return memberType;
	}

	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public String getPreMemberName() {
		return preMemberName;
	}

	public void setPreMemberName(String preMemberName) {
		this.preMemberName = preMemberName;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAltMobileNo() {
		return altMobileNo;
	}

	public void setAltMobileNo(String altMobileNo) {
		this.altMobileNo = altMobileNo;
	}

	public int getContractId() {
		return contractId;
	}

	public void setContractId(int contractId) {
		this.contractId = contractId;
	}

	public String getStatusOfPLC() {
		return statusOfPLC;
	}

	public void setStatusOfPLC(String statusOfPLC) {
		this.statusOfPLC = statusOfPLC;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getControlLocation() {
		return controlLocation;
	}

	public void setControlLocation(String controlLocation) {
		this.controlLocation = controlLocation;
	}

	public String getSalesBranch() {
		return salesBranch;
	}

	public void setSalesBranch(String salesBranch) {
		this.salesBranch = salesBranch;
	}

	public String getEnrollCamp() {
		return enrollCamp;
	}

	public void setEnrollCamp(String enrollCamp) {
		this.enrollCamp = enrollCamp;
	}

	public String getSalesChannel() {
		return salesChannel;
	}

	public void setSalesChannel(String salesChannel) {
		this.salesChannel = salesChannel;
	}

	public String getOrganizationUnit() {
		return organizationUnit;
	}

	public void setOrganizationUnit(String organizationUnit) {
		this.organizationUnit = organizationUnit;
	}

	public String getSalesAgentId() {
		return salesAgentId;
	}

	public void setSalesAgentId(String salesAgentId) {
		this.salesAgentId = salesAgentId;
	}

	public String getSalesAgentName() {
		return salesAgentName;
	}

	public void setSalesAgentName(String salesAgentName) {
		this.salesAgentName = salesAgentName;
	}

	public String getReportingManager() {
		return reportingManager;
	}

	public void setReportingManager(String reportingManager) {
		this.reportingManager = reportingManager;
	}

	public TblProducts getProduct() {
		return product;
	}

	public void setProduct(TblProducts product) {
		this.product = product;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductSubType() {
		return productSubType;
	}

	public void setProductSubType(String productSubType) {
		this.productSubType = productSubType;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getBasePrice() {
		return basePrice;
	}

	public void setBasePrice(float basePrice) {
		this.basePrice = basePrice;
	}

	public String getPaymentPlan() {
		return paymentPlan;
	}

	public void setPaymentPlan(String paymentPlan) {
		this.paymentPlan = paymentPlan;
	}

	public String getTenure() {
		return tenure;
	}

	public void setTenure(String tenure) {
		this.tenure = tenure;
	}


	public float getPrincRealized() {
		return princRealized;
	}

	public void setPrincRealized(float princRealized) {
		this.princRealized = princRealized;
	}

	public String getCancellationReason() {
		return cancellationReason;
	}

	public void setCancellationReason(String cancellationReason) {
		this.cancellationReason = cancellationReason;
	}

	public Date getCancellationPostedOn() {
		return cancellationPostedOn;
	}

	public void setCancellationPostedOn(Date cancellationPostedOn) {
		this.cancellationPostedOn = cancellationPostedOn;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}



	public float getsPDiscount() {
		return sPDiscount;
	}

	public void setsPDiscount(float sPDiscount) {
		this.sPDiscount = sPDiscount;
	}

	public float getPaymentDiscount() {
		return paymentDiscount;
	}

	public void setPaymentDiscount(float paymentDiscount) {
		this.paymentDiscount = paymentDiscount;
	}

	public float getReactivationProductPrice() {
		return reactivationProductPrice;
	}

	public void setReactivationProductPrice(float reactivationProductPrice) {
		this.reactivationProductPrice = reactivationProductPrice;
	}

	public String getPremiumOption() {
		return premiumOption;
	}

	public void setPremiumOption(String premiumOption) {
		this.premiumOption = premiumOption;
	}

	public Date getmAFSignedDate() {
		return mAFSignedDate;
	}

	public void setmAFSignedDate(Date mAFSignedDate) {
		this.mAFSignedDate = mAFSignedDate;
	}

	public String getTmEName() {
		return tmEName;
	}

	public void setTmEName(String tmEName) {
		this.tmEName = tmEName;
	}

	public String getResCity() {
		return resCity;
	}

	public void setResCity(String resCity) {
		this.resCity = resCity;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getCoAppDetails() {
		return coAppDetails;
	}

	public void setCoAppDetails(String coAppDetails) {
		this.coAppDetails = coAppDetails;
	}

	public String getKyC() {
		return kyC;
	}

	public void setKyC(String kyC) {
		this.kyC = kyC;
	}

	public String getKyCNo() {
		return kyCNo;
	}

	public void setKyCNo(String kyCNo) {
		this.kyCNo = kyCNo;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	public String getChequeNo() {
		return chequeNo;
	}

	public void setChequeNo(String chequeNo) {
		this.chequeNo = chequeNo;
	}

	public int getPlanDays() {
		return planDays;
	}

	public void setPlanDays(int planDays) {
		this.planDays = planDays;
	}

	public int getUtilizedDays() {
		return utilizedDays;
	}

	public void setUtilizedDays(int utilizedDays) {
		this.utilizedDays = utilizedDays;
	}

	public int getBalanceDays() {
		return balanceDays;
	}

	public void setBalanceDays(int balanceDays) {
		this.balanceDays = balanceDays;
	}

	public int geteMINo() {
		return eMINo;
	}

	public void seteMINo(int eMINo) {
		this.eMINo = eMINo;
	}

	public String getDocumentPath() {
		return documentPath;
	}

	public void setDocumentPath(String documentPath) {
		this.documentPath = documentPath;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getApprovalDate() {
		return approvalDate;
	}

	public void setApprovalDate(Date approvalDate) {
		this.approvalDate = approvalDate;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public int getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}

	public String gethFRPId() {
		return hFRPId;
	}

	public void sethFRPId(String hFRPId) {
		this.hFRPId = hFRPId;
	}


	public int getAsF() {
		return asF;
	}

	public void setAsF(int asF) {
		this.asF = asF;
	}

	public float getActualPrice() {
		return actualPrice;
	}

	public void setActualPrice(float actualPrice) {
		this.actualPrice = actualPrice;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getResState() {
		return resState;
	}

	public void setResState(String resState) {
		this.resState = resState;
	}

	public String getReceiptNo() {
		return receiptNo;
	}

	public void setReceiptNo(String receiptNo) {
		this.receiptNo = receiptNo;
	}

	

	public Date getDoB() {
		return doB;
	}

	public void setDoB(Date doB) {
		this.doB = doB;
	}

	public float getBaseActualPrice() {
		return baseActualPrice;
	}

	public void setBaseActualPrice(float baseActualPrice) {
		this.baseActualPrice = baseActualPrice;
	}

	public Date getCoAppDOB() {
		return coAppDOB;
	}

	public void setCoAppDOB(Date coAppDOB) {
		this.coAppDOB = coAppDOB;
	}

	public Date getChildDOB() {
		return childDOB;
	}

	public void setChildDOB(Date childDOB) {
		this.childDOB = childDOB;
	}

	public Date getAnniversaryDate() {
		return anniversaryDate;
	}

	public void setAnniversaryDate(Date anniversaryDate) {
		this.anniversaryDate = anniversaryDate;
	}

	public String getInternalid() {
		return internalid;
	}

	public void setInternalid(String internalid) {
		this.internalid = internalid;
	}

	public float getSellingprice() {
		return sellingprice;
	}

	public void setSellingprice(float sellingprice) {
		this.sellingprice = sellingprice;
	}

	public String getReportingmanagercode() {
		return reportingmanagercode;
	}

	public void setReportingmanagercode(String reportingmanagercode) {
		this.reportingmanagercode = reportingmanagercode;
	}

	public String getTmecode() {
		return tmecode;
	}

	public void setTmecode(String tmecode) {
		this.tmecode = tmecode;
	}

	public Long getMembercode() {
		return membercode;
	}

	public void setMembercode(Long membercode) {
		this.membercode = membercode;
	}

	public String getLocationname() {
		return locationname;
	}

	public void setLocationname(String locationname) {
		this.locationname = locationname;
	}

	public float getDpAmount() {
		return dpAmount;
	}

	public void setDpAmount(float dpAmount) {
		this.dpAmount = dpAmount;
	}

	public float getEmIAmount() {
		return emIAmount;
	}

	public void setEmIAmount(float emIAmount) {
		this.emIAmount = emIAmount;
	}

	public float getDpDiscount() {
		return dpDiscount;
	}

	public void setDpDiscount(float dpDiscount) {
		this.dpDiscount = dpDiscount;
	}

	public String getDpPaymentMode() {
		return dpPaymentMode;
	}

	public void setDpPaymentMode(String dpPaymentMode) {
		this.dpPaymentMode = dpPaymentMode;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getUtilizenight() {
		return utilizenight;
	}

	public void setUtilizenight(int utilizenight) {
		this.utilizenight = utilizenight;
	}

	public int getRemnight() {
		return remnight;
	}

	public void setRemnight(int remnight) {
		this.remnight = remnight;
	}

	public List<TblReservation> getReservation() {
		return reservation;
	}

	public void setReservation(List<TblReservation> reservation) {
		this.reservation = reservation;
	}

	public String getProductinternalid() {
		return productinternalid;
	}

	public void setProductinternalid(String productinternalid) {
		this.productinternalid = productinternalid;
	}

	public String getCampaigncode() {
		return campaigncode;
	}

	public void setCampaigncode(String campaigncode) {
		this.campaigncode = campaigncode;
	}

	public String getCampaignname() {
		return campaignname;
	}

	public void setCampaignname(String campaignname) {
		this.campaignname = campaignname;
	}

	public String getSalesstatus() {
		return salesstatus;
	}

	public void setSalesstatus(String salesstatus) {
		this.salesstatus = salesstatus;
	}

	public long getOffer_id() {
		return offer_id;
	}

	public void setOffer_id(long offer_id) {
		this.offer_id = offer_id;
	}

	public String getOffername() {
		return offername;
	}

	public void setOffername(String offername) {
		this.offername = offername;
	}

	public String getTmecodesup() {
		return tmecodesup;
	}

	public void setTmecodesup(String tmecodesup) {
		this.tmecodesup = tmecodesup;
	}

	public String getTmENamesup() {
		return tmENamesup;
	}

	public void setTmENamesup(String tmENamesup) {
		this.tmENamesup = tmENamesup;
	}

	public String getReferby() {
		return referby;
	}

	public void setReferby(String referby) {
		this.referby = referby;
	}

	public String getPancard() {
		return pancard;
	}

	public void setPancard(String pancard) {
		this.pancard = pancard;
	}

	public String getAadharcard() {
		return aadharcard;
	}

	public void setAadharcard(String aadharcard) {
		this.aadharcard = aadharcard;
	}

	public String getWcstatus() {
		return wcstatus;
	}

	public void setWcstatus(String wcstatus) {
		this.wcstatus = wcstatus;
	}
	
	
	
}
