package com.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="T_FINAL" ,schema="DEMO")
public class FinalTable  {

	
	
	private long id;
	private String masterId;
	private String compteId;
	private String masterIdB2C;
	private String systemSourceCode;
	private String typeMatch;
	private String typerService;
	private String dateCreation;
	private String dateCessation;
	
	@Id
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	@Column(name="master_id", nullable=false)
	public String getMasterId() {
		return masterId;
	}
	
	public void setMasterId(String masterId) {
		this.masterId = masterId;
	}
	public String getCompteId() {
		return compteId;
	}
	public void setCompteId(String compteId) {
		this.compteId = compteId;
	}
	public String getMasterIdB2C() {
		return masterIdB2C;
	}
	public void setMasterIdB2C(String masterIdB2C) {
		this.masterIdB2C = masterIdB2C;
	}
	public String getSystemSourceCode() {
		return systemSourceCode;
	}
	public void setSystemSourceCode(String systemSourceCode) {
		this.systemSourceCode = systemSourceCode;
	}
	public String getTypeMatch() {
		return typeMatch;
	}
	public void setTypeMatch(String typeMatch) {
		this.typeMatch = typeMatch;
	}
	public String getTyperService() {
		return typerService;
	}
	public void setTyperService(String typerService) {
		this.typerService = typerService;
	}
	public String getDateCreation() {
		return dateCreation;
	}
	public void setDateCreation(String dateCreation) {
		this.dateCreation = dateCreation;
	}
	public String getDateCessation() {
		return dateCessation;
	}
	public void setDateCessation(String dateCessation) {
		this.dateCessation = dateCessation;
	}
	
	
	
	

}