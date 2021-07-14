package civil;

import java.sql.Connection;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import civil.conn.provider.ConProv;

public class RegisterBirth {
	@SuppressWarnings({ "deprecation" })
	public static List<UserBirth> register(UserBirth u) {
		ArrayList<UserBirth> list = new ArrayList<UserBirth>();
		try {
			Connection con = ConProv.getCon();
			java.sql.PreparedStatement ps = con
					.prepareStatement("insert into civilreg(firstName,sex, placeOfBirth, dateOfBirth, hospital, fatherName, motherName, address, contact, religion, relation) values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, u.getFirstName());
			ps.setString(2, u.getSex());
			ps.setString(3, u.getPlaceOfBirth());
			
			java.util.Date d=u.getDateOfBirth();
			System.out.println(u.getDateOfBirth());
			ps.setTimestamp(4,new Timestamp(d.getYear(),d.getMonth(),d.getDay(),d.getHours(),d.getMinutes(),d.getSeconds(), 0));
			
			ps.setString(5, u.getHospital());
			ps.setString(6, u.getFatherName());
			ps.setString(7, u.getMotherName());
			ps.setString(8, u.getAddress());
			ps.setString(9, u.getContact());
			ps.setString(10, u.getReligion());
			ps.setString(11, u.getRelation());
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