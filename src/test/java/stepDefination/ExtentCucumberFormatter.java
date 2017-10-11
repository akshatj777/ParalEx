package stepDefination;

import com.relevantcodes.extentreports.DisplayOrder;
import com.relevantcodes.extentreports.ExtentReports;
import com.relevantcodes.extentreports.ExtentTest;
import com.relevantcodes.extentreports.LogStatus;
import com.relevantcodes.extentreports.NetworkMode;

import cucumber.runtime.CucumberException;
import cucumber.runtime.io.URLOutputStream;
import gherkin.formatter.Formatter;
import gherkin.formatter.Reporter;
import gherkin.formatter.model.*;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.util.*;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/**
 * Cucumber custom format listener which generates ExtentsReport html file
 */
public class ExtentCucumberFormatter implements Reporter, Formatter {

    private static ExtentReports extent;
    private ExtentTest featureTest;
    private ExtentTest scenarioTest;
    private LinkedList<Step> testSteps = new LinkedList<Step>();
    private static File htmlReportDir;
    private static Map systemInfo;
    private boolean scenarioOutlineTest;
    static Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    public static String ReportPath = "target" + File.separator + "Reports" + File.separator + "ExecutionResults_" + sdf.format(timestamp) + System.currentTimeMillis();
    public String value=null; 

    private static final Map<String, String> MIME_TYPES_EXTENSIONS = new HashMap() {
        {
            this.put("image/bmp", "bmp");
            this.put("image/gif", "gif");
            this.put("image/jpeg", "jpg");
            this.put("image/png", "png");
            this.put("image/svg+xml", "svg");
            this.put("video/ogg", "ogg");
        }
    };

    public ExtentCucumberFormatter(File filePath) {
        if (!filePath.getPath().equals("")) {
            String reportPath = filePath.getPath();
            this.htmlReportDir = new File(reportPath);
            this.extent = new ExtentReports(reportPath);
        } else {
            String reportDir = "Reports/ExecutionResults_" + System.currentTimeMillis();
            this.htmlReportDir = new File(reportDir);
            this.extent = new ExtentReports(reportDir + "/report.html");
        }
    }

    public ExtentCucumberFormatter() {
    }

    public static void initiateExtentCucumberFormatter(File filePath, Boolean replaceExisting,
                                                       DisplayOrder displayOrder, NetworkMode networkMode,
                                                       Locale locale) {
        htmlReportDir = filePath;
        extent = new ExtentReports(filePath.getAbsolutePath(), replaceExisting, displayOrder, networkMode, locale);
    }

    public static void initiateExtentCucumberFormatter(File filePath, Boolean replaceExisting,
                                                       DisplayOrder displayOrder, NetworkMode networkMode) {
        initiateExtentCucumberFormatter(filePath, replaceExisting, displayOrder, networkMode, null);
    }

    public static void initiateExtentCucumberFormatter(File filePath, Boolean replaceExisting,
                                                       DisplayOrder displayOrder, Locale locale) {
        initiateExtentCucumberFormatter(filePath, replaceExisting, displayOrder, null, locale);
    }

    public static void initiateExtentCucumberFormatter(File filePath, Boolean replaceExisting,
                                                       DisplayOrder displayOrder) {
        initiateExtentCucumberFormatter(filePath, replaceExisting, displayOrder, null, null);
    }

    public static void initiateExtentCucumberFormatter(File filePath, Boolean replaceExisting, NetworkMode networkMode,
                                                       Locale locale) {
        initiateExtentCucumberFormatter(filePath, replaceExisting, null, networkMode, locale);
    }

    public static void initiateExtentCucumberFormatter(File filePath, Boolean replaceExisting,
                                                       NetworkMode networkMode) {
        initiateExtentCucumberFormatter(filePath, replaceExisting, null, networkMode, null);
    }

    public static void initiateExtentCucumberFormatter(File filePath, NetworkMode networkMode) {
        initiateExtentCucumberFormatter(filePath, null, null, networkMode, null);
    }

    public static void initiateExtentCucumberFormatter(File filePath, Boolean replaceExisting, Locale locale) {
        initiateExtentCucumberFormatter(filePath, replaceExisting, null, null, locale);
    }

    public static void initiateExtentCucumberFormatter(File filePath, Boolean replaceExisting) {
        initiateExtentCucumberFormatter(filePath, replaceExisting, null, null, null);
    }

    public static void initiateExtentCucumberFormatter(File filePath, Locale locale) {
        initiateExtentCucumberFormatter(filePath, null, null, null, locale);
    }

    public static void initiateExtentCucumberFormatter(File filePath) {
        initiateExtentCucumberFormatter(filePath, null, null, null, null);
    }

    public static void initiateExtentCucumberFormatter() {
        String reportFilePath = ReportPath + File.separator + "report.html";
        initiateExtentCucumberFormatter(new File(reportFilePath));
    }

    public static void setTestRunnerOutput(String s) {
        extent.setTestRunnerOutput(s);
    }

    public static void loadConfig(File configFile) {
        extent.loadConfig(configFile);
    }

    public static void addSystemInfo(String param, String value) {
        if (systemInfo == null) {
            systemInfo = new HashMap();
        }
        systemInfo.put(param, value);
    }

    public static void addSystemInfo(Map<String, String> info) {
        if (systemInfo == null) {
            systemInfo = new HashMap();
        }
        systemInfo.putAll(info);
    }

    public void before(Match match, Result result) {

    }

    public void result(Result result) {
        if (!scenarioOutlineTest) {
            Step step = testSteps.poll();
            String key=step.getName();
            if(key.contains("#"))
            {
            	String keyWithHash = key.substring(key.indexOf("#"), key.lastIndexOf("#")+1);
            	if(keyWithHash.startsWith("#") && keyWithHash.endsWith("#"))
            	{
                String keyWithoutHash = key.substring(key.indexOf("#")+1, key.lastIndexOf("#"));
           		/*String configValue= Tools.readDbConfig(keyWithoutHash);
           		value=key.replace(keyWithHash, configValue);
            	}
            	else
            	{
            		value=key;
            	}*/
            }
            }
         /*   else if(key.contains("$"))
            {
            	String keyWithDollar="";
            	String propValue="";
            	if(Tools.readDbConfig("Application").equalsIgnoreCase("Halo") || Tools.readDbConfig("Application").equalsIgnoreCase("HALO - WebClientSetup"))
            	{
            		int OccurenceCount = key.length() - key.replaceAll("$","").length();
    				if ((key.indexOf("$") != key.lastIndexOf("$")) && (OccurenceCount == 2)) 
    				{

    					keyWithDollar = key.substring(key.indexOf("$"), key.lastIndexOf("$") + 1);


    					if (keyWithDollar.startsWith("$") && keyWithDollar.endsWith("$")) 
    					{
    						
    						String[] keyWithoutDollar = key.split("[$]");
    						
    						//String keyWithoutDollar = key.substring(key.indexOf("" + "$") + 1, key.lastIndexOf("$" + "" + " "));
    						
							try {
								propValue = PropFileHandler.readProperty(keyWithoutDollar[1]);
							} catch (CustomException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
    						value = key.replace(keyWithDollar, propValue);
    					}
    					else {
    						value = key;
    					}
    				}
    				else {
						value = key;
					}
            	}
    			else
    			{
            	keyWithDollar = key.substring(key.indexOf("$"), key.lastIndexOf("$")+1);
            	if(keyWithDollar.startsWith("$") && keyWithDollar.endsWith("$"))
            	{
                String keyWithoutDollar = key.substring(key.indexOf("$")+1, key.lastIndexOf("$"));
				try {
						propValue = PropFileHandler.readProperty(keyWithoutDollar);
					} catch (CustomException e) {
						try {
							throw new CustomException("'Error while fetching value from Property file for Extent Report'");
						} catch (CustomException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
					}
				if(propValue==null)
				{
					propValue=keyWithoutDollar;
				}
           		value=key.replace(keyWithDollar, propValue);
            	}
            	else {
					value = key;
				}
             }
            }*/
            else
            {
            	value=key;
            }
			if ("passed".equals(result.getStatus())) {
				//String screenshotPath = PageHelper.captureIt();
				String screenshotPath = "";
			    scenarioTest.log(LogStatus.PASS,"Line Number: "+step.getLine()+" - "+step.getKeyword()+value, "PASSED");
			    scenarioTest.log(LogStatus.INFO, "Snapshot below: " + scenarioTest.addScreenCapture(screenshotPath));
			} else if ("failed".equals(result.getStatus())) {
				//String screenshotPath = PageHelper.captureIt();
				String screenshotPath = "";
				String error = result.getErrorMessage();
				int i = error.indexOf("'");
				int j = error.lastIndexOf("'");
				error = error.substring(i+1, j);
			    scenarioTest.log(LogStatus.FAIL, step.getLine() + step.getKeyword() + value, error);
			    scenarioTest.log(LogStatus.INFO, "Snapshot below: " + scenarioTest.addScreenCapture(screenshotPath));
			} else if ("skipped".equals(result.getStatus())) {
			    scenarioTest.log(LogStatus.SKIP, step.getLine() + step.getKeyword() + value, "SKIPPED");
			   // scenarioTest.log(LogStatus.INFO, "Snapshot below: " + scenarioTest.addScreenCapture(screenshotPath));
			} else if ("undefined".equals(result.getStatus())) {
			    scenarioTest.log(LogStatus.UNKNOWN, step.getLine() + step.getKeyword() + value, "UNDEFINED");
			    //scenarioTest.log(LogStatus.INFO, "Snapshot below: " + scenarioTest.addScreenCapture(screenshotPath));
			}
            
        }}
    

    public void after(Match match, Result result) {

    }

    public void match(Match match) {

    }

    public void embedding(String s, byte[] bytes) {
        if (!scenarioOutlineTest) {
            String extension = (String)MIME_TYPES_EXTENSIONS.get(s);
            String fileName = "screenshot-" + System.currentTimeMillis() + "." + extension;
            this.writeBytesAndClose(bytes, this.reportFileOutputStream(fileName));
            scenarioTest.log(LogStatus.INFO, scenarioTest.addScreenCapture(fileName));
        }
    }

    public void write(String s) {
        if (!scenarioOutlineTest)
            scenarioTest.log(LogStatus.INFO, s);
    }

    public void syntaxError(String s, String s1, List<String> list, String s2, Integer integer) {
    }

    public void uri(String s) {
    }

    public void feature(Feature feature) {
        featureTest = extent.startTest("Feature: " + feature.getName());

        for (Tag tag : feature.getTags()) {
            featureTest.assignCategory(tag.getName());
        }
    }

    public void scenarioOutline(ScenarioOutline scenarioOutline) {
        scenarioOutlineTest = true;
    }

    public void examples(Examples examples) {
    }

    public void startOfScenarioLifeCycle(Scenario scenario) {
        //scenarioTest = extent.startTest("Scenario: " + scenario.getName());
    	scenarioTest = extent.startTest(scenario.getName());
        for (Tag tag : scenario.getTags()) {
            scenarioTest.assignCategory(tag.getName());
        }
        scenarioOutlineTest = false;
    }

    public void background(Background background) {
    }

    public void scenario(Scenario scenario) {
    }

    public void step(Step step) {
        if (!scenarioOutlineTest)
            testSteps.add(step);
    }

    public void endOfScenarioLifeCycle(Scenario scenario) {
        if (!scenarioOutlineTest) {
            extent.endTest(scenarioTest);
            featureTest.appendChild(scenarioTest);
        }
    }

    public void done() {
    }

    public void close() {
        extent.addSystemInfo(systemInfo);
        extent.close();
    }

    public void eof() {
        extent.endTest(featureTest);
        extent.flush();
    }

    private OutputStream reportFileOutputStream(String fileName) {
        try {
            return new URLOutputStream(new URL(this.htmlReportDir.toURI().toURL(), fileName));
        } catch (IOException var3) {
            throw new CucumberException(var3);
        }
    }

    private void writeBytesAndClose(byte[] buf, OutputStream out) {
        try {
            out.write(buf);
        } catch (IOException var4) {
            throw new CucumberException("Unable to write to report file item: ", var4);
        }
    }

}
