package com.poly.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table (name = "Share")
public class Share {
	@Id
	@Column(name = "ShareId")
	private long ShareId;
	@Column(name = "UserId")
	private String UserId;
	@Column(name = "VideoId")
	private String VideoId;
	@Column(name = "Email")
	private String Email;
	@Column(name = "ShareDate")
	@Temporal(TemporalType.DATE)
	private Date ShareDate = new Date();
}
