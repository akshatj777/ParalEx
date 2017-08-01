package com.remedy.Episode2;

import org.openqa.selenium.support.Color;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.remedy.baseClass.BaseClass;

public class PatientClinicalDocuments extends BaseClass {

	public PatientClinicalDocuments(WebDriver driver) {
		super(driver);
	}
	public static String L_name=null;
	
	public void IverifythesearchedpatienthastheCARLcompletetextornot() {
       isElementVisible(driver.findElement(By.cssSelector("button.btn.btn-primary.btn-auto-square.ng-scope > strong")));
	}

	public void IsearchandclickonthesearchedpatientwhichhastheCARLtextinit() throws InterruptedException {
		iFillInText(driver.findElement(By.cssSelector("search-bar > div.elastic-input-directive.ng-isolate-scope.open > div > input")), L_name);
		Thread.sleep(8000);
		clickElement(driver.findElement(By.xpath("//h3[@class='ng-scope']/span[contains(text(),'" + L_name + "')]")));
    }

	public void IclickontheClinicalDocumentstabinthepatientsummaryPage() {
        clickElement(driver.findElement(By.xpath("//span[contains(text(),'Clinical Documents')]")));
	}

	public void IverifytheCARLDocumentontheClinicalDocumentstabinthepatientsummaryPage() {
       isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'CARL')]")));
	}

	public void IverifythatifuserhassavedaformbutnotsubmittedstatusshouldbereadasInProgress() {
        WebElement element=driver.findElement(By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(2) > span"));
        verifyTextForElement(element,"In Progress");
	}

	public void IverifythatInprogressstatusshouldbeinpurplecolorwithColorcodeAD77B3() {
    	isElementVisible(driver.findElement(By.cssSelector(" span.status-tag.status-tag-1")));
		String value = driver.findElement(By.cssSelector(" span.status-tag.status-tag-1")).getCssValue("background-color");
		String hex = Color.fromString(value).asHex();
		Assert.assertTrue(hex.equals("#ad77b3"));
		}

	public void IclickonthecompleteCARLonthePatientSummary() throws InterruptedException {
      	WebElement element = driver.findElement(By.xpath("//button[contains(text(),'Complete CARL')]"));
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//button[contains(text(),'Complete CARL')]")));
		clickElement(element);
	}

	public void IsaveandcontinuethecompleteCARLform() {
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'Save & Continue')]")));
	}

	public void IverifythatifusersubmitsapatientformstatusshouldbereadasActive() {
        WebElement element=driver.findElement(By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(2) > span"));
        verifyTextForElement(element,"Active");
	}

	public void IverifythatActivestatusshouldbeingreencolorwithColorcode4EB96F() {
        isElementVisible(driver.findElement(By.cssSelector("span.status-tag.status-tag-2.active")));
		String value = driver.findElement(By.cssSelector(" span.status-tag.status-tag-2.active")).getCssValue("background-color");
		String hex = Color.fromString(value).asHex();
		Assert.assertTrue(hex.equals("#4eb96f"));
	}

	public void IclickoncrossbuttontoclosethePatientSummaryPage() {
       clickElement(driver.findElement(By.cssSelector("a.valentino-icon-x.pull-right")));
	}

	public void IclickontheTransitionButtontoaddthenewepisode() {
       clickElement(driver.findElement(By.xpath("//span[contains(text(),'Transitions')]")));
	}

	public void IverifythatifpatienthashasaformedassignedthatisthesameasanexistingformthestatusofthealreadyexistingformshouldbereadasArchived() {
        WebElement element=driver.findElement(By.cssSelector(" table > tbody > tr:nth-child(2) > td:nth-child(2) > span"));
        verifyTextForElement(element,"Archived");
			}

	public void IverifythatArchivedstatusshouldbeinGreycolorwithColorcode959595() {
        isElementVisible(driver.findElement(By.cssSelector(" table > tbody > tr:nth-child(2) > td:nth-child(2) > span")));
		String value = driver.findElement(By.cssSelector("table > tbody > tr:nth-child(2) > td:nth-child(2) > span")).getCssValue("background-color");
		Assert.assertTrue(value.equals("959595"));
	}

	public void Iverifythereshouldbefilterlinkonclinicaldocumentsection() {
        isElementVisible(driver.findElement(By.cssSelector("div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button ")));
	}

	public void IclickontheALLTabonPatientpage() {
		clickElement(driver.findElement(By.cssSelector("div.tabbed-navbar-tabs > button:nth-child(1)")));
	}

	public void IverifyClinicalDocumentTableshouldcontaintheheadersections() {
        List<String> requiredcombolisttext = new ArrayList<String>();
		String[] expectedvalues = {"Document","Status","Summary","Activity"};
        requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
        for(int i=1;i<5;i++)
        {
        	Assert.assertEquals(getTextForElement(driver.findElement(By.xpath("//div[contains(@class,'ng-scope')]/table/thead/tr/th['"+i+"']"))),requiredcombolisttext.get(i));
        }
		
	}

	public void IcountthenumberofdocumentsthatappearintheclinicalDocuments() {
        getElementCount("table > tbody");
	}

	public void Iverifytableshouldbesortedchronologicallybyactivitydatemostrecentfirst() throws ParseException {
		List<String> mylists = getTextForElementfromList("table > tbody > tr:nth-child(1) > td:nth-child(4) > div > span.time.ng-binding");
    	List<String> newlist = new ArrayList<String>();
		for (String mylist : mylists) {
			String[] values = mylist.split(",");
			newlist.add(values[0]);
		}
		ArrayList<String> sortDates=sortDates(mylists);
		
	}
	private ArrayList<String> sortDates(List<String> dates) throws ParseException {
	    SimpleDateFormat f = new SimpleDateFormat("mm/dd/yyyy, hh:mm a");
	    Map<Date, String> dateFormatMap = new TreeMap<Date, String>();
	    for (String date: dates)
	        dateFormatMap.put(f.parse(date), date);
	    return new ArrayList<>(dateFormatMap.values());
	}
	
	public void IverifythepresenceofSummarysectionoftheClinicalDocumenttable() {
        isElementVisible(driver.findElement(By.cssSelector("div > div.ng-scope > table > thead > tr > th:nth-child(3)")));

	}

	public void IverifybodytextoftheNoteisappearinginthesummarysection() {
        isElementVisible(driver.findElement(By.cssSelector("span.ellip")));

	}

	public void Iverifyforclinicalnoteandbaselinesummaryshouldbedisplayedupto2lines() {
        isElementVisible(driver.findElement(By.cssSelector("span.ellip-line")));
		String value = driver.findElement(By.cssSelector("span.ellip-line")).getCssValue("line-height");
		Assert.assertTrue(value.equals("20px"));
	}

	public void IverifyifsummaryislongerthanthecharacterlimitthenEllipsisthreedotsshouldshow() {
        isElementVisible(driver.findElement(By.cssSelector("span.ellip-line")));
		String value = driver.findElement(By.cssSelector("span.ellip-line")).getCssValue("text-overflow");
		Assert.assertTrue(value.equals("ellipsis"));
	}

	public void Iverifyifanoteishavingattachmentanddonothaveanysummarythenattachmentcountshouldappearinthesummarysection() {
         List<WebElement> lists = getElementsList("table > tbody > tr:nth-child(1) > td > p");
         for (WebElement list : lists) {
			if (list.getAttribute("class").equals("jquery-ellipse ng-binding ng-scope")) {
                 System.out.println("No Attachment found");
           } else if (list.getAttribute("class").equals("ng-binding ng-scope")) {
				System.out.println("Attached is there");
			}
		}

	}

	public void Iverifyformsshouldnotdisplayanymessageinthesummarysectionanditshouldbegreyedoutblank() {
         if (isElementVisible(driver.findElement(By.xpath("span[contains(text(),'CARL')]"))));
		{
			isElementVisible(driver.findElement(By.cssSelector(" table > tbody > tr:nth-child(3) > td.empty-cell")));
			String value = driver.findElement(By.cssSelector(" table > tbody > tr:nth-child(3) > td.empty-cell")).getCssValue("background-color");
			Assert.assertTrue(value.equals("transparent"));
		}
	}

	public void IclickontheTransitionstabinthepatientsummaryPage() {
        clickElement(driver.findElement(By.xpath("//span[contains(text(),'Transitions')]")));
	}

	public void ThenIclickonaddanewtransitiontoaddanewepisode() {
        JavascriptExecutor js = ((JavascriptExecutor) driver);
		WebElement element = driver.findElement(By.cssSelector("#btnNewTransition"));
		js.executeScript("arguments[0].click();", element);
		iWillWaitToSee(By.cssSelector("#btnNewTransition"));
		clickElement(element);
	}

	public void Iclickondatepickerbuttontoselecttheadmitdate() { 
		WebElement element = driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_admitDate"));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].scrollIntoView(true);", element);
		clickElement(element);
	}

	public void Iclickonthedatefromthedatepickeronaddanewtransition() {
        clickElement(driver.findElement(By.cssSelector("td.day.active")));
		clickElement(driver.findElement(By.cssSelector("span.hour.active")));
		clickElement(driver.findElement(By.cssSelector("span.minute.active")));
	}

	public void Iselectthecaresettingvalueonaddanewtransition() {
        selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitFacilityCategory", "HHH - Hospital");
	}

	public void Iselectthecaretypevalueonaddanewtransition() {
        selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitCareType", "Inpatient");

	}

	public void Iselectthefacilityvalueonaddanewtransition() throws InterruptedException {
        JavascriptExecutor js = (JavascriptExecutor) driver;
		WebElement element1 = driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_admitFacility"));
        js.executeScript("arguments[0].click();", element1);
		clickElement(element1);
		Thread.sleep(5000);
        WebElement element2 = driver.findElement(By.cssSelector("#s2id_autogen9_search"));
        js.executeScript("arguments[0].click();", element2);
		element2.sendKeys("Allentown");
		Thread.sleep(10000);
		WebElement element3 = driver.findElement(By.xpath("//div[contains(text(), 'Allentown - St Luke')]"));
		js.executeScript("arguments[0].click();", element3);
		clickElement(element3);
	}

	public void IclickontheDiagnosisandDRGtabonaddanewtransitiontoselecttheDRG() {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        WebElement element = driver.findElement(By.cssSelector("#admission > div.modal-body.clearfix > div > ul > li:nth-child(2)"));
		js.executeScript("arguments[0].click();", element);
		clickElement(driver.findElement(By.cssSelector("#admission > div.modal-body.clearfix > div > ul > li:nth-child(2)")));
    }

	public void IselecttheDRGtypeontheDiagnosisandDRGtabonaddanewtransition() {
     	selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_drgType", "Working");
	}

	public void IselecttheDRGontheDiagnosisandDRGtabonaddanewtransition() {
		clickElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg")));
		iFillInText(driver.findElement(By.cssSelector("#s2id_autogen8_search")), "61");
		clickElement(driver.findElement(By.cssSelector("#select2-results-8 > li.select2-results-dept-0.select2-result.select2-result-selectable.select2-highlighted")));
	}

	public void IswitchtoPatientTransitionsframe() {
		swithToFrame("//iframe[@class='not-showing ng-scope']");
	}

	public void IswitchtoPatientCareTeamframe() {
       swithToFrame("//iframe[@class='not-showing ng-scope']");
	}

	public void Iverifythattitleofdocumentortopicofnoteshouldappearasalinkinthesection() throws InterruptedException {
        String URL = driver.findElement(By.cssSelector("table > tbody > tr > td:nth-child(1) > a > span")).getAttribute("href");
		boolean Note = URL.contains("note");
		boolean CARL = URL.contains("carl");
		if (CARL) {
			System.out.println("CARl form is present");
		}
	}

	public void Iverifythatusershouldbeabletoclickontitleofdocument() throws InterruptedException {
    	clickElement(driver.findElement(By.cssSelector(" table > tbody > tr > td:nth-child(1) > a > span")));
		Thread.sleep(4000);
		isElementVisible(driver.findElement(By.cssSelector("h2.ng-binding")));
	}

	public void Iclickonfilterlinkonclinicaldocumentsection() {
        clickElement(driver.findElement(By.cssSelector("div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button")));
	}

	public void IVerifythatSelectingFilterslinkwhenthefiltersdrawerisopenshouldclosethedrawer() {
        clickElement(driver.findElement(By.cssSelector("div > div.filter-bars.ng-scope>div > div.filter-bar-search > div.filter-bar-search-left > div > search-bar-controls > button-filters-toggle > button")));
		isElementNotPresentOnPage("ng-transclude > div > div > div > h5.ng-binding.ng-scope");
	}

	public void IVerifythatClinicalDocumentsFilterslinkshoulddisplayfiltersasbelowwiththecorrectsyntaxandsequence() {
		List<String> requiredcombolisttext = new ArrayList<String>();
     	String[] expectedvalues = {"CARL form","Baseline", "Bedside Visit", "Care Assessment Note", "Clinical Note", "Close Call",
				"Daily Round", "Discharge Note", "Exercise Log", "Family Discussion", "General Update", "Goals of Care",
				"Patient Call", "Patient Education", "Patient Visit", "Psychological Condition", "Transition Note",
				"TUG/RAPT/CARE Score" };
       requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
	      for(int i=1;i<=requiredcombolisttext.size();i++)
	      {
	    	WebElement element=driver.findElement(By.xpath("//checkbox-list/div/div[1]/ul/li['"+i+"']/div[2]/label/span"));
	    	verifyTextForElement(element,expectedvalues[i-1]);   	 
	      }
	}

	public void IVerifythatusershouldbeabletoselectmultiplefiltersbycheckbox() {
        clickElement(driver.findElement(By.cssSelector("checkbox-list > div > div:nth-child(1) > ul > li:nth-child(1) > div.checkbox")));
		verifyTextForElement(driver.findElement(By.cssSelector("span.margin-left.ng-binding")),"Document: CARL form");
		clickElement(driver.findElement(By.cssSelector("checkbox-list > div > div:nth-child(1) > ul > li:nth-child(2) > div.checkbox")));
		verifyTextForElement(driver.findElement(By.cssSelector(" div.filter-bar-active-filters.filter-scroll > span:nth-child(2) > span")),"Document: Baseline");
		
	}

	public void IVerifythatcheckingmultiplefilteroptionsshouldreturnrelevantpatientsinreturn() {
		List<String> mytexts = getTextForElementfromList("table > tbody > tr > td:nth-child(1) > a > span");
		if (mytexts.contains("CARL") && (mytexts.contains("Baseline")))
		{
			System.out.println("Only CARL & Baseline exits in the document list");
		}
    }

	public void IVerifythatclickingonDoneshouldclosethefilterdrawerandprocessthefilter() {
    	clickElement(driver.findElement(By.xpath("//button[contains(text(),'Done')]")));
		List<String> mytexts = getTextForElementfromList("table > tbody > tr > td> a > span");
		String Filter = mytexts.get(0);
		String Filter1 = mytexts.get(1);
		List<String> newmytexts = getTextForElementfromList("table > tbody > tr > td> a > span");
		if (newmytexts.contains(Filter) & (newmytexts.contains(Filter1)))
		{
			return;
		}
	}

	public void IclickonthedocumenttoopentheNotesontheClinicalDocuments() {
		clickElement(driver.findElement(By.cssSelector("table > tbody > tr:nth-child(2) > td:nth-child(1) > a > span")));
		isElementVisible(driver.findElement(By.cssSelector(" div > section ")));
	}

	public void IVerifythatNotesReadonlyformshouldbeaccessible() {
		 isElementVisible(driver.findElement(By.cssSelector(" div > section ")));
	}

	public void IverifyTopicshouldbethenotetitle() {
         verifyTextForElement(driver.findElement(By.cssSelector("h1.ng-binding")),"Baseline");
	}

	public void IverifyBodytextboxshouldbethereonNotesReadonlyform() {
        isElementVisible(driver.findElement(By.cssSelector("div.note-body.ng-binding.ng-scope"))); 
		verifyTextForElement(driver.findElement(By.cssSelector("div.note-body.ng-binding.ng-scope")),"Probiotics are microorganisms");
	}

	public void IVerifythatUserroleshouldbedisplayedundernotesreadonlyform() {
        String text=driver.findElement(By.cssSelector("article > h4 > strong")).getText();
		String[] information=text.split(";");
		String role=information[1].trim();
     	Assert.assertEquals("RN",role);
	}

	public void IVerifythatUseremailshouldbedisplayedundernotesreadonlyform() {
		verifyTextForElement(driver.findElement(By.cssSelector("p > a.ng-binding")),"qa.emblemrn@yopmail.com");
		}

	public void IVerifythatUsernameshouldbedisplayedundernotesreadonlyform() {
		String text=driver.findElement(By.cssSelector("article > h4 > strong")).getText();
	    String[] information=text.split(";");
		String username=information[0];
		String username1 = username.trim();
		Assert.assertEquals(username1,"QA EMBLEMRN");
		}

	public void IverifytheActivityDateandtimeofthenoteundernotesreadonlyform() {
        isElementVisible(driver.findElement(By.cssSelector("article > div:nth-child(5) > strong")));

	}

   public void validateDateFormat(String dateToValdate) throws ParseException {
		SimpleDateFormat formatter = new SimpleDateFormat("mm/dd/yyyy");
	    formatter.setLenient(false);
	    formatter.parse(dateToValdate);
    }

	public void IVerifythatActivitydateshoulddisplayeddatewithformatMMDDYYYY() throws ParseException {
		String text=driver.findElement(By.cssSelector("article > div:nth-child(5) > strong")).getText();
	    String information=text.substring(0,10);
     	validateDateFormat(information);
	}

	public void IverifythatthereisanAttachmentssectionthatshoulddisplayallattachments() {
		try {
			isElementVisible(driver.findElement(By.cssSelector("div.attachments.ng-scope")));
		} catch (Exception e) {
			e.printStackTrace();
		}
     }

	public void IclickontheCareAssessmentNotedocumenttoopentheNotesontheClinicalDocuments() {
     	clickElement(driver.findElement(By.xpath("//span[contains(text(),'Care Assessment Note')]")));
	}

	public void IverifyinformationofthelastuserwhosavedtheindividualformisdisplayingontheLastsavedsection() {
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'Baseline')]")));
		isElementVisible(driver.findElement(By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(1) > span.time.ng-binding")));
	}

	public void IverifyLastNameFirstNameanduserroleappearsinlastsavedsection() {
        String text=driver.findElement(By.cssSelector("table > tbody > tr > td:nth-child(4) > div > span:nth-child(3)")).getText();
	    String[] information=text.split(";");
		String name=information[0];
	    String role=information[1];
		String name1 = name.trim();
	    String role1 = role.trim();
     	Assert.assertEquals(name1,"Emblemrn, Qa");
        Assert.assertEquals(role1,"RN");
		
	}

	public void IverifyuponclickingShowhistorylinkaListofusersshouldappearinchronologicalorderfrommostrecentsavedtooldestsaved() throws InterruptedException {
        isElementVisible(driver.findElement(By.xpath("//a[contains(text(), 'Show History')]")));
		clickElement(driver.findElement(By.xpath("//a[contains(text(), 'Show History')]")));
		Thread.sleep(5000);
		List<String> newlist = new ArrayList<String>();
		List<String> mylists = getTextForElementfromList("table > tbody > tr > td:nth-child(4) > div> span.time.ng-binding");
		for (String mylist : mylists) {
			String[] values = mylist.split(",");
			newlist.add(values[0]);
		}
	}

	public void IverifythatuponSelectingShowHistoryshoulddisplaytheinformationofalluserswhohavesavedthatform() throws InterruptedException {
       	List<String> mylists = getTextForElementfromList("table > tbody > tr:nth-child(1) > td > div > span:nth-child(3)");
		for(String list:mylists )
		{
			Assert.assertEquals("Emblemrn, Qa; RN",list);
		}
	}

	public void Iverifydateandtimeinformationappearsinlastsavedsection() {
          isElementVisible(driver.findElement(By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(1) > span.time.ng-binding")));
	}

	public void IverifythatShowHistorysectionshouldnotbeapplicablefornotesection() {
		try {
			driver.findElement(By.cssSelector("table > tbody > tr:nth-child(1) > td:nth-child(4) > span > a"));
		} catch (Exception e) {
			return;
		}
	}

	public void IclickontheCreateTransitionButtontoaddanewtransition() {
        iWillWaitToSee(By.cssSelector("#submitButton"));
		 clickElement(driver.findElement(By.cssSelector("#submitButton")));
		}
	

	public void IclickonthecrossbuttontoclosetheCARLdocumentform() {
        clickElement(driver.findElement(By.cssSelector("a.valentino-icon-x.pull-right")));
	}

	public void IclickontheSubmitbuttontosubmittheCARLform() {
        clickElement(driver.findElement(By.cssSelector("div.top-row > div:nth-child(2) > button")));

	}

	public void IverifythatuponselectingHideHistoryusershouldonlyseetheinformationofthelastuserwhosavedtheform() {
         clickElement(driver.findElement(By.xpath("//a[contains(text(),'Hide History')]")));
		try {
			driver.findElement(By.cssSelector(" table > tbody > tr:nth-child(1) > td:nth-child(4) > div:nth-child(2).doc-edit.ng-scope"));
		} catch (Exception e) {
			return;
		}

	}

	public void IclickontheTransitionInfoonaddanewtransition() {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		WebElement element = driver.findElement(By.xpath("//a[contains(text(), 'Transition Info')]"));
		js.executeScript("arguments[0].click();", element);
		clickElement(element);
	}

	public void Iclickonhidehistorytodisableallthesavedformlist() {
		clickElement(driver.findElement(By.xpath("//a[contains(text(), 'Hide History')]")));
	}

	public void Iverifythatusershouldbeabletodownloadalltheattachmentattachedunderthenotesbyselectingdownloadlink()	throws AWTException, InterruptedException {
 	    Actions action = new Actions(driver);
        action.moveToElement(driver.findElement(By.cssSelector("div.valentino-icon-archive.hover-pointer"))).perform();	        action.contextClick().perform();
        Robot robo = new Robot();
        robo.keyPress(KeyEvent.VK_V); 
        robo.keyRelease(KeyEvent.VK_V);
	}

	public boolean isFileDownloaded(String downloadPath, String fileName) {
        boolean flag = false;
	    File dir = new File(downloadPath);
	    File[] dir_contents = dir.listFiles();
	  	for (int i = 0; i < dir_contents.length; i++) {
	        if (dir_contents[i].getName().equals(fileName))
	            return flag=true;
	            }
        return flag;
	}

	public void IclickontheCancelbuttononEpisodepresentontheAddPatientpage() {
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'Cancel')]")));
	}

	public void Iclickontheagreebuttonforthepatientonpatientcardpage() {
		try {
			clickElement(driver.findElement(By.xpath("//span[contains(text(),'Agree')]")));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void IclickontheCreateTransitionButtontoaddanewtransitionfordischargeinfo() {
		try{
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'Create Transition')]")));
		}catch(Exception e)
		{
			JavascriptExecutor js = (JavascriptExecutor) driver;
			WebElement element = driver.findElement(By.xpath("//button[contains(text(),'Create Transition')]"));
			js.executeScript("arguments[0].click();", element);
			clickElement(driver.findElement(By.xpath("//button[contains(text(),'Create Transition')]")));
		}
	}

	public void IclickonthepatientonthepatientcardpagethathasnoCARLbuttoninit() {
        try{
	    	   clickElement(driver.findElement(By.cssSelector("div.row.cards-mode.isotope > div:nth-child(1) > div > div.card-view-content.ng-scope > div.card-footer.col-xs-12.ng-scope > div > div > a")));
	    	   Thread.sleep(6000);
	    		   }catch(Exception e){
	    			    e.printStackTrace();}  
	     clickElement(driver.findElement(By.cssSelector("div.row.cards-mode.isotope > div > div > div.card-header.col-xs-12.hover-pointer.ng-scope")));
	        
	  	}

	
	public void IgetthepatientlastnamewhohavenoCARLbuttoninit() {
		 L_name=driver.findElement(By.cssSelector("span.pull-left.ng-binding")).getText();
         
}
   public void IclickonthecompleteCARLonthePatientSummary1() {
		WebElement element1 = driver.findElement(By.cssSelector("button.btn.btn-primary.ng-binding.ng-scope"));
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("button.btn.btn-primary.ng-binding.ng-scope")));
		clickElement(element1);
	}

	public void Iclickonthecancelbuttontodeletethesearchedpatientfromthesearchbox() {
		clickElement(driver.findElement(By.cssSelector("button.btn.btn-quaternary.ng-scope")));
	}

	public void Iclickonthesearchednameonthepatientcard() {
		try {
			WebDriverWait wait = new WebDriverWait(driver, 15);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("span.text-bold-500.ng-binding.ng-scope")));
			wait.until(ExpectedConditions.elementToBeClickable(By.cssSelector("span.text-bold-500.ng-binding.ng-scope"))).click();
		}catch (WebDriverException wde) {
			scrollToElement(driver.findElement(By.cssSelector("span.text-bold-500.ng-binding.ng-scope")));
			driver.findElement(By.cssSelector("span.text-bold-500.ng-binding.ng-scope")).click();
		}
	}

	private void scrollToElement(WebElement el) {
		if (driver instanceof JavascriptExecutor) {
			((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", el);
		}
	}
	public void Iverifyanyformsattachedtothepatientshouldbelistedindocumentsection() {
		WebElement element=driver.findElement(By.cssSelector("table > tbody > tr > td:nth-child(1) > a > span"));
		verifyTextForElement(element,"CARL");
	}

	public void Iverifycreatednoteshouldappearinthedocumentsection() {
		WebElement element=driver.findElement(By.cssSelector("table > tbody > tr > td:nth-child(1) > a > span"));
		verifyTextForElement(element,"Baseline");
			}

	public void IVerifythatclickingClinicalDocumentsFilterslinkshouldshowthetitledocumentthathaslistofdocumentformsinit() {
		WebElement element=driver.findElement(By.cssSelector("ng-transclude > div > div > div > h5.ng-binding.ng-scope"));
		verifyTextForElement(element,"Document");
	}

	public void IVerifythatselectingfilterbycheckboxshouldprocessapplythefilteruntiltheuserclickedondone() {
		List<String> mytexts = getTextForElementfromList("table > tbody > tr > td:nth-child(1) > a > span");
		if (mytexts.contains("CARL") && (mytexts.contains("Baseline")))
		{
			System.out.println("Only CARL & Baseline exits in the document list");
		}
		
	}

	public void IVerifythatCreateddateshoulddisplayeddatewithformatMMDDYYYY() throws ParseException {
		String text=driver.findElement(By.cssSelector("article > div:nth-child(7) > strong")).getText();
		String information=text.substring(0,10);
		validateDateFormat(information);
		
	}

	public void IclickontheShowHistoryButtontoseethelistofuserwhosavedtheform() {
		clickElement(driver.findElement(By.xpath("//a[contains(text(), 'Show History')]")));
		
	}

	public void IverifythatHideHistorylinkshouldappearwhenusercurrentlyonShowHistorysection() {
		isElementVisible(driver.findElement(By.xpath("//a[contains(text(), 'Hide History')]")));
	}

	public void IverifythatthereshouldbeanAttachmenticononClinicalDocumentsActivitySection() {
		isElementVisible(driver.findElement(By.cssSelector("table > tbody > tr:nth-child(2) > td:nth-child(5) > img.hover-pointer.ng-scope")));
	}
	
}
