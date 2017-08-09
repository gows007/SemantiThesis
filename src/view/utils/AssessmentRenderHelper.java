package view.utils;

import java.util.HashMap;
import java.util.Map;

public class AssessmentRenderHelper {
	static final Map<String, String> colorOfRating= new HashMap<>();
	
	static{
		colorOfRating.put("achieved", "assessment-green");
		colorOfRating.put("not achieved", "assessment-red");
		colorOfRating.put("partially achieved", "assessment-yellow");
		colorOfRating.put("note", "assessment-orange");
	}
	
	 public static String getColorforRating(String ratings){
		return colorOfRating.get(ratings.toLowerCase());		 
	 }
	}

