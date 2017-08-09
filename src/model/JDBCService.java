package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCService {
	public static String msg = "";

	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet res = null;
	private String db = "vcsdbase";
	private boolean isCreateTables = false;
	public JDBCService() {
		try {
			// Register JDBC Driver
			Class.forName("com.mysql.jdbc.Driver");
			String DB_URL="jdbc:mysql://localhost/vcsdbase";
			 //  Database credentials
		    String USER = "vcsdbase";
		    String PASS = "vcsdbase";
			// Open Connection
			this.conn = DriverManager.getConnection(DB_URL, USER, PASS);
			conn.setAutoCommit(false);
			this.stmt = conn.createStatement();
		} catch (ClassNotFoundException e) {
			System.out.println("Driverrproblem !!!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("Connectionproblem !!!");
			e.printStackTrace();
		}
	}

	public void selectDb() {
		try {
			// stmt.execute("CREATE DATABASE IF NOT EXISTS " + db);
			stmt.execute("USE " + db);
		} catch (SQLException e) {
			System.out.println("Create or use DB failed!");
			e.printStackTrace();
		}
	}

	// ########### Begin: table structure ############
	public void createTables() {
		if(!this.isCreateTables){
			return;
		}
		try {			
			stmt.execute("DROP TABLE IF EXISTS attackvectors");
			stmt.execute("DROP TABLE IF EXISTS assets");
			stmt.execute("DROP TABLE IF EXISTS securitygoals");
			stmt.execute("DROP TABLE IF EXISTS tara");
			stmt.execute("DROP TABLE IF EXISTS projects");
			stmt.execute("DROP TABLE IF EXISTS aspice");
			
			stmt.execute("CREATE TABLE aspice" + " ( projectid INTEGER(11) NOT NULL,"
					+ " description VARCHAR(100) NOT NULL," + " level VARCHAR(100) NOT NULL," 
					+ " notes VARCHAR(50)," + " status VARCHAR(30)," + "odservationID INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL , " + " type VARCHAR(50), " + " rating VARCHAR(100)," + " ENG VARCHAR(100)," + " base VARCHAR(100) "+ " )"); 

			stmt.execute("CREATE TABLE standard" + " ( ENG VARCHAR(50) PRIMARY KEY NOT NULL," + " base VARCHAR(50),"+ "  level INTEGER(11) NOT NULL"+" )"); 

			stmt.execute("CREATE TABLE projects" + " ( projectid INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,"
					+ " projectname VARCHAR(1000) NOT NULL," + " description VARCHAR(1000) NOT NULL," 
					+ " lead VARCHAR(1000)," + " teammembers VARCHAR(1000)," + " begin VARCHAR(50), " + " end VARCHAR(50), " + " org VARCHAR(1000)," + " summary VARCHAR(1000) "+ " )"); 


			stmt.execute("CREATE TABLE assets" + " ( assetid INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,"
					+ " assetname VARCHAR(1000) NOT NULL," + " source VARCHAR(50) NOT NULL,"
					+ " description VARCHAR(1000) NOT NULL," + " status VARCHAR(50) NOT NULL,"
					+ " sourceofscopedefinition VARCHAR(50)," + " used INTEGER" + " )");

			stmt.execute("CREATE TABLE attackvectors " + " ( avid VARCHAR(50) PRIMARY KEY NOT NULL,"
					+ " attackdescription VARCHAR(1000) NOT NULL," + " source VARCHAR(50) NOT NULL,"
					+ " comments VARCHAR(1000)," + "status VARCHAR(50) NOT NULL" + " )");

			stmt.execute("CREATE TABLE securitygoals" + " (	sgid VARCHAR(50) PRIMARY KEY NOT NULL,"
					+ " description VARCHAR(1000) NOT NULL," + " securitylevel VARCHAR(50) NOT NULL" + " )");

			stmt.execute("CREATE TABLE tara" + " ( taraid INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,"
					+ " assetid INTEGER NOT NULL," + " assetname VARCHAR(1000) NOT NULL,"
					+ " ciaag VARCHAR(50) NOT NULL," + " attackvector VARCHAR(1000) NOT NULL,"
					+ " effectofattack VARCHAR(1000) NOT NULL," + " threatid VARCHAR(50) NOT NULL,"
					+ " threat VARCHAR(1000) NOT NULL," + " expertise VARCHAR(50) NOT NULL,"
					+ " windowofopportunity VARCHAR(50) NOT NULL," + " equipmenteffort VARCHAR(50) NOT NULL,"
					+ " threatlevel VARCHAR(50) NOT NULL," + " safety VARCHAR(50) NOT NULL,"
					+ " financial VARCHAR(50) NOT NULL," + " operational VARCHAR(50) NOT NULL,"
					+ " privacy VARCHAR(50) NOT NULL," + " securitylevel VARCHAR(50) NOT NULL,"
					+ " sgid VARCHAR(50) NOT NULL," + " securitygoal VARCHAR(1000) NOT NULL,"
					+ " comments VARCHAR(1000)," + " valid VARCHAR(50) NOT NULL" + " )");

			conn.commit();

			// Prepare Template
			insertTemplateAssetsAttacks();

			msg = "available";

		} catch (SQLException e) {
			System.out.println("Creation tables failed!");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}
	// ########### End: table structure ############

	// ######### Begin: insert tuple into different tables ##############
	public void insertTupleIntoAttackVectors(String attackid, String source, String status, String attackdescription,
			String comment) {
		try {
			stmt.execute("LOCK TABLES attackvectors WRITE");
			stmt.execute("INSERT INTO attackvectors (avid, source, status, attackdescription, comments) "
					+ " VALUES ( '" + attackid + "', '" + source + "', '" + status + "', '" + attackdescription + "', '"
					+ comment + "' )");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Tuple insert problem: Attack Vectors");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}

	public void insertTupleIntoProjects(String projectname, String description, String lead, String teammembers, String begin, String end, String org,
			String summary) {
		try {
			stmt.execute("LOCK TABLES projects WRITE");
			stmt.execute("INSERT INTO projects (projectname, description, lead, teammembers,begin, end, org, summary) "
					+ " VALUES ('" + projectname + "', '" + description + "', '" + lead + "','" + teammembers + "','" + begin + "','" + end + "','" + org + "', '" + summary + "')");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Tuple insert problem: Projects");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}
	
	public void insertTupleIntoAspice(int projectid, String description, String level, String notes, String status, String type,
			String rating, String ENG, String base) {
		try {
			System.out.println("inserting");
			stmt.execute("LOCK TABLES aspice WRITE");
			stmt.execute("INSERT INTO aspice (projectid, description, level, notes, status, type, rating, ENG, base ) "
					+ " VALUES ('" + projectid + "', '" + description + "', '" + level + "','" + notes + "','" + status + "','" + type + "','" + rating + "','" + ENG + "','" + base   + "')");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Tuple insert problem: ASPICE");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}
	public void insertTupleIntoAssets(String source, String sosdefinition, String status, String assetname,
			String description) {
		try {
			stmt.execute("LOCK TABLES assets WRITE");
			stmt.execute("INSERT INTO assets (source, sourceofscopedefinition, status, assetname, description) "
					+ " VALUES ( '" + source + "', '" + sosdefinition + "', '" + status + "', '" + assetname + "', '"
					+ description + "' )");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Tuple insert problem: Assets");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}
	
	public void copyTupleIntoAssets(String assetName, String source, String description, String status, String sosDefinition) {
		try {
			
			stmt.execute("LOCK TABLES assets WRITE");
			stmt.executeUpdate("INSERT into assets (assetname,source, description, status, sourceofscopedefinition)"
					+ " VALUES ( '" + assetName + "', '" + source + "', '" + description + "', '" + status + "', '"
					+ sosDefinition + "' )");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}
	
	public void editTupleIntoAssets(String assetID, String assetName, String source, String description, String status, String sosDefinition) {
		try {
			
			stmt.execute("LOCK TABLES assets WRITE");
			stmt.executeUpdate("UPDATE assets SET assetid = " + assetID + ", assetname='" + assetName + "', source='" + source
					+ "', description='" + description + "', status='" + status + "',sourceofscopedefinition='" + sosDefinition + "'  WHERE assetid=" + assetID);
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}
	
	public void copyTupleIntoProjects(String projectname, String description, String lead, String teammembers, String begin, String end, String org, String summary) {
		try {
			
			stmt.execute("LOCK TABLES projects WRITE");
			stmt.executeUpdate("INSERT into projects (projectname, description, lead, teammembers, begin, end, org, summary)"
					+ " VALUES ( '" + projectname + "', '" + description + "', '" + lead + "', '" + teammembers + "', '"
					+ begin + "', '" + end + "', '" + org + "', '" + summary + "' )");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}
	
	public void editTupleIntoProjects(String projectid, String projectname, String description, String lead, String teammembers, String begin, String end, String org, String summary) {
		try {
			
			stmt.execute("LOCK TABLES projects WRITE");
			stmt.executeUpdate("UPDATE projects SET projectid = " + projectid + ", projectname='" + projectname + "', description='" + description
					+ "', lead='" + lead + "', teammembers='" + teammembers + "',begin='" + begin + "', begin='" + begin + "', end='" + end + "', org='" + org + "', summary='" + summary + "'  WHERE projectid=" + projectid);
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}
	
	
	
	public void editTupleIntoASpice(int projectid, String description, String level, String notes, String status, int odservationID, String type, String rating, String ENG, String base) {
		try {
			
			stmt.execute("LOCK TABLES projects WRITE");
			stmt.executeUpdate("UPDATE projects SET projectid = " + projectid + ", description='" + description + "', level='" + level
					+ "', notes='" + notes + "', status='" + status + "',odservationID='" + odservationID + "', type='" + type + "', rating='" + rating + "', ENG='" + ENG + "', base='" + base + "'  WHERE odservationID=" + odservationID);
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}
	
	/*
	public void editTupleIntoAssets(String source, String sosdefinition, String status, String assetname,
			String description) {
		try {
			stmt.execute("LOCK TABLES assets WRITE");
			stmt.execute("UPDATE assets SET source='" + source + "', sosdefinition='"
					+ sosdefinition + " ' status '" + status + "', assetname='"
							+ assetname + " 'description ' " + description +  "' WHERE assetid='" + assetid + "'");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Tuple edit problem: Assets");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	} */

	public void insertTupleIntoSecurityGoals(String sgid, String securitylevel, String description) {
		try {
			stmt.execute("LOCK TABLES securitygoals WRITE");
			stmt.execute("INSERT INTO securitygoals (sgid, securitylevel, description) " + " VALUES ( '" + sgid + "', '"
					+ securitylevel + "', '" + description + "' )");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Tuple insert problem: Security Goals");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}

	public void insertTupleIntoTARA(String assetid, String assetname, String ciaag, String attackvector,
			String effectofattack, String threatid, String threat, String expertise, String windowofopportunity,
			String equipmenteffort, String threatlevel, String safety, String financial, String operational,
			String privacy, String securitylevel, String sgid, String securitygoal, String comments, String valid) {
		try {
			stmt.execute("LOCK TABLES tara WRITE");
			stmt.execute(
					"INSERT INTO tara (assetid, assetname, ciaag, attackvector, effectofattack, threatid, threat, expertise, windowofopportunity, equipmenteffort, threatlevel, safety, financial, operational, privacy, securitylevel, sgid, securitygoal, comments, valid )"
							+ " VALUES ( " + assetid + ", '" + assetname + "', '" + ciaag + "', '" + attackvector
							+ "', '" + effectofattack + "', '" + threatid + "', '" + threat + "', '" + expertise
							+ "', '" + windowofopportunity + "', '" + equipmenteffort + "', '" + threatlevel + "', '"
							+ safety + "', '" + financial + "', '" + operational + "', '" + privacy + "', '"
							+ securitylevel + "', '" + sgid + "', '" + securitygoal + "', '" + comments + "', '" + valid
							+ "' )");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Tuple insert problem: Tara");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}
	// ######### End: insert tuple into different tables ##############

	// ######### Begin: delete tuple from different tables ##############
	public void deleteTupleFromAttackVectors(String attackid) {
		try {
			stmt.execute("LOCK TABLES attackvectors WRITE");
			stmt.execute("DELETE FROM attackvectors " + " WHERE avid='" + attackid + "'");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Delete tuple failed: AttackVectors");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}

	public void deleteTupleFromAssets(String assetID) {
		try {
			stmt.execute("LOCK TABLES assets WRITE");
			stmt.execute("DELETE FROM assets " + " WHERE assetid=" + assetID);
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Delete tuple failed: Assets");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}
	
	public void deleteTupleFromASPICE(int i) {
		try {
			stmt.execute("LOCK TABLES aspice WRITE");
			stmt.execute("DELETE FROM aspice " + " WHERE projectid=" + i);
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Delete tuple failed: aspice");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}
	public void deleteTupleFromProjects(int projectid) {
		try {
			stmt.execute("LOCK TABLES projects WRITE");
			stmt.execute("DELETE FROM projects " + " WHERE projectid=" + projectid);
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Delete tuple failed: Projects");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}

	public void deleteTupleFromSecurityGoals(String sgID) {
		try {
			stmt.execute("LOCK TABLES securitygoals WRITE");
			stmt.execute("DELETE FROM securitygoals " + " WHERE sgid='" + sgID + "'");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Delete tuple failed: SecurityGoals");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}

	public void deleteTupleFromTARA(String taraID) {
		try {
			stmt.execute("LOCK TABLES tara WRITE");
			stmt.execute("DELETE FROM tara" + " WHERE taraid=" + taraID);
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			System.out.println("Delete tuple failed: TARA");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
		}
	}
	// ######### End: delete tuple from different tables ##############

	// ######### Begin: update tuple in different tables ##############
	public void updateAttackVectorsTuple(String attackID, String status) {
		try {
			stmt.execute("LOCK TABLES attackvectors WRITE");
			stmt.executeUpdate("UPDATE attackvectors SET status='" + status + "' WHERE avid='" + attackID + "'");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}

	public void updateAssetsTuple(String assetID, String status) {
		try {
			stmt.execute("LOCK TABLES assets WRITE");
			stmt.executeUpdate("UPDATE assets SET status='" + status + "' WHERE assetid=" + assetID);
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}
	
	
	public void updateProjectsTuple(String projectid, String projectname, String description,String lead, String teammembers,String begin, String end,String org, String summary) {
		try {
			stmt.execute("LOCK TABLES projects WRITE");
			stmt.executeUpdate("UPDATE projects SET  projectname='" + projectname + "', description='" + description
					+ "', lead = " + lead + ", teammembers='" + teammembers + "',begin = " + begin + ",end = " + end + ",org = " + org + ", summary='" + summary + "' WHERE projectid=" + projectid);
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}

	public void updateSecurityGoalsTuple(String sgid, String description, String securitylevel) {
		try {
			res = stmt.executeQuery("SELECT * FROM securitygoals" + " WHERE sgid='" + sgid + "'");
			while (res.next()) {

				switch (res.getString("securitylevel")) {
				case "Critical":
					securitylevel = "Critical";
					break;

				case "High":
					if (securitylevel.equals("Critical")) {
						securitylevel = "Critical";
						break;
					}
				case "Medium":
					if (securitylevel.equals("High")) {
						securitylevel = "High";
						break;
					}
				case "Low":
					if (securitylevel.equals("Medium")) {
						securitylevel = "Medium";
						break;
					}
				case "QM":
					if (securitylevel.equals("Low")) {
						securitylevel = "Low";
						break;
					}
				}
			}

			stmt.execute("LOCK TABLES securitygoals WRITE");
			stmt.executeUpdate("UPDATE securitygoals SET description='" + description + "', securitylevel='"
					+ securitylevel + "' WHERE sgid='" + sgid + "'");
			stmt.execute("UNLOCK TABLES");
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}

	public void updateTaraTuple(String taraid, String assetid, String assetname, String ciaag, String attackvector,
			String effectofattack, String threatid, String threat, String expertise, String windowofopportunity,
			String equipmenteffort, String threatlevel, String safety, String financial, String operational,
			String privacy, String securitylevel, String sgid, String securitygoal, String comments, String valid) {
		try {
			stmt.execute("LOCK TABLES tara WRITE");
			stmt.executeUpdate("UPDATE tara SET assetid=" + assetid + ", assetname='" + assetname + "', ciaag='" + ciaag
					+ "', attackvector='" + attackvector + "', effectofattack='" + effectofattack + "', threatid='"
					+ threatid + "', threat='" + threat + "', expertise='" + expertise + "', windowofopportunity='"
					+ windowofopportunity + "', equipmenteffort='" + equipmenteffort + "', threatlevel='" + threatlevel
					+ "', safety='" + safety + "', financial='" + financial + "', operational='" + operational
					+ "', privacy='" + privacy + "', securitylevel='" + securitylevel + "', sgid='" + sgid
					+ "', securitygoal='" + securitygoal + "', comments='" + comments + "', valid='" + valid
					+ "' WHERE taraid=" + taraid);
			stmt.execute("UNLOCK TABLES");

			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}

	}
	// ######################################################

	public void updateAssetsInTaraTuple(String assetid) {
		try {
			stmt.execute("LOCK TABLES tara WRITE");
			stmt.executeUpdate("UPDATE tara SET assetname='n/a' WHERE assetid=" + assetid);
			stmt.execute("UNLOCK TABLES");

			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}

	}
	
	public void updateAssetsInAspice(String projectid) {
		try {
			stmt.execute("LOCK TABLES aspice WRITE");
			stmt.executeUpdate("UPDATE aspice SET projectid='n/a' WHERE projectid=" + projectid);
			stmt.execute("UNLOCK TABLES");

			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
				System.out.println("Rollback !");
			} catch (SQLException e1) {
				System.out.println("Rollback failed!");
				e1.printStackTrace();
			}
			e.printStackTrace();
		}

	}

	// ######### End: update tuple in different tables ##############

	// ########### Begin: get ResulSet ##########
	public ResultSet getResFromTable(String tableName) {
		try {
			res = stmt.executeQuery("SELECT * FROM " + tableName);

			return res;

		} catch (SQLException e) {
			System.out.println("Get ResultSet from " + tableName + " failed!");
			e.printStackTrace();

			return null;
		}

	}
	
	public ResultSet getProjIDsfromAspice() {
		try {
			res = stmt.executeQuery("SELECT DISTINCT projectid FROM aspice");

			return res;

		} catch (SQLException e) {
			System.out.println("Get unique  projectid from aspice failed!");
			e.printStackTrace();

			return null;
		}

	}
	
	public ResultSet geTupleByProjID(int projectid) {
		try {
			System.out.println(projectid);
			
			res = stmt.executeQuery("SELECT * FROM aspice WHERE projectid = " + projectid);

			return res;

		} catch (SQLException e) {
			System.out.println("Get all rows of one particular  projectid from aspice failed!");
			e.printStackTrace();

			return null;
		}

	}
	// ########### End: get ResulSet ##########

	// ########### Begin: get Table Count ##########
	public int getTableCount(String tableName) {
		try {
			int count = 0;
			res = stmt.executeQuery("SELECT count(*) FROM " + tableName);
			res.last();
			count = res.getInt(1);

			return count;

		} catch (SQLException e) {
			System.out.println("Get Count From " + tableName + " failed!");
			e.printStackTrace();
			return 0;
		}
	}
	// ########### End: get Table Count ##########

	// ########### Begin: Close-Method s##########

	public void closeAll() {
		try {
			if (res != null) {
				res.close();
			}
		} catch (SQLException e) {
			System.out.println("Close problem: ResultSet");
			e.printStackTrace();
		}

		try {
			if (stmt != null) {
				stmt.close();
			}
		} catch (SQLException e) {
			System.out.println("Close problem: Statement");
			e.printStackTrace();
		}

		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			System.out.println("Close problem: Connection");
			e.printStackTrace();
		}
	}
	// ########### End: Close-Methods ##########

	// ########### Begin: Template ##########
	public void insertTemplateAssetsAttacks() {
		// Assets
		insertTupleIntoAssets("VCS", "-", "possibly in scope",
				"Software update, vbf-file (stored at diagnostics PC, in transit etc.)", "Software image");
		insertTupleIntoAssets("VCS", "-", "in scope", "Public signing key (vehicle)",
				"The system will store private keys for software signing in the vehicle.");
		insertTupleIntoAssets("Vector", "-", "possibly in scope", "Privacy relevant information", "-");
		insertTupleIntoAssets("Vector", "-", "possibly in scope", "Log files, security log", "-");
		insertTupleIntoAssets("VCS", "-", "possibly in scope", "ECU Parameters",
				"Needs clarification how this is different from Diagnostic Messages ´IPR, parameter and algorithms for ADAS´.");
		insertTupleIntoAssets("VCS", "-", "possibly in scope", "ECU software (installed, flashing during boot)",
				"Needs clarification how this is different from Asset ID 1 ´Software update, vbf-file´.");
		insertTupleIntoAssets("Vector", "-", "possibly in scope",
				"Bootloader software (in transit during update, installed etc.)", "-");

		// Attacks
		insertTupleIntoAttackVectors("KEY1", "VCS", "proposed",
				"Replace public keys for software signing/command signing (single car, integrity)", "-");
		insertTupleIntoAttackVectors("KEY2", "VCS", "proposed",
				"Replace private keys for software signing/command signing (multiple cars, integrity)", "-");
		insertTupleIntoAttackVectors("KEY3", "VCS", "proposed",
				"Publish/obtain private keys for software signing/command signing (multiple cars, confidentiality)",
				"-");
		insertTupleIntoAttackVectors("KEY4", "VCS", "proposed",
				"Replace public keys for software signing/command signing (multiple car, integrity)", "-");
		insertTupleIntoAttackVectors("KEY5", "VCS", "proposed",
				"Inhibit (DoS) communication(availability, CAN, wireless)", "-");
		insertTupleIntoAttackVectors("OTA1", "VCS", "proposed", "Compromise/delete logs", "-");
		insertTupleIntoAttackVectors("OTA2", "VCS", "proposed",
				"Unauthorized/unauthenticated erase of software (authenticity, authorization)", "-");
		insertTupleIntoAttackVectors("OTA3", "VCS", "proposed",
				"Eavesdropping of personal data over wireless. (confidentiality)", "-");
		insertTupleIntoAttackVectors("SW1", "VCS", "proposed",
				"Compromise software packages; changing functionality of SW (Integrity)", "-");
		insertTupleIntoAttackVectors("SW2", "VCS", "proposed",
				"Compromise software packages; replaying old software packages (Authenticity)", "-");
		insertTupleIntoAttackVectors("SW3", "VCS", "proposed", "Disclosure of software packages (confidentiality)",
				"-");
		insertTupleIntoAttackVectors("BOOT1", "VCS", "proposed", "Compromise bootloader (Integrity)", "-");
		insertTupleIntoAttackVectors("PRI1", "VCS", "proposed", "Privacy relevant data is exposed (Confidentiality)",
				"-");
		
		
	}
	// ########### End: Template ##########

}
