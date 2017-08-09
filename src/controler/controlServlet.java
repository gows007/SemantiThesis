

package controler;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CalcService;
import model.JDBCService;
import model.XLSExportService;

/**
 * Servlet implementation class entryServlet
 */
@WebServlet("/controlServlet")
public class controlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		JDBCService ne = new JDBCService();
		ne.selectDb();
		ResultSet res = null;
		// ne.createTables();

		// returns the UI-parameters
		Enumeration<String> names = request.getParameterNames();

		String blah = request.getParameter("Asset ID1");
		System.err.println("This is blah"+blah);
		String value = names.nextElement();

		CalcService csl = null;
		String threatLevelValue = "";
		String threatLevelDisplay = "";
		String securityLevel;
		String string = "";
		String[] parts = null;
		String idpart = "";

		// an action is triggered according to the coming function (exportfile,
		// insert.., update..)
		switch (value) {
		case "exportfile":
			value = names.nextElement();

			XLSExportService export = new XLSExportService(request.getParameter(value));

			try {
				// Sheet
				export.creatSheet("Attack Vector");
				// Header
				export.createRowIntoSheet(0);
				export.setCellvalueIntoRow(0, "ID");
				export.setCellvalueIntoRow(1, "Attackdescription");
				export.setCellvalueIntoRow(2, "Source");
				export.setCellvalueIntoRow(3, "Status");
				export.setCellvalueIntoRow(4, "Comment");

				int row = 1;
				// Content
				res = ne.getResFromTable("attackvectors");
				while (res.next()) {

					export.createRowIntoSheet(row);
					export.setCellvalueIntoRow(0, res.getString("avid"));
					export.setCellvalueIntoRow(1, res.getString("attackdescription"));
					export.setCellvalueIntoRow(2, res.getString("source"));
					export.setCellvalueIntoRow(3, res.getString("status"));
					export.setCellvalueIntoRow(4, res.getString("comments"));

					row++;
				}

				// Sheet
				export.creatSheet("Assets");
				// Header
				export.createRowIntoSheet(0);
				export.setCellvalueIntoRow(0, "ID");
				export.setCellvalueIntoRow(1, "Assetname");
				export.setCellvalueIntoRow(2, "Source");
				export.setCellvalueIntoRow(3, "Description");
				export.setCellvalueIntoRow(4, "Status");
				export.setCellvalueIntoRow(5, "Source Of Scopedefinition");
				export.setCellvalueIntoRow(6, "Used");

				row = 1;
				// Content
				res = ne.getResFromTable("assets");
				while (res.next()) {

					export.createRowIntoSheet(row);
					export.setCellvalueIntoRow(0, res.getString("assetid"));
					export.setCellvalueIntoRow(1, res.getString("assetname"));
					export.setCellvalueIntoRow(2, res.getString("source"));
					export.setCellvalueIntoRow(3, res.getString("description"));
					export.setCellvalueIntoRow(4, res.getString("status"));
					export.setCellvalueIntoRow(5, res.getString("sourceofscopedefinition"));
					export.setCellvalueIntoRow(6, res.getString("used"));

					row++;
				}

				// Sheet
				export.creatSheet("Security Goals");
				// Header
				export.createRowIntoSheet(0);
				export.setCellvalueIntoRow(0, "ID");
				export.setCellvalueIntoRow(1, "Description");
				export.setCellvalueIntoRow(2, "Security Level");

				row = 1;
				// Content
				res = ne.getResFromTable("securitygoals");
				while (res.next()) {

					export.createRowIntoSheet(row);
					export.setCellvalueIntoRow(0, res.getString("sgid"));
					export.setCellvalueIntoRow(1, res.getString("description"));
					export.setCellvalueIntoRow(2, res.getString("securitylevel"));

					row++;
				}
				// Sheet
				export.creatSheet("TARA");
				// Header
				export.createRowIntoSheet(0);
				export.setCellvalueIntoRow(0, "No.");
				export.setCellvalueIntoRow(1, "Asset ID");
				export.setCellvalueIntoRow(2, "Assetname");
				export.setCellvalueIntoRow(3, "CIAAG");
				export.setCellvalueIntoRow(4, "Attack Vector");
				export.setCellvalueIntoRow(5, "Effect Of Attack");
				export.setCellvalueIntoRow(6, "Threat ID");
				export.setCellvalueIntoRow(7, "Threat");
				export.setCellvalueIntoRow(8, "Expertise");
				export.setCellvalueIntoRow(9, "Window Of Opportunity");
				export.setCellvalueIntoRow(10, "Equipment, Effort");
				export.setCellvalueIntoRow(11, "Threat Level");
				export.setCellvalueIntoRow(12, "Safety");
				export.setCellvalueIntoRow(13, "Financial");
				export.setCellvalueIntoRow(14, "Operational");
				export.setCellvalueIntoRow(15, "Privacy");
				export.setCellvalueIntoRow(16, "Security Level");
				export.setCellvalueIntoRow(17, "SGID");
				export.setCellvalueIntoRow(18, "Security Goal");
				export.setCellvalueIntoRow(19, "Comments");
				export.setCellvalueIntoRow(20, "Valid");

				row = 1;

				res = ne.getResFromTable("tara");
				while (res.next()) {

					export.createRowIntoSheet(row);
					export.setCellvalueIntoRow(0, res.getString("taraid"));
					export.setCellvalueIntoRow(1, res.getString("assetid"));
					export.setCellvalueIntoRow(2, res.getString("assetname"));
					export.setCellvalueIntoRow(3, res.getString("ciaag"));
					export.setCellvalueIntoRow(4, res.getString("attackvector"));
					export.setCellvalueIntoRow(5, res.getString("effectofattack"));
					export.setCellvalueIntoRow(6, res.getString("threatid"));
					export.setCellvalueIntoRow(7, res.getString("threat"));
					export.setCellvalueIntoRow(8, res.getString("expertise"));
					export.setCellvalueIntoRow(9, res.getString("windowofopportunity"));
					export.setCellvalueIntoRow(10, res.getString("equipmenteffort"));
					export.setCellvalueIntoRow(11, res.getString("threatlevel"));
					export.setCellvalueIntoRow(12, res.getString("safety"));
					export.setCellvalueIntoRow(13, res.getString("financial"));
					export.setCellvalueIntoRow(14, res.getString("operational"));
					export.setCellvalueIntoRow(15, res.getString("privacy"));
					export.setCellvalueIntoRow(16, res.getString("securitylevel"));
					export.setCellvalueIntoRow(17, res.getString("sgid"));
					export.setCellvalueIntoRow(18, res.getString("securitygoal"));
					export.setCellvalueIntoRow(19, res.getString("comments"));
					export.setCellvalueIntoRow(20, res.getString("valid"));

					row++;
				}
				// Write file out
				export.fileOut();

			} catch (SQLException e) {
				System.out.println("Export to EXCEL failed");
				e.printStackTrace();
			}

			ne.closeAll();

			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("viewchart.jsp");
			dispatcher.forward(request, response);

			return;

		case "insertAV":
			ne.insertTupleIntoAttackVectors(request.getParameter("attackid"), request.getParameter("source"),
					request.getParameter("status"), request.getParameter("attackdescription"),
					request.getParameter("comment"));

			ne.closeAll();

			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("viewattacks.jsp");
			dispatcher.forward(request, response);

			return;
		// }

		case "updateAV":
			while (names.hasMoreElements()) {
				value = names.nextElement();
				if (value.contains("delete")) {
					string = value;
					parts = string.split("_");
					idpart = parts[1];

					ne.deleteTupleFromAttackVectors(idpart);

					// Skip
					value = names.nextElement();

				} else if (value.contains("status")) {
					string = value;
					parts = string.split("_");
					idpart = parts[1];

					ne.updateAttackVectorsTuple(idpart, request.getParameter(value));
				}
			}

			ne.closeAll();

			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("tableattackvectors.jsp");
			dispatcher.forward(request, response);

			return;

		case "insertA":
			ne.insertTupleIntoAssets(request.getParameter("source"), request.getParameter("sosdefinition"),
					request.getParameter("status"), request.getParameter("assetname"),
					request.getParameter("description"));

			ne.closeAll();

			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("viewassets.jsp");
			dispatcher.forward(request, response);

			return;

		case "copyA":
			ne.copyTupleIntoAssets(request.getParameter("Asset name2"),
					request.getParameter("Source3"), request.getParameter("Description4"),
					request.getParameter("Status5"), request.getParameter("Source Of Scope Definition6"));

			ne.closeAll();

			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("tableassets.jsp");
			dispatcher.forward(request, response);

			return;
			
		case "editA":
			
			
				//var assetid= request.getParameter("Asset ID1");
				
				ne.editTupleIntoAssets(request.getParameter("Asset ID1"), request.getParameter("Asset name2"),
						request.getParameter("Source3"), request.getParameter("Description4"),
						request.getParameter("Status5"), request.getParameter("Source Of Scope Definition6"));
		
			
			ne.closeAll();
			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("tableassets.jsp");
			dispatcher.forward(request, response);
	

			return;

		case "updateA":
			while (names.hasMoreElements()) {
				value = names.nextElement();
				if (value.contains("delete")) {
					string = value;
					parts = string.split("_");
					idpart = parts[1];

					ne.deleteTupleFromAssets(idpart);
					ne.updateAssetsInTaraTuple(idpart);

					// Skip
					value = names.nextElement();

				} else if (value.contains("status")) {
					string = value;
					parts = string.split("_");
					idpart = parts[1];

					ne.updateAssetsTuple(idpart, request.getParameter(value));
				}

			}

			ne.closeAll();

			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("tableassets.jsp");
			dispatcher.forward(request, response);

			return;

		
			
		case "insertP":
			ne.insertTupleIntoProjects(request.getParameter("projectname"), request.getParameter("description"),
					request.getParameter("lead"),request.getParameter("teammembers"),request.getParameter("begin"),request.getParameter("end"),request.getParameter("org"), request.getParameter("summary"));
			ne.closeAll();

			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("viewprojects.jsp");
			dispatcher.forward(request, response);

			return;
			
		case "updateAssessment":
			while (names.hasMoreElements()) {
				value = names.nextElement();
				if (value.contains("delete")) {
					//System.out.println("in delte assess");
					string = value;
					parts = string.split("_");
					idpart = parts[1];

					
					ne.deleteTupleFromASPICE(Integer.parseInt(idpart));
					//ne.updateAssetsInTaraTuple(idpart);

					// Skip
						//value = names.nextElement();

				} 
			}

			ne.closeAll();


			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("assessment.jsp");
			dispatcher.forward(request, response);

			return;
			
		case "updateP":
			while (names.hasMoreElements()) {
				value = names.nextElement();
				if (value.contains("delete")) {
					//System.out.println("in delte assess");
					string = value;
					parts = string.split("_");
					idpart = parts[1];

					
					ne.deleteTupleFromProjects(Integer.parseInt(idpart));
					//ne.updateAssetsInTaraTuple(idpart);

					// Skip
						//value = names.nextElement();

				} 
			}

			ne.closeAll();


			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("ASPICEproject.jsp");
			dispatcher.forward(request, response);

			return;
			
			
			
		case "copyP":
			ne.copyTupleIntoProjects(request.getParameter("Project Name2"),
					request.getParameter("Project Description3"), request.getParameter("Lead Assessor4"),
					request.getParameter("Team Members5"), request.getParameter("Begin Date6"),request.getParameter("End Date7"),request.getParameter("Organization & Department8"),request.getParameter("Summary9"));

			ne.closeAll();

			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("ASPICEproject.jsp");
			dispatcher.forward(request, response);

			return;
			
		case "editP":
			
			
				//var projectid= request.getParameter("Project ID1");
				
				ne.editTupleIntoProjects(request.getParameter("Project ID1"), request.getParameter("Project Name2"),
						request.getParameter("Project Description3"), request.getParameter("Lead Assessor4"),
						request.getParameter("Team Members5"), request.getParameter("Begin Date6"),request.getParameter("End Date7"),request.getParameter("Organization & Department8"),request.getParameter("Summary9"));

		
			
			ne.closeAll();
			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("ASPICEproject.jsp");
			dispatcher.forward(request, response);
	

			return;
			
		case "insertAssessment":

			ne.insertTupleIntoAspice(Integer.parseInt(request.getParameter("projectid")), request.getParameter("description"),
					request.getParameter("level"),request.getParameter("notes"),request.getParameter("status"),request.getParameter("type"), request.getParameter("rating"), request.getParameter("ENG"), request.getParameter("BP1"));

			ne.closeAll();
			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("newassessment.jsp");
			dispatcher.forward(request, response);


			return;

			

		case "editAssessment":
			
			
			//var projectid= request.getParameter("Project ID1");
			
			ne.editTupleIntoASpice(Integer.parseInt(request.getParameter("Project ID1")), request.getParameter("Description2"),
					request.getParameter("Level3"), request.getParameter("Notes4"),
					request.getParameter("Status5"), Integer.parseInt(request.getParameter("Observation ID6")),request.getParameter("Type7"),request.getParameter("Ratings8"),request.getParameter("ENG9"), request.getParameter("Base Practice10"));

	
		
		ne.closeAll();
		// the transferred view will displayed
		dispatcher = request.getRequestDispatcher("assessment.jsp");
		dispatcher.forward(request, response);


		return;
			
		case "updateSG":
			while (names.hasMoreElements()) {
				value = names.nextElement();
				if (value.contains("delete")) {
					string = value;
					parts = string.split("_");
					idpart = parts[1];

					ne.deleteTupleFromSecurityGoals(idpart);

				}
			}

			ne.closeAll();

			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("tablesecuritygoals.jsp");
			dispatcher.forward(request, response);

			return;

		case "insertTARA":
			csl = new CalcService();
			threatLevelValue = csl.getThreatLevelValue(request.getParameter("expertise"),
					request.getParameter("windowofopportunity"), request.getParameter("equipmenteffort"));
			threatLevelDisplay = csl.getThreatLevelDisplay();
			securityLevel = csl.getSecurityLevel(threatLevelValue,
					csl.getImpactLevel(request.getParameter("safety"), request.getParameter("financial"),
							request.getParameter("operational"), request.getParameter("privacy")));

			ne.insertTupleIntoTARA(request.getParameter("assetid"), request.getParameter("assetname"),
					request.getParameter("ciaag"), request.getParameter("attackvector"),
					request.getParameter("effectofattack"), request.getParameter("threatid"),
					request.getParameter("threat"), request.getParameter("expertise"),
					request.getParameter("windowofopportunity"), request.getParameter("equipmenteffort"),
					threatLevelDisplay, request.getParameter("safety"), request.getParameter("financial"),
					request.getParameter("operational"), request.getParameter("privacy"), securityLevel,
					request.getParameter("sgid"), request.getParameter("securitygoal"),
					request.getParameter("comments"), request.getParameter("valid"));

			ne.insertTupleIntoSecurityGoals(request.getParameter("sgid"), securityLevel,
					request.getParameter("securitygoal"));

			ne.closeAll();

			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("viewtara.jsp");
			dispatcher.forward(request, response);

			return;

		case "updateTARA":
			while (names.hasMoreElements()) {
				value = names.nextElement();
				if (value.contains("delete")) {
					string = value;
					parts = string.split("_");
					idpart = parts[1];

					ne.deleteTupleFromTARA(idpart);

					// Skip
					while (true) {
						value = names.nextElement();
						if (value.contains("valid")) {
							break;
						}
					}

				} else if (value.contains("assetid")) {
					string = value;
					parts = string.split("_");
					idpart = parts[1];

					String build = "_" + idpart;

					csl = new CalcService();
					threatLevelValue = csl.getThreatLevelValue(request.getParameter("expertise" + build),
							request.getParameter("windowofopportunity" + build),
							request.getParameter("equipmenteffort" + build));
					threatLevelDisplay = csl.getThreatLevelDisplay();
					securityLevel = csl.getSecurityLevel(threatLevelValue, csl.getImpactLevel(
							request.getParameter("safety" + build), request.getParameter("financial" + build),
							request.getParameter("operational" + build), request.getParameter("privacy" + build)));

					ne.updateTaraTuple(idpart, request.getParameter("assetid" + build),
							request.getParameter("assetname" + build), request.getParameter("ciaag" + build),
							request.getParameter("attackvector" + build),
							request.getParameter("effectofattack" + build), request.getParameter("threatid" + build),
							request.getParameter("threat" + build), request.getParameter("expertise" + build),
							request.getParameter("windowofopportunity" + build),
							request.getParameter("equipmenteffort" + build), threatLevelDisplay,
							request.getParameter("safety" + build), request.getParameter("financial" + build),
							request.getParameter("operational" + build), request.getParameter("privacy" + build),
							securityLevel, request.getParameter("sgid" + build),
							request.getParameter("securitygoal" + build), request.getParameter("comments" + build),
							request.getParameter("valid" + build));

					ne.updateSecurityGoalsTuple(request.getParameter("sgid" + build),
							request.getParameter("securitygoal" + build), securityLevel);

					// Skip
					while (true) {
						value = names.nextElement();
						if (value.contains("valid")) {
							break;
						}
					}
				}
			}

			ne.closeAll();

			// the transferred view will displayed
			dispatcher = request.getRequestDispatcher("viewtara.jsp");
			dispatcher.forward(request, response);

			return;
		}

		ne.closeAll();

		// the transferred view will displayed
		dispatcher = request.getRequestDispatcher("index.html");
		dispatcher.forward(request, response);

		return;

	}

}