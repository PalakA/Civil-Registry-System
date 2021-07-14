package civil;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import civil.conn.provider.ConProv;

public class EditDeath {
	@SuppressWarnings("deprecation")
	public static List<UserDeath> Edit(UserDeath u) {
		ArrayList<UserDeath> list = new ArrayList<UserDeath>();
		try {
			String id = u.getId();
			Connection con = ConProv.getCon();
			java.sql.PreparedStatement ps = con
					.prepareStatement("update deathrecord set `name`=?, `sex`=?, `dateOfBirth`=?, `address`=?, `diedOn`=?, `placeOfDeath`=?, `causeOfDeath`=?, `status`=?, `spousename`=?, `spouseAdd`=?, `spouseCont`=? where id="
							+ id);
			ps.setString(1, u.getName());
			ps.setString(2, u.getSex());

			java.util.Date d = u.getDateOfBirth();
			System.out.println(u.getDateOfBirth());
			ps.setDate(3, new Date(d.getYear(), d.getMonth(), d.getDate()));

			ps.setString(4, u.getAddress());

			java.util.Date e = u.getDiedOn();
			System.out.println(u.getDiedOn());
			ps.setDate(5, new Date(e.getYear(), e.getMonth(), e.getDay()));

			ps.setString(6, u.getPlaceOfDeath());
			ps.setString(7, u.getCauseOfDeath());
			ps.setString(8, u.getStatus());
			ps.setString(9, u.getSpousename());
			ps.setString(10, u.getSpouseAdd());
			ps.setString(11, u.getSpouseCont());
			ps.executeUpdate();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt
					.executeQuery("select * from deathrecord where id=" + id);
			while (rs.next()) {
				UserDeath list1 = new UserDeath();
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
			System.out.println(con);
			rs.close();
			stmt.close();
			con.close();
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