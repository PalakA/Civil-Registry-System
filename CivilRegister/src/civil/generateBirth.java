package civil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import civil.conn.provider.ConProv;

public class generateBirth {
	public static List<UserBirth> disp(String id) {
		int status = 0;
		ArrayList<UserBirth> list = new ArrayList<UserBirth>();
		try {
			Connection con = ConProv.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt
					.executeQuery("select * from civilreg where id='"
							+ id +"'");
			{
				while (rs.next()) {
					UserBirth list1 = new UserBirth();
					list1.setId(rs.getString("id"));
					list1.setFirstName(rs.getString("firstName"));
					list1.setSex(rs.getString("sex"));
					list1.setPlaceOfBirth(rs.getString("placeOfBirth"));
					list1.setDateOfBirth(rs.getTimestamp("dateOfBirth"));
					list1.setHospital(rs.getString("hospital"));
					list1.setFatherName(rs.getString("fatherName"));
					list1.setMotherName(rs.getString("motherName"));
					list1.setAddress(rs.getString("address"));
					list1.setContact(rs.getString("contact"));
					list1.setReligion(rs.getString("religion"));
					list1.setRelation(rs.getString("relation"));
					list.add(list1);
					System.out.println(list);
				}
			}
			System.out.println(status);
			System.out.println(con);
			rs.close();
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}