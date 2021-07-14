package civil;

	import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import civil.conn.provider.ConProv;

	public class EditMarriage {
		@SuppressWarnings("deprecation")
		public static List<UserMarriage> Edit(UserMarriage user1) {
			ArrayList<UserMarriage> list = new ArrayList<UserMarriage>();
			try {
				String id = user1.getId();
				System.out.println("***************");
				System.out.println(id);
				Connection con = ConProv.getCon();
				java.sql.PreparedStatement ps = con
						.prepareStatement("update marriagerecord set `husbandName`=?,`religion`=?,`dateOfBirth3`=?, `address`=?,"
								+ " `contact`=?, `placeOfMarriage`=?, `dateOfMarriage`=?, `profession`=?, `wifeName`=?, `dateOfBirth2`=?, `contact1`=?, `profession1`=? where id="
								+ id);
				ps.setString(1, user1.getHusbandName());
				ps.setString(2, user1.getReligion());
				
				java.util.Date d = user1.getDateOfBirth3();
				System.out.println(user1.getDateOfBirth3());
				ps.setDate(3, new Date(d.getYear(), d.getMonth(), d.getDate()));

				ps.setString(4, user1.getAddress());
				ps.setString(5, user1.getContact());
				ps.setString(6, user1.getPlaceOfMarriage());
				
				java.util.Date s = user1.getDateOfMarriage();
				System.out.println(user1.getDateOfMarriage());
				ps.setDate(7, new Date(s.getYear(), s.getMonth(), s.getDate()));
				
				ps.setString(8, user1.getProfession());
				ps.setString(9, user1.getWifeName());
			
				java.util.Date e = user1.getDateOfBirth2();
				System.out.println(user1.getDateOfBirth2());
				ps.setDate(10, new Date(e.getYear(), e.getMonth(), e.getDate()));
				
				ps.setString(11, user1.getContact1());
				ps.setString(12,user1.getProfession1());
				ps.executeUpdate();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt
						.executeQuery("select * from marriagerecord where id="
								+ id);
							
				while (rs.next()) {
					UserMarriage list1 = new UserMarriage();
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