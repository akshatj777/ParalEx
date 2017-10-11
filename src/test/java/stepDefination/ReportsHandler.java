package stepDefination;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.maven.surefire.shade.org.apache.maven.shared.utils.io.FileUtils;
import org.junit.*;
import org.junit.gen5.api.AfterAll;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import net.masterthought.cucumber.Reportable;

public class ReportsHandler {
	
	public static void createReports() {
		File index = new File(System.getProperty("user.dir")+"\\target\\cucumber-html-reports");
		if(index.exists())
		{
			try {
				FileUtils.deleteDirectory(index);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		File reportOutputDirectory = new File("target");
		File folder = new File(System.getProperty("user.dir")+"\\target\\cucumber-parallel");
		File[] listOfFiles = folder.listFiles();
		List<String> jsonFiles = new ArrayList<>();
		for (File file : listOfFiles) {
		    if (file.isFile()) {
		        System.out.println(file.getName());
		        if(file.getName().contains("json"))
		        {
		        	jsonFiles.add(System.getProperty("user.dir")+ "\\target\\cucumber-parallel\\"+file.getName());
		        }
		    }
		}
    	String buildNumber = "1";
    	String projectName = "cucumberProject";
    	boolean runWithJenkins = false;
    	boolean parallelTesting = false;

    	Configuration configuration = new Configuration(reportOutputDirectory, projectName);
    	// optional configuration
    	configuration.setParallelTesting(parallelTesting);
    	configuration.setRunWithJenkins(runWithJenkins);
    	configuration.setBuildNumber(buildNumber);
    	// addidtional metadata presented on main page
    	configuration.addClassifications("Platform", "Windows");
    	configuration.addClassifications("Browser", "Firefox");
    	configuration.addClassifications("Branch", "release/1.0");

    	ReportBuilder reportBuilder = new ReportBuilder(jsonFiles, configuration);
    	Reportable result = reportBuilder.generateReports();
	}
}
