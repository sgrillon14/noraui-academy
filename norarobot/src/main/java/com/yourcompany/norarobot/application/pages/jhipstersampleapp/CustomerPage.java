package com.yourcompany.norarobot.application.pages.jhipstersampleapp;

import static com.yourcompany.norarobot.utils.NoraRobotContext.JHIPSTERSAMPLEAPP_KEY;

import org.apache.log4j.Logger;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.yourcompany.norarobot.utils.NoraRobotContext;

import noraui.application.page.Page;
import noraui.utils.Context;

public class CustomerPage extends Page {

    private static Logger logger = Logger.getLogger(CustomerPage.class.getName());

    public final PageElement createNewCustomerButton = new PageElement("-create_new_customer_button", "Create new Customer button");
    public final PageElement createMessage = new PageElement("-create_message", "Create message");
    public final PageElement modalRender = new PageElement("-modal_render");

    private static final String TITLE_PAGE = "Customers";

    public CustomerPage() {
        super();
        this.application = JHIPSTERSAMPLEAPP_KEY;
        this.pageKey = "APP_CUS";
        this.callBack = Context.getCallBack(NoraRobotContext.CLOSE_ALL_WINDOWS_AND_SWITCH_TO_JHIPSTERSAMPLEAPP_HOME);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public boolean checkPage(Object... elements) {
        try {
            Context.waitUntil(ExpectedConditions.titleIs(TITLE_PAGE));
            return true;
        } catch (Exception e) {
            logger.error("HTML title Exception", e);
            return false;
        }
    }

}
