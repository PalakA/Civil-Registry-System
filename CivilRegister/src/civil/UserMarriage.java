package civil;

import java.util.Date;

public class UserMarriage {
	String id;
	String husbandName;
	String religion;
	Date dateOfBirth3;
	String address;
	String contact;
	String placeOfMarriage;
	Date dateOfMarriage;
	String profession;
	String wifeName;
	Date dateOfBirth2;
	String contact1;
	String profession1;

	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getHusbandName() {
		return husbandName;
	}

	public void setHusbandName(String husbandName) {
		this.husbandName = husbandName;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public Date getDateOfBirth3() {
		return dateOfBirth3;
	}

	public void setDateOfBirth3(Date dateOfBirth3) {
		this.dateOfBirth3 = dateOfBirth3;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPlaceOfMarriage() {
		return placeOfMarriage;
	}

	public void setPlaceOfMarriage(String placeOfMarriage) {
		this.placeOfMarriage = placeOfMarriage;
	}

	public Date getDateOfMarriage() {
		return dateOfMarriage;
	}

	public void setDateOfMarriage(Date dateOfMarriage) {
		this.dateOfMarriage = dateOfMarriage;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getWifeName() {
		return wifeName;
	}

	public void setWifeName(String wifeName) {
		this.wifeName = wifeName;
	}

	public Date getDateOfBirth2() {
		return dateOfBirth2;
	}

	public void setDateOfBirth2(Date dateOfBirth2) {
		this.dateOfBirth2 = dateOfBirth2;
	}

	public String getContact1() {
		return contact1;
	}

	public void setContact1(String contact1) {
		this.contact1 = contact1;
	}

	public String getProfession1() {
		return profession1;
	}

	public void setProfession1(String profession1) {
		this.profession1 = profession1;
	}

	public static UserMarriage getUser(String husbandName, String religion,
			Date dateOfBirth3, String address, String contact,
			String placeOfMarriage, Date dateOfMarriage, String profession,
			String wifeName, Date dateOfBirth2, String contact1,
			String profession1) {
		UserMarriage user = new UserMarriage();
		user.setHusbandName(husbandName);
		user.setReligion(religion);
		user.setDateOfBirth3(dateOfBirth3);
		user.setAddress(address);
		user.setContact(contact);
		user.setPlaceOfMarriage(placeOfMarriage);
		user.setDateOfMarriage(dateOfMarriage);
		user.setProfession(profession);
		user.setWifeName(wifeName);
		user.setDateOfBirth2(dateOfBirth2);
		user.setContact1(contact1);
		user.setProfession1(profession1);
		return user;
	}

	@Override
	public String toString() {
		return "UserMarriage [husbandName=" + husbandName + ", religion="
				+ religion + ", dateOfBirth3=" + dateOfBirth3 + ", address="
				+ address + ", contact=" + contact + ", placeOfMarriage="
				+ placeOfMarriage + ", dateOfMarriage=" + dateOfMarriage
				+ ", profession=" + profession + ", wifeName=" + wifeName
				+ ", dateOfBirth2=" + dateOfBirth2 + ", contact1=" + contact1
				+ ", profession1=" + profession1 + "]";
	}
}