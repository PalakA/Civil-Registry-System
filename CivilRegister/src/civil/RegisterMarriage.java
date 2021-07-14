package civil;

import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import civil.conn.provider.ConProv;

public class RegisterMarriage {
	@SuppressWarnings("deprecation")
	public static List<UserMarriage> register(UserMarriage u) {
		ArrayList<UserMarriage> list = new ArrayList<UserMarriage>();
		try {
			Connection con = ConProv.getCon();
			java.sql.PreparedStatement ps = con
					.prepareStatement("insert into marriageRecord(husbandName, religion, dateOfBirth3, address, contact, placeOfMarriage, dateOfMarriage, profession, wifeName, dateOfBirth2, contact1, profession1) values(?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, u.getHusbandName());
			ps.setString(2, u.getReligion());

			java.util.Date d = u.getDateOfBirth3();
			System.out.println(u.getDateOfBirth3());
			ps.setDate(3, new Date(d.getTime()));

			ps.setString(4, u.getAddress());
			ps.setString(5, u.getContact());
			ps.setString(6, u.getPlaceOfMarriage());

			java.util.Date e = u.getDateOfMarriage();
			System.out.println(u.getDateOfMarriage());
			ps.setDate(7, new Date(e.getYear(), e.getMonth(), e.getDay()));

			ps.setString(8, u.getProfession());
			ps.setString(9, u.getWifeName());

			java.util.Date f = u.getDateOfBirth2();
			System.out.println(u.getDateOfBirth2());
			ps.setDate(10, new Date(f.getYear(), f.getMonth(), f.getDay()));

			ps.setString(11, u.getContact1());
			ps.setString(12, u.getProfession1());
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