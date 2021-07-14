package civil;

import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import civil.conn.provider.ConProv;
import civil.UserDeath;

public class RegisterDeath {
	@SuppressWarnings("deprecation")
	public static List<UserDeath> register(UserDeath u) {
		ArrayList<UserDeath> list = new ArrayList<UserDeath>();
		try {
			Connection con = ConProv.getCon();
			java.sql.PreparedStatement ps = con
					.prepareStatement("insert into deathrecord(name, sex, dateOfBirth, address, diedOn, placeOfDeath, causeOfDeath, status, spousename, spouseAdd, spouseCont) values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getSex());
			
			java.util.Date d=u.getDateOfBirth();
			System.out.println(u.getDateOfBirth());
			ps.setDate(3, new Date(d.getYear(), d.getMonth(), d.getDate()) );
			
			ps.setString(4, u.getAddress());
			
			java.util.Date e=u.getDiedOn();
			System.out.println(u.getDiedOn());
			ps.setDate(5, new Date(e.getYear(), e.getMonth(), e.getDay()));
			
			ps.setString(6, u.getPlaceOfDeath());
			ps.setString(7, u.getCauseOfDeath());
			ps.setString(8, u.getStatus());
			ps.setString(9, u.getSpousename());
			ps.setString(10, u.getSpouseAdd());
			ps.setString(11, u.getSpouseCont());
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