package civil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import civil.conn.provider.ConProv;

public class EditBirth {
	@SuppressWarnings("deprecation")
	public static List<UserBirth> Edit(UserBirth user) {
		ArrayList<UserBirth> list = new ArrayList<UserBirth>();
		try {
			String id = user.getId();
			System.out.println("***************");
			System.out.println(id);
			Connection con = ConProv.getCon();
			java.sql.PreparedStatement ps = con
					.prepareStatement("update civilreg set `firstName`=?,`sex`=?,`placeOfBirth`=?, `dateOfBirth`=?,"
							+ " `hospital`=?, `fatherName`=?, `motherName`=?, `address`=?, `contact`=?, `religion`=?, `relation`=? where id="
							+ id);
			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getSex());
			ps.setString(3, user.getPlaceOfBirth());

			java.util.Date d = user.getDateOfBirth();
			System.out.println(user.getDateOfBirth());
			ps.setTimestamp(
					4,
					new Timestamp(d.getYear(), d.getMonth(), d.getDay(), d
							.getHours(), d.getMinutes(), d.getSeconds(), 0));

			ps.setString(5, user.getHospital());
			ps.setString(6, user.getFatherName());
			ps.setString(7, user.getMotherName());
			ps.setString(8, user.getAddress());
			ps.setString(9, user.getContact());
			ps.setString(10, user.getReligion());
			ps.setString(11, user.getRelation());
			ps.executeUpdate();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from civilreg where id="
					+ id);
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