package stepDefination.Hooks;


//import com.github.mkolisnyk.cucumber.reporting.CucumberCoverageOverview;
//import com.github.mkolisnyk.cucumber.reporting.CucumberDetailedResults;
import com.remedy.resources.DriverScript;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.gen5.api.BeforeAll;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

/**
 * Created by salam on 8/4/15.
 */
public class InitialSetup {

    private WebDriver driver;
    @Before
    public  void beforeScenario() {
        driver = new DriverScript().getDriver();
    }

    @After
    public void afterScenario(Scenario scenario) throws InterruptedException, AddressException, MessagingException, IOException {
        try {
            if (scenario.isFailed()) {
                 byte[] screenshot = ((TakesScreenshot) driver)
                        .getScreenshotAs(OutputType.BYTES);
                scenario.embed(screenshot, "image/png");
                
            }
        } finally {

            new DriverScript().quitDriver();
            /*Thread.sleep(5000);
            boolean flag = false;
            File folder = new File("target/generated-test-sources/cucumber");
			File[] listOfFiles = folder.listFiles();
			int count = listOfFiles.length;
			System.out.println("Count: " + count);
			File folder1 = new File("target/cucumber-parallel");
			File[] listOfFiles1 = folder1.listFiles();
			int count1 = listOfFiles1.length;
			System.out.println("Count1: " + count1);
			if((count*2)==count1)
			{
				for (File file : listOfFiles1) {
				    if (file.isFile()) {
				        System.out.println(file.getName());
				        if(file.getName().contains("json"))
				        {
				        	if(!(file.length()==0))
				        	{
				        		flag = true;
				        	}
				        	else
				        	{
				        		flag = false;
				        	}
				        }
				    }
				}
				
			}
			if(flag)
			{
				CreateReport.createCumulativeReport();
			}*/
            }

    }
}