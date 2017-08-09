package model;

public class CalcService {
	int threatLevelValue = -1;

	String matrixSL[][] = null;

	public CalcService() {
		this.matrixSL = new String[5][5];

		// matrix[row][column]
		this.matrixSL[0][0] = "QM";
		this.matrixSL[0][1] = "QM";
		this.matrixSL[0][2] = "QM";
		this.matrixSL[0][3] = "QM";
		this.matrixSL[0][4] = "QM";

		this.matrixSL[1][0] = "QM";
		this.matrixSL[1][1] = "Low";
		this.matrixSL[1][2] = "Low";
		this.matrixSL[1][3] = "Low";
		this.matrixSL[1][4] = "Medium";

		this.matrixSL[2][0] = "QM";
		this.matrixSL[2][1] = "Low";
		this.matrixSL[2][2] = "Medium";
		this.matrixSL[2][3] = "Medium";
		this.matrixSL[2][4] = "High";

		this.matrixSL[3][0] = "QM";
		this.matrixSL[3][1] = "Low";
		this.matrixSL[3][2] = "Medium";
		this.matrixSL[3][3] = "High";
		this.matrixSL[3][4] = "High";

		this.matrixSL[4][0] = "QM";
		this.matrixSL[4][1] = "Medium";
		this.matrixSL[4][2] = "High";
		this.matrixSL[4][3] = "High";
		this.matrixSL[4][4] = "Critical";
	}

	// returns the securitylevel (QM, Low, Medium, High, Critical) for the
	// display
	public String getSecurityLevel(String threatLevel, String impactLevel) {
		String securityLevel = "";

		int valueThreatLevel = Integer.parseInt(threatLevel);
		int valueImpactLevel = Integer.parseInt(impactLevel);

		securityLevel = matrixSL[valueThreatLevel][valueImpactLevel];
		return securityLevel;
	}

	// returns the value of threatlevel
	public String getThreatLevelValue(String expertise, String windowOfOpportunity, String equipmentEffort) {
		String threatLevel = "";

		double expVal = getExpertiseValue(expertise);
		double winVal = getWindowOfOpportunityValue(windowOfOpportunity);
		double euipVal = getEquipmentEffortValue(equipmentEffort);
		double summe = expVal + winVal + euipVal;
		double result = summe / 3;

		threatLevelValue = (int) Math.round(result);

		switch (threatLevelValue) {
		case 0:
			threatLevel = "4";
			break;
		case 1:
			threatLevel = "3";
			break;

		case 2:
			threatLevel = "2";
			break;

		case 3:
			threatLevel = "1";
			break;

		case 4:
			threatLevel = "0";
			break;
		}

		return threatLevel;
	}

	// returns the impactlevel
	public String getImpactLevel(String safety, String financial, String operation, String privacy) {
		String impactLevel = "";

		int part1 = Math.max(getSafetyValue(safety), getFinancialValue(financial));
		int part2 = Math.max(getOperationValue(operation), getPrivacyValue(privacy));

		int impactLevelValue = Math.max(part1, part2);

		switch (impactLevelValue) {
		case 0:
			impactLevel = "0";
			break;
		case 1:
			impactLevel = "1";
			break;

		case 10:
			impactLevel = "2";
			break;

		case 100:
			impactLevel = "3";
			break;

		case 1000:
			impactLevel = "4";
			break;
		}

		return impactLevel;
	}

	// returns the threatlevel as a String, necessary for display
	public String getThreatLevelDisplay() {
		return "" + threatLevelValue;
	}

	private int getWindowOfOpportunityValue(String windowOO) {
		int value = -1;

		switch (windowOO) {
		case "Critical":
			value = 0;
			break;

		case "High":
			value = 1;
			break;

		case "Medium":
			value = 2;
			break;

		case "Low":
			value = 3;
			break;

		}

		return value;
	}

	// the submethods below return the value of the corresponding inputs
	private int getEquipmentEffortValue(String equipmentEffort) {
		int value = -1;

		switch (equipmentEffort) {
		case "Standard":
			value = 0;
			break;

		case "Spec.COTS":
			value = 1;
			break;

		case "Tailored":
			value = 2;
			break;

		case "Extreme":
			value = 3;
			break;

		}

		return value;
	}

	private int getExpertiseValue(String expertise) {
		int value = -1;

		switch (expertise) {
		case "Layman":
			value = 0;
			break;

		case "Proficient":
			value = 1;
			break;

		case "Expert":
			value = 2;
			break;

		case "Sev.Experts":
			value = 3;
			break;

		}

		return value;
	}

	private int getSafetyValue(String safety) {
		int value = -1;

		switch (safety) {
		case "No injury":
			value = 0;
			break;

		case "Mod. Injuries":
			value = 10;
			break;

		case "Pot. Heavy":
			value = 1000;
			break;

		case "Fatal Injuries":
			value = 1000;
			break;

		}

		return value;
	}

	private int getFinancialValue(String financial) {
		int value = -1;

		switch (financial) {
		case "No impact":
			value = 0;
			break;

		case "Low":
			value = 10;
			break;

		case "Medium":
			value = 100;
			break;

		case "High":
			value = 1000;
			break;

		}

		return value;
	}

	private int getOperationValue(String operation) {
		int value = -1;

		switch (operation) {
		case "No impact":
			value = 0;
			break;

		case "Low":
			value = 1;
			break;

		case "Medium":
			value = 10;
			break;

		case "High":
			value = 100;
			break;

		}

		return value;
	}

	private int getPrivacyValue(String privacy) {
		int value = -1;

		switch (privacy) {
		case "No effect":
			value = 0;
			break;

		case "Low":
			value = 1;
			break;

		case "Medium":
			value = 10;
			break;

		case "High":
			value = 100;
			break;

		}

		return value;
	}

}
