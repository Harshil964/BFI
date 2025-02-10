package com.reshaping.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.reshaping.entity.Beggar;
import com.reshaping.entity.LoginUser;
import com.reshaping.entity.User;

@Repository
public class ReDao {
	@Autowired(required=true)
	private JdbcTemplate jt;
    public int insert(User user)
    {   	
    	String sql="insert into register( name,email,password,mobile,gender) values (?,?,?,?,?)";
    	int i = jt.update(sql,user.getName(),user.getEmail(),user.getPassword(),user.getMobile(),user.getGender());
    	return i;
    	
    }
    public User update(LoginUser loginUser)
    {
    	User user = new User();
    	String sql = "update register set name='"+user.getName()+"', password= '"+user.getPassword()+"',mobile='"+user.getMobile()+"',gender='"+user.getGender()+"'where email= harshil@gmail.com'";
         jt.update(sql, user.getName(),user.getPassword(),user.getMobile(),user.getGender());
        String sql1 = "select * from register";
        List<User> users = jt.query(sql, new UserMapper());
         return (User) users;
    }
    public User getAllUserData(LoginUser loginUser)
    {
    	String sql = "select * from register";
    	List<User> users = jt.query(sql,new UserMapper());
    	return users.size() >0 ? users.get(0) : null;
    }
    
    
    public User validateUser(LoginUser loginUser)
    {
    	String sql = "select * from register where email= '"+loginUser.getEmail()+"' and password= '"+loginUser.getPassword()+"' ";
    	List<User> users = jt.query(sql,new UserMapper());
    	return users.size() >0 ? users.get(0) : null;
    }
    public int insertBeg(Beggar beg)
    {
    	String sql = "insert into registerBeg(BegName,BegAge,longitude,latitude,BegPhoto,email) values (?,?,?,?,?,?)";
    	int i  = jt.update(sql,beg.getBegName(),beg.getBegAge(),beg.getLongitude(),beg.getLatitude(),beg.getBegPhoto(),beg.getEmail());
      	return i;
    }
    public Beggar getAllDataOfBeggar(LoginUser loginUser) {
        //String sql = "SELECT registerbeg.*,register.name,(SELECT COUNT(*) FROM registerbeg) AS beggar_count FROM  registerbeg JOIN  register ON registerbeg.email = register.email;";
        String sql = "SELECT *, (SELECT COUNT(*) FROM registerBeg) AS beggar_count FROM registerbeg;";
    	List<Beggar> beggars = jt.query(sql, new BeggarMapper());
        return  beggars.size()>0 ? beggars.get(0): null ;
    }
    public Beggar getAllDataForAdmin(LoginUser loginUser)
    {
    	String sql = "select * from registerbeg";
    	List<Beggar> beggars =  jt.query(sql, beggarMapper);
    	return  beggars.size()>0 ? beggars.get(0): null ;
    }
    public RowMapper<Beggar> beggarMapper = (rs, rowNum) -> {
        Beggar beggar = new Beggar();
        beggar.setBegId(rs.getString("id"));
        beggar.setBegName(rs.getString("name"));
        beggar.setLongitude(rs.getString("longitude"));
		beggar.setLatitude(rs.getString("latitude"));
		beggar.setBegPhoto(rs.getString("BegPhoto"));
		beggar.setEmail(rs.getString("email"));	
        beggar.setStatus(rs.getString("status"));
        return beggar;
    };
   
    
}


class UserMapper implements RowMapper<User>
{

@Override
public User mapRow(ResultSet rs, int rowNum) throws SQLException {
	// TODO Auto-generated method stub
User user = new User();
//Beggar beg = new Beggar();
user.setName(rs.getString("name"));
user.setEmail(rs.getString("email"));
user.setPassword(rs.getString("password"));
user.setMobile(rs.getString("mobile"));
user.setGender(rs.getString("gender"));
return user;
}
}

class BeggarMapper implements RowMapper<Beggar>
{

	@Override
	public Beggar mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		//User user = new User ();
		//user.setName(rs.getString("name"));
		Beggar beg = new Beggar();
		beg.setBeggarCount(rs.getInt("Beggar_Count"));
		beg.setBegId(rs.getString("BegId"));
		beg.setBegName(rs.getString("BegName"));
		beg.setBegAge(rs.getString("BegAge"));
		beg.setLongitude(rs.getString("longitude"));
		beg.setLatitude(rs.getString("latitude"));
		beg.setBegPhoto(rs.getString("BegPhoto"));
		beg.setEmail(rs.getString("email"));	
		return beg;
	}
	
	 
	
	
}