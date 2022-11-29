

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class roomServlet
 */
@WebServlet("/roomServlet")
public class roomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public roomServlet() {
        super();
    }
    
    protected Connection connect() {
    	Connection con = null;
    	try {
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection("jdbc:mysql://localhost:3307/hotelsdb", "root", "password");
    	} catch(SQLException e) {
    		e.printStackTrace();
    	} catch(ClassNotFoundException e) {
    		e.printStackTrace();
    	}
    	return con;
    }
    
    private void getRooms(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
    	ArrayList<Map<String, Object>> rooms = new ArrayList<Map<String, Object>>();
    	try (Connection con = connect(); PreparedStatement ps = con.prepareStatement("select * from rooms")) {
    		ResultSet rs = ps.executeQuery();
    		ResultSetMetaData md = rs.getMetaData();
    		int columns = md.getColumnCount();
    		while (rs.next()) {
    			Map<String, Object> row = new HashMap<String, Object>(columns);
    		    for (int i = 1; i <= columns; ++i) {          
    		    	 row.put(md.getColumnName(i), rs.getObject(i));
		     	}
    		    rooms.add(row);
			}
    	} catch(SQLException e) {
    		System.out.println(e.getMessage());
    	}
    	request.setAttribute("rooms", rooms);
    	request.getRequestDispatcher("/rooms.jsp").forward(request, response);
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
        	getRooms(request, response);
        } catch(SQLException e) {
        	e.printStackTrace();
    	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Map<String, String[]> params = request.getParameterMap();
			Connection con = connect();
			PreparedStatement ps = con.prepareStatement("insert into rooms values(?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
			int i = 1;
			for (Map.Entry<String, String[]> entry : params.entrySet()) {
				String entryStr = entry.getValue()[0];
				try {
					ps.setInt(i, Integer.parseInt(entryStr));
			    } catch (NumberFormatException nfe) {
					ps.setString(i, entryStr);
			    }
				i++;
			}
			if (ps.executeUpdate() > 0) getRooms(request, response);
			else {
				response.setContentType("text/html");
				response.getWriter().println("<h1 style='color: red'>An error occurred when saving the data to the database</h1>");
			}
		} catch (Exception exception) {
			System.out.println(exception);
			response.setContentType("text/html");
			response.getWriter().println("<h1 style='color: red'>An error has occured</h1>");
		}
	}

}
