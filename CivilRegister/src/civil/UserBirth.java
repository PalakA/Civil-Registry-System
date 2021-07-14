package civil;

import java.util.Date;

public class UserBirth {
	String id;
	String firstName;
	String sex;
	String placeOfBirth;
	Date dateOfBirth;
	String hospital;
	String fatherName;
	String motherName;
	String address;
	String contact;
	String religion;
	String relation;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPlaceOfBirth() {
		return placeOfBirth;
	}

	public void setPlaceOfBirth(String placeOfBirth) {
		this.placeOfBirth = placeOfBirth;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getHospital() {
		return hospital;
	}

	public void setHospital(String hospital) {
		this.hospital = hospital;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
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

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public static UserBirth getUser(String firstName, String sex,
			String placeOfBirth, Date dateOfBirth, String hospital,
			String fatherName, String motherName, String address,
			String contact, String religion, String relation) {
		UserBirth user = new UserBirth();
		user.setFirstName(firstName);
		user.setSex(sex);
		user.setPlaceOfBirth(placeOfBirth);
		user.setDateOfBirth(dateOfBirth);
		user.setHospital(hospital);
		user.setFatherName(fatherName);
		user.setMotherName(motherName);
		user.setAddress(address);
		user.setContact(contact);
		user.setReligion(religion);
		user.setRelation(relation);
		return user;
	}

	@Override
	public String toString() {
		return "UserBirth [firstName=" + firstName + ", sex="
				+ sex + ", placeOfBirth=" + placeOfBirth + ", dateOfBirth="
				+ dateOfBirth + ", hospital=" + hospital + ", fatherName="
				+ fatherName + ", motherName=" + motherName + ", address="
				+ address + ", contact=" + contact + ", religion=" + religion
				+ ", relation=" + relation + "]";
	}
}