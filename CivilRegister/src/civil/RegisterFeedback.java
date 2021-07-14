package civil;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import civil.conn.provider.ConProv;

public class RegisterFeedback {
	public static List<UserFeedback> register(UserFeedback u) {
		ArrayList<UserFeedback> list = new ArrayList<UserFeedback>();
		try {
			Connection con = ConProv.getCon();
			java.sql.PreparedStatement ps = con
					.prepareStatement("insert into feedback(Name,Contact,Feedback) values(?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getContact());
			ps.setString(3, u.getFeedback());
			ps.executeUpdate();
			System.out.println();
			System.out.println("??????????????????????????????????");
			System.out.println(con);
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}