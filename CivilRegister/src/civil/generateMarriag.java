package civil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import civil.conn.provider.ConProv;

public class generateMarriag {
	public static List<UserMarriage> disp(String id) {
		int status = 0;
		ArrayList<UserMarriage> list = new ArrayList<UserMarriage>();
		try {
			Connection con = ConProv.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt
					.executeQuery("select * from marriagerecord where id=" + id);

			while (rs.next()) {
				UserMarriage list1 = new UserMarriage();
				list1.setId(rs.getString("id"));
				list1.setHusbandName(rs.getString("husbandName"));
				list1.setReligion(rs.getString("religion"));
				list1.setDateOfBirth3(rs.getDate("dateOfBirth3"));
				list1.setAddress(rs.getString("address"));
				list1.setContact(rs.getString("contact"));
				list1.setPlaceOfMarriage(rs.getString("placeOfMarriage"));
				list1.setDateOfMarriage(rs.getDate("dateOfMarriage"));
				list1.setProfession(rs.getString("profession"));
				list1.setWifeName(rs.getString("wifeName"));
				list1.setDateOfBirth2(rs.getDate("dateOfBirth2"));
				list1.setContact1(rs.getString("contact1"));
				list1.setProfession1(rs.getString("profession1"));
				list.add(list1);
				System.out.println(list);
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