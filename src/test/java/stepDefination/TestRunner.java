package stepDefination;


import com.relevantcodes.extentreports.ExtentReports;
import com.relevantcodes.extentreports.ExtentTest;
//import com.github.mkolisnyk.cucumber.runner.ExtendedCucumberOptions;
import com.remedy.resources.DriverScript;
import cucumber.api.CucumberOptions;
import cucumber.api.java.Before;
import cucumber.api.junit.Cucumber;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import net.masterthought.cucumber.Reportable;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.junit.runner.RunWith;
import stepDefination.Hooks.*;
import stepDefination.ReportsHandler;
/**
 * Created by salam on 7/29/15.
 */

/*@RunWith(ExtendedCucumberRunner.class)
@ExtendedCucumberOptions(jsonReport = "/target/cucumber-results/cucumber.json", retryCount = 3, detailedReport = true,
                        detailedAggregatedReport = true, overviewReport = true, outputFolder = "/target/cucumber-results")
@CucumberOptions(
        plugin = { "html:target/cucumber-results", "usage:target/cucumber-results/cucumber-usage.json",
                "junit:target/cucumber-results/cucumber-results.xml", "json:target/cucumber-results/cucumber.json"},
        features = { "src/test/Features/Episode2.0/Worklists"},
        //glue = { "./src/test/java/stepDefination" },
        tags = {}
<<<<<<< HEAD

)*/

@RunWith(ExtendedCucumberRunner.class)
@CucumberOptions(
        plugin = {"html:target/cucumber-results","usage:target/cucumber-results/cucumber-usage.json",
                "junit:target/cucumber-results/cucumber-results.xml", "json:target/cucumber-results/cucumber.json",
                "stepDefination.ExtentCucumberFormatter","rerun:target/rerun.txt"},
        features = {"src/test/Features/Episode2.0/PatientTopNavigation/productList.feature"},
        glue = {"stepDefination"},
        tags = {}
)
public class TestRunner {

	ExtentReports extent;
    ExtentTest test;
        @BeforeSuite
        public static void setUp() {
                // TODO: Add your pre-processing
        	ExtentCucumberFormatter.initiateExtentCucumberFormatter();
            ExtentCucumberFormatter.loadConfig(new File("extent-config.xml"));
            ExtentCucumberFormatter.addSystemInfo("Browser Name", "Firefox");
            ExtentCucumberFormatter.addSystemInfo("Browser version", "v31.0");
            ExtentCucumberFormatter.addSystemInfo("Selenium version", "v2.53.0");

               Map systemInfo = new HashMap();
               systemInfo.put("Cucumber version", "v1.2.3");
               systemInfo.put("Extent Cucumber Reporter version", "v1.1.0");
               ExtentCucumberFormatter.addSystemInfo(systemInfo);
        }

        @AfterSuite
        public static void tearDown () throws Exception {

                /*CucumberCoverageReport testReportFinal = new CucumberCoverageReport();

               testReportFinal.generateFeatureOverviewReport();
                testReportFinal.testGenerateDetailedAggregatedReport();
                testReportFinal.generateCoverageOverviewReport();*/
        	ReportsHandler.createReports();
                if (DriverScript.Config.getProperty("wantToSendReportViaAutoEmail").equalsIgnoreCase("true")){
                        //System.out.println("control should move here only if I want to send email- cheers !!");
                        AutoReportEmailSender sendReportEmailAutomatically = new AutoReportEmailSender();
                        sendReportEmailAutomatically.autoSendReportMail("aranjan@remedypartners.com", new String[]{"qa@remedypartners.com"}, "Test Email:- Automatic Test Automation Report !!");
                }
        }
}
