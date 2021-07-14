package civil;

public class UserFeedback {
	String Name;
	String Contact;
	String Feedback;

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getContact() {
		return Contact;
	}

	public void setContact(String contact) {
		Contact = contact;
	}

	public String getFeedback() {
		return Feedback;
	}

	public void setFeedback(String feedback) {
		Feedback = feedback;
	}

	public static UserFeedback getUser(String Name, String Contact,
			String Feedback) {
		UserFeedback user = new UserFeedback();
		user.setName(Name);
		user.setContact(Contact);
		user.setFeedback(Feedback);
		return user;
	}
	@Override
	public String toString() {
		return "UserFeedback [Name=" + Name + ", Contact=" + Contact
				+ ", Feedback=" + Feedback + "]";
	}
}
