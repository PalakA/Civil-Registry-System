package civil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import civil.conn.provider.ConProv;

public class generateDeath {
	public static List<UserDeath> disp(String id) {
		int status = 0;
		ArrayList<UserDeath> list = new ArrayList<UserDeath>();
		try {
			Connection con = ConProv.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt
					.executeQuery("select * from deathrecord where id='"
							+ id + "'");
			while (rs.next()) {
				UserDeath list1 = new UserDeath();
				list1.setId(rs.getString("id"));
				list1.setName(rs.getString("name"));
				list1.setSex(rs.getString("sex"));
				list1.setDateOfBirth(rs.getDate("dateOfBirth"));
				list1.setAddress(rs.getString("address"));
				list1.setDiedOn(rs.getDate("diedOn"));
				list1.setPlaceOfDeath(rs.getString("placeOfDeath"));
				list1.setCauseOfDeath(rs.getString("causeOfDeath"));
				list1.setStatus(rs.getString("status"));
				list1.setSpousename(rs.getString("spousename"));
				list1.setSpouseAdd(rs.getString("spouseAdd"));
				list1.setSpouseCont(rs.getString("spouseCont"));
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
