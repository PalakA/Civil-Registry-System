package civil;

import java.util.Date;

public class UserDeath {
	String id;
	String name;
	String sex;
	Date dateOfBirth;
	String address;
	Date diedOn;
	String placeOfDeath;
	String causeOfDeath;
	String status;
	String spousename;
	String spouseAdd;
	String spouseCont;

	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDiedOn() {
		return diedOn;
	}

	public void setDiedOn(Date diedOn) {
		this.diedOn = diedOn;
	}

	public String getPlaceOfDeath() {
		return placeOfDeath;
	}

	public void setPlaceOfDeath(String placeOfDeath) {
		this.placeOfDeath = placeOfDeath;
	}

	public String getCauseOfDeath() {
		return causeOfDeath;
	}

	public void setCauseOfDeath(String causeOfDeath) {
		this.causeOfDeath = causeOfDeath;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSpousename() {
		return spousename;
	}

	public void setSpousename(String spousename) {
		this.spousename = spousename;
	}

	public String getSpouseAdd() {
		return spouseAdd;
	}

	public void setSpouseAdd(String spouseAdd) {
		this.spouseAdd = spouseAdd;
	}

	public String getSpouseCont() {
		return spouseCont;
	}

	public void setSpouseCont(String spouseCont) {
		this.spouseCont = spouseCont;
	}

	public static UserDeath getUser(String name, String sex, Date dateOfBirth,
			String address, Date diedOn, String placeOfDeath,
			String causeOfDeath, String status, String spousename,
			String spouseAdd, String spouseCont) {
		UserDeath user = new UserDeath();
		user.setName(name);
		user.setSex(sex);
		user.setDateOfBirth(dateOfBirth);
		user.setAddress(address);
		user.setDiedOn(diedOn);
		user.setPlaceOfDeath(placeOfDeath);
		user.setCauseOfDeath(causeOfDeath);
		user.setStatus(status);
		user.setSpousename(spousename);
		user.setSpouseAdd(spouseAdd);
		user.setSpouseCont(spouseCont);
		return user;
	}

	@Override
	public String toString() {
		return "UserDeath [name=" + name + ", sex=" + sex + ", dateOfBirth="
				+ dateOfBirth + ", address=" + address + ", diedOn=" + diedOn
				+ ", placeOfDeath=" + placeOfDeath + ", causeOfDeath="
				+ causeOfDeath + ", status=" + status + ", spousename="
				+ spousename + ", spouseAdd=" + spouseAdd + ", spouseCont="
				+ spouseCont + "]";
	}
}
