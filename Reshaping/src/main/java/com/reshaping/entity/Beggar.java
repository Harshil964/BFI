package com.reshaping.entity;

public class Beggar {
	private String Status;
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	private String BegId;
	private int BeggarCount;
   public int getBeggarCount() {
		return BeggarCount;
	}
	public void setBeggarCount(int beggarCount) {
		BeggarCount = beggarCount;
	}
public String getBegId() {
		return BegId;
	}
	public void setBegId(String begId) {
		BegId = begId;
	}
private String BegName;
   private String BegAge;
   private String latitude;
   private String longitude;
   private String BegPhoto;
   private String email;
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getBegName() {
	return BegName;
}
public void setBegName(String begName) {
	BegName = begName;
}
public String getBegAge() {
	return BegAge;
}
public void setBegAge(String begAge) {
	BegAge = begAge;
}

public String getBegPhoto() {
	return BegPhoto;
}
public void setBegPhoto(String begPhoto) {
	BegPhoto = begPhoto;
}
public String getLatitude() {
	return latitude;
}
public void setLatitude(String latitude) {
	this.latitude = latitude;
}
public String getLongitude() {
	return longitude;
}
public void setLongitude(String longitude) {
	this.longitude = longitude;
}
@Override
public String toString() {
	return "Beggar [Status=" + Status + ", BegId=" + BegId + ", BeggarCount=" + BeggarCount + ", BegName=" + BegName
			+ ", BegAge=" + BegAge + ", latitude=" + latitude + ", longitude=" + longitude + ", BegPhoto=" + BegPhoto
			+ ", email=" + email + "]";
}





   
}
