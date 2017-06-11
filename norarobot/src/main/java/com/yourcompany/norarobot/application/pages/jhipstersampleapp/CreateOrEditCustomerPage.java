package com.yourcompany.norarobot.application.pages.jhipstersampleapp;

import static com.yourcompany.norarobot.utils.NoraRobotContext.JHIPSTERSAMPLEAPP_KEY;

import org.apache.log4j.Logger;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.yourcompany.norarobot.utils.NoraRobotContext;

import noraui.application.page.Page;
import noraui.utils.Context;
import noraui.utils.Utilities;

public class CreateOrEditCustomerPage extends Page {

    private static Logger logger = Logger.getLogger(CreateOrEditCustomerPage.class.getName());

    public final PageElement title = new PageElement("-title", "Title of Customers form");
    public final PageElement firstName = new PageElement("-first_name_field", "First Name field");
    public final PageElement lastName = new PageElement("-last_name_field", "Last Name field");
    public final PageElement saveButton = new PageElement("-save_button", "Save button");

    public CreateOrEditCustomerPage() {
        super();
        this.application = JHIPSTERSAMPLEAPP_KEY;
        this.pageKey = "APP_CUSFORM";
        this.callBack = Context.getCallBack(NoraRobotContext.CLOSE_ALL_WINDOWS_AND_SWITCH_TO_JHIPSTERSAMPLEAPP_HOME);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public boolean checkPage(Object... elements) {
        try {
            Context.waitUntil(ExpectedConditions.textToBePresentInElementLocated(Utilities.getLocator(this.title), "Create or edit a Customer"));
            return true;
        } catch (Exception e) {
            logger.error("HTML title Exception", e);
            return false;
        }
    }

}
