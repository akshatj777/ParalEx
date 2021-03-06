package com.remedy.userAdmin;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.remedy.baseClass.BaseClass;

import edu.emory.mathcs.backport.java.util.Arrays;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * Created by salam on 7/30/15.
 */

public class CreateUserPage extends BaseClass{

	public final static DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	public final static Date timestamp = new Date();
	public final static String time = df.format(timestamp);

    public CreateUserPage(WebDriver driver){
        super(driver);
    }

    public void iClickOrganizationalField() {
        clickElement(driver.findElement(By.xpath("//div[@name='orgrole']/div[@placeholder='Select Role']/span")));
    }

    public void iTurnOffShareFile(){
   		if((isElementPresentOnPage(By.xpath("//div/label[@for='sharefile']")))){
   			clickElement(driver.findElement(By.xpath("//div/label[@for='sharefile']")));
   		}else{
   			return;
   		}
    	
    }

    public void iClickPayerField() {
    	boolean value= isElementPresentOnPage(By.xpath("//div[@placeholder='Select']/span"));
    	if(value==true){
    	clickElement(driver.findElement(By.xpath("//div[@placeholder='Select']/span")));
    	}
    }

    public void selectOrganizationalRole(String desc){
        getTextForElementfromList(".ui-select-choices-row-inner");
        selectElementByDesc(".ui-select-choices-row-inner", desc);
    }
    
    public void selectPayerFromData(String desc){
    	boolean value= isElementPresentOnPage(By.cssSelector(".ui-select-choices-row-inner"));
    	if(value==true){
        selectElementByDesc(".ui-select-choices-row-inner", desc);
    	}
    }
    
    public void iVerifyTheFirstPayerFieldAddedUnderPermissionsSection(){
    	isElementVisible(driver.findElement(By.xpath("//label[text()='Stamford Hospital']")));
    }
    
    public void iVerifyTheSecondPayerFieldAddedUnderPermissionsSection(){
    	isElementVisible(driver.findElement(By.xpath("//label[text()='RP Payer Test A']")));
    }

    public void iEnterNPI(String text){
    	 if ("".equals(text)){
    		 return;
    	}
    	else{
        iFillInText(driver.findElement(By.xpath("//div/div/input[@placeholder='NPI']")), text);
    	}
    }

    public void iEnterFirstName(String text){
        iFillInText(driver.findElement(By.xpath("//div/div/input[@name='firstName']")), text);
    }

    public void iEnterLasttName(String text) {
        iFillInText(driver.findElement(By.xpath("//div/div/input[@name='lastName']")), text);
    }

    public final static String iGenerateEmail(String text) {
        final String mail = text + time;
        final String email = "user" + mail + "@mailinator.com";
        return email;
    }

    public void iEnterEmail(String text) {
        iFillInText(driver.findElement(By.xpath("//div/div/input[@name='email']")), iGenerateEmail(text));
    }

    public void iEnterEmailForLoginAfterPasswordMailVerification(String text) {
        iFillInText(driver.findElement(By.xpath("//input[@type='email']")), iGenerateEmail(text));
    }

    public void iEnterPasswordFieldForLoginAfterPasswordVerification(String Password) {
        iFillInText(driver.findElement(By.name("password")), Password);
    }

    public void iEnterPhone(String text) {
    	iWillWaitToSee(By.xpath("//input[@placeholder='Phone']"));
        iFillInText(driver.findElement(By.xpath("//input[@placeholder='Phone']")), text);
    }

    public void iEnterTheEmailToGeneratePassword(String text) {
        iFillInText(driver.findElement(By.xpath("//input[@type='email']")), iGenerateEmail(text));
    }

    public void iClickOnSendEmailButton() {
        clickElement(driver.findElement(By.xpath("//button[@type='submit']")));
    }

    public void iClickOnTheEmailReceivedToChangeYourPassword() {
        clickElement(driver.findElement(By.xpath("//div[contains(text(),' Remedy QA')]")));
    }

    public void iClickOnChangeMyPasswordLink() {
        driver.switchTo().frame(driver.findElement(By.xpath("//*[@id='publicshowmaildivcontent']")));
        clickElement(driver.findElement(By.xpath("//a[contains(text(),'Change my password')]")));
    }

    public void iSwitchToFrameUnderReceivedMailContent(){
    	driver.switchTo().frame(driver.findElement(By.xpath("//*[@id='publicshowmaildivcontent']")));
    }

    public void iClickOnChangeMyPasswordLinkUnderRecievedMailContent() {
        clickElement(driver.findElement(By.xpath("//a[contains(text(),'Change my password')]")));
    }

    public void iClickHealthSystemField() {
    	delay();
    	boolean value = isElementPresentOnPage(By.xpath("//div[@name='participantSelect']/div[@placeholder='Search']/span"));
    	if(value==true){
        clickElement(driver.findElement(By.xpath("//div[@name='participantSelect']/div[@placeholder='Search']/span")));
    	}
    }

    public void iEnterHealthSystemSerachText(String text) {
    	boolean value = isElementPresentOnPage(By.xpath("//div[@placeholder='Search']/input[@type='search']"));
    	if(value==true){
        iFillInText(driver.findElement(By.xpath("//div[@placeholder='Search']/input[@type='search']")), text);
    	}
    }

    public void iSelectHealthSystem(String desc) {
    	boolean value = isElementPresentOnPage(By.cssSelector(".ui-select-choices-row-inner"));
    	if(value==true){
    		iWillWaitToSee(By.cssSelector(".ui-select-choices-row-inner"));
        clickElement(driver.findElement(By.cssSelector(".ui-select-choices-row-inner")));
    	}
    }

    public void iShouldSeeDifferentTilesForDifferentUserRole(String role) {
        isElementVisible(driver.findElement(By.cssSelector(".title>p")));
    }

    public void iClickOnECTwoTileUnderSpecificUserLoginPage(String text,String role){
    	if(text.isEmpty()!=true){
    		Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='title']/p[text()='"+text+"']")));
    	 	  clickElement(driver.findElement(By.xpath("//div[@class='title']/p[text()='"+text+"']")));
    	 	  delay();
    	 	  clickElement(driver.findElement(By.cssSelector(".btn.valentino-icon-table")));
    	 	  driver.navigate().back();
    	}
    }

    public void iClickCreateButton() {
    	iWillWaitToSee(By.cssSelector(".btn.btn-primary"));
        clickElement(driver.findElement(By.cssSelector(".btn.btn-primary")));
        delay();
    }

    public void iVerifyOrganizationalRoleRequiredMessageText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[1]/div[2]/span/span")), text);
    }

    public void iVerifyFirstNameRequiredText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[3]/div/span/span")), text);
    }

    public void iVerifyLastNameRequiredText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[4]/div/span/span")), text);
    }

    public void iVerifyEmailRequiredText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[2]/div/span/span")), text);
    }

    public void iVerifyPhoneValidationMessageText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[5]/div/span/span")), text);
    }

    public void iVerifyNPIValidationMessageText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset[1]/div/div[6]/div/span/span")), text);
    }

    public void iClickTryAgainButton() {
        clickElement(driver.findElement(By.cssSelector(".btn.btn-secondary")));
    }

    public void iverifyCreateUserPageHeader(String header) {
    	iWillWaitToSee(By.cssSelector(".user-form-general>h3"));
        verifyTextForElement(driver.findElement(By.cssSelector(".ng-scope>h2")), header);
    }

    public void iVerifyTheDropdownListForUser() {
        isElementVisible(driver.findElement(By.cssSelector(".align-right>ul")));
    }

    public void iEnterProviderSerachText(String text) {
    	iWillWaitToSee(By.xpath("//div[@class='table-select-search']//input"));
        clickElement(driver.findElement(By.xpath("//div[@class='table-select-search']//input")));
        iFillInText(driver.findElement(By.xpath("//div[@class='table-select-search']//input")), text);
    }

   public void iClickOnEpisodesTileUnderSpecificUserLoginPage(String text) throws InterruptedException{
	   if(driver.findElements(By.xpath("//div[@class='title']/p[text()='"+text+"']")).contains(text)){
		   Thread.sleep(3000);
		   clickElement(driver.findElement(By.xpath("//p[text()='Episodes']")));
		   switchToNewWindow();
		   Thread.sleep(6000);
		   isElementVisible(driver.findElement(By.cssSelector(".page-title.row")));
		   switchBacktoOldWindow();
   	}else{
   		return;
   	}
   }
   
   public void iCheckAllProviderForTheHealthSystem() {
	   iWillWaitToSee(By.cssSelector(".select-all-master>.checkbox"));
   	delay();
       clickElement(driver.findElement(By.cssSelector(".select-all-master>.checkbox")));
   }	

    public void iCheckTheProviderForTheHealthSystem(String facility,String provider) {
    	delay();
    	if(provider.contains("*")){
    	iWillWaitToSee(By.cssSelector(".select-all-master>.checkbox"));
        clickElement(driver.findElement(By.cssSelector(".select-all-master>.checkbox")));
    	}
    	else {
    		delay();
    	iWillWaitToSee(By.xpath("//label//span[contains(text(),'"+facility+"')]"));
    	clickElement(driver.findElement(By.xpath("//label//span[contains(text(),'"+facility+"')]")));	
    	}
    }

    public void iclickAllAppsfortheRole() {
    	iWillWaitToSee(By.xpath("//div[@class='row']/div/ul/li/div/label"));
        clickAllElementofAlistbyXpath("//div[@class='row']/div/ul/li/div/label");
    }
    
    public void iSelectTileForTheRole(String tile){
    	if(tile.isEmpty()!=true){
    		clickElement(driver.findElement(By.xpath("//label[@for='"+tile+"']")));
    	}
    }

    public void iClickOnContinueToDashboardMessage() {
        clickElement(driver.findElement(By.xpath("//button[text()='Continue to my dashboard']")));
    }

   public void iVerifyTheHeaderAfterClickingTheEpisodesTile(){
	   isElementVisible(driver.findElement(By.cssSelector(".page-title.row")));
   }
   
   public void iClickOnEpisodesTwoTileUnderSpecificUserLoginPage(String text, String payer){
	   if((text.isEmpty()!=true) && ((payer.equals("Medicare")))){
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='"+text+"']")));
		   clickElement(driver.findElement(By.xpath("//p[text()='"+text+"']")));
		   delay();
		   isElementVisible(driver.findElement(By.xpath("//button[@href='#/patient/add']")));
		   driver.navigate().back();
	   }else if((text.isEmpty()!=true) && ((payer.equals("Emblem Health")))){
		   clickElement(driver.findElement(By.xpath("//p[text()='"+text+"']")));
		   delay();
		   Assert.assertFalse(isElementPresentOnPage(By.xpath("//button[@href='#/patient/add']")));
		   driver.navigate().back();
	   }
   }
  
   public void iVerifyTheHeaderAfterClickingTheEpisodes2Tile(){
	   clickElement(driver.findElement(By.xpath("//h1[text()='Patients']")));
   }
   
   public void iTurnOffTheLessonsTileApplication(){
	   clickElement(driver.findElement(By.xpath("//div/label[@for='lessons']")));
   }
   
   public void iClickOnEpisode1TileUnderSpecificUserLoginPage(String text, String userrole){
	   if(text.isEmpty()!=true){
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='"+text+"']")));
		   iWillWaitToSee(By.xpath("//p[text()='"+text+"']"));
		   clickElement(driver.findElement(By.xpath("//p[text()='"+text+"']")));
		   switchToNewWindow();
		   delay();
		   isElementPresentOnPage(By.cssSelector(".username"));
		   clickElement(driver.findElement(By.cssSelector("#patientsListOpenClose")));
		   clickElement(driver.findElement(By.xpath("//a[@href='/secure/pn/patientslist']")));
		   delay();
		   clickElement(driver.findElement(By.xpath("//div[1]/div[2]/div[4]/a[1]")));
		   clickElement(driver.findElement(By.xpath("//div[1]/div[2]/div[4]/ul/li[5]/a")));
		   delay();
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//textarea[contains(text(),'"+userrole+"')]")));
		   switchBacktoOldWindow();
	   }
   }

   public void iClickOnInstituteTileUnderSpecificUserLoginPage(String text){
	   if(text.isEmpty()!=true){
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='"+text+"']")));
		   clickElement(driver.findElement(By.xpath("//p[text()='"+text+"']")));
		   switchToNewWindow();
		   delay();
		   Assert.assertTrue(isElementPresentOnPage(By.cssSelector(".navbar-header")));
		   switchBacktoOldWindow(); 
	   }
   }
   
   public void iClickOnReportsTileUnderSpecificUserLoginPage(String text){
	   if(text.isEmpty()!=true){
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='"+text+"']")));
		   clickElement(driver.findElement(By.xpath("//p[text()='"+text+"']")));
		   iWillWaitToSee(By.xpath("//div/div/div/div/label"));
		   clickAllElementofAlistbyXpath("//div/div/div/div/label");
		   delay();
		   driver.navigate().back(); 
	   }
    }
   
   public void iClickOnRemedyUTileUnderSpecificUserLoginPage(String text){
	   if(text.isEmpty()!=true){
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='"+text+"']")));
		   clickElement(driver.findElement(By.xpath("//p[text()='"+text+"']")));
		   delay();
		   switchToNewWindow();
		   isElementVisible(driver.findElement(By.cssSelector(".modal-body")));
		   delay();
		   switchBacktoOldWindow();
   	}
   }
   
   public void iClickOnPhysicanConnectTileUnderSpecificUserLoginPage(String text){
	   if(text.isEmpty()!=true){
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='"+text+"']")));
		   clickElement(driver.findElement(By.xpath("//p[text()='"+text+"']")));
		   delay();
		   driver.navigate().back(); 
	   }
   }
    
   public void iClickOnInternalSupportOptionFromDropdownUnderSpecificUserLoginPage(String text){
	   clickElement(driver.findElement(By.cssSelector(".valentino-icon-profile")));
	   if(text.isEmpty()!=true){
		     
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//a[contains(text(),'"+text+"')]")));
		   clickElement(driver.findElement(By.xpath("//a[contains(text(),'"+text+"')]")));
		   switchToNewWindow();
		   delay();
		   iWillWaitToSee(By.cssSelector("#cv-content"));
		   isElementVisible(driver.findElement(By.cssSelector("#cv-content")));
		   switchBacktoOldWindow(); 
   	}
   }
   
   public void iSelectSupportOptionFromTheDropdownUnderSpecificUserLoginPage(String text){
	   if(text.isEmpty()!=true){
		   iWillWaitToSee(By.xpath("//a[contains(text(),'"+text+"')]"));
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//a[contains(text(),'"+text+"')]")));
		   clickElement(driver.findElement(By.xpath("//a[contains(text(),'"+text+"')]")));
		   switchToNewWindow();
		   delay();
		   iWillWaitToSee(By.cssSelector("#cv-content"));
		   isElementVisible(driver.findElement(By.cssSelector("#cv-content")));
		   //isElementVisible(driver.findElement(By.cssSelector("#customer-signup-link")));
		   switchBacktoOldWindow(); 
   	}  
   }
   
   public void iNavigateBackToSpecificUserLoginPage(){
	   driver.navigate().back();
   }
   
   public void iVerifyTheInternalSupportProductTileForSelectedUserRole(String text) {
	 	if(text.isEmpty()!=true){
   		verifyTextForElementfromList(".checkbox.checkbox-single.ng-not-empty.ng-valid>label>span", text);
    	}
   }
  
   
   public void iVerifyTheUserroleUnderEc1DashboardPageAfterSpecificUserLogin(){
	   isElementPresentOnPage(By.cssSelector(".username"));
	   clickElement(driver.findElement(By.cssSelector("#patientsListOpenClose")));
	   clickElement(driver.findElement(By.xpath("//a[@href='/secure/pn/patientslist']")));
	   delay();
	   clickElement(driver.findElement(By.xpath("//div[1]/div[2]/div[4]/a[1]")));
	   clickElement(driver.findElement(By.xpath("//div[1]/div[2]/div[4]/ul/li[5]/a")));
	   delay();
	   Assert.assertTrue(isElementPresentOnPage(By.xpath("//textarea[contains(text(),'ROLE_ADMIN')]")));
   }
   
   public void iVerifyTheInstituteDashboardPageAfterClickingOnInstituteTileUnderSpecificUserLoginPage(){
	   Assert.assertTrue(isElementPresentOnPage(By.cssSelector(".navbar-header")));
   }
}
