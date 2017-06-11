package com.yourcompany.norarobot.application.steps.jhipstersampleapp;

import org.apache.log4j.Logger;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.yourcompany.norarobot.application.model.jhipstersampleapp.Customer;
import com.yourcompany.norarobot.application.model.jhipstersampleapp.Customers;
import com.yourcompany.norarobot.application.pages.jhipstersampleapp.CreateOrEditCustomerPage;
import com.yourcompany.norarobot.application.pages.jhipstersampleapp.CustomerPage;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import noraui.application.page.Page;
import noraui.application.steps.Step;
import noraui.exception.FailureException;
import noraui.exception.Result;
import noraui.exception.TechnicalException;
import noraui.utils.Context;
import noraui.utils.Messages;
import noraui.utils.Utilities;

public class CustomerSteps extends Step {

    private static Logger logger = Logger.getLogger(CustomerSteps.class.getName());

    private CustomerPage customerPage;
    private CreateOrEditCustomerPage createOrEditCustomerPage;

    public CustomerSteps() throws TechnicalException {
        super();
        this.customerPage = (CustomerPage) Page.getInstance(CustomerPage.class);
        this.createOrEditCustomerPage = (CreateOrEditCustomerPage) Page.getInstance(CreateOrEditCustomerPage.class);
    }

    /**
     * Check Customer page.
     *
     * @throws FailureException
     *             if the scenario encounters a functional error.
     */
    @Then("The JHIPSTERSAMPLEAPP customer page is displayed")
    public void checkJHipsterSampleAppCustomerPage() throws FailureException {
        if (!customerPage.checkPage()) {
            new Result.Failure<>(customerPage.getApplication(), String.format(Messages.FAIL_MESSAGE_UNABLE_TO_OPEN_PAGE, customerPage.getPageKey()), true, customerPage.getCallBack());
        }
    }

    /**
     * Check Customer page.
     *
     * @throws FailureException
     *             if the scenario encounters a functional error.
     */
    @Then("The JHIPSTERSAMPLEAPP customer form is displayed")
    public void checkJHipsterSampleAppCustomerFormPage() throws FailureException {
        if (!createOrEditCustomerPage.checkPage()) {
            new Result.Failure<>(createOrEditCustomerPage.getApplication(), String.format(Messages.FAIL_MESSAGE_UNABLE_TO_OPEN_PAGE, createOrEditCustomerPage.getPageKey()), true,
                    createOrEditCustomerPage.getCallBack());
        }
    }

    @And("I save '(.*)' from create message")
    public void saveIdFromCreateMessage(String field) throws FailureException {
        try {
            WebElement message = Context.waitUntil(ExpectedConditions.presenceOfElementLocated(noraui.utils.Utilities.getLocator(customerPage.createMessage)));
            String id = message.getText().replace("A new customer is created with identifier ", "");
            try {
                Context.getCurrentScenario().write("create " + field + " is:\n" + id);
                Context.getDataOutputProvider().writeDataResult(field, Context.getDataInputProvider().getIndexData(Context.getCurrentScenarioData()).getIndexes().get(0), id);
            } catch (TechnicalException e) {
                logger.error(TechnicalException.TECHNICAL_ERROR_MESSAGE + e.getMessage(), e);
            }
        } catch (Exception e) {
            new Result.Failure<>(e.getMessage(), "when I save id from create message", true, customerPage.getCallBack());
        }
    }

    @Then("I create all customers with '(.*)'")
    public void createAllCustomers(String jsonCustomers) throws FailureException, TechnicalException {
        Customers customers = new Customers();
        customers.deserialize(jsonCustomers);
        for (int i = 0; i < customers.size(); i++) {
            Customer customer = customers.get(i);
            customer.setWid(i);
            try {
                clickOn(customerPage.createNewCustomerButton);
                if (!createOrEditCustomerPage.checkPage()) {
                    new Result.Warning("",
                            Messages.format("Customer %s %s is wrong because create Or Edit Customer Page not display.", customer.getFirstNameCustomer(), customer.getLastNameCustomer()), true,
                            customer.getWid());
                }
                updateText(createOrEditCustomerPage.lastName, customer.getLastNameCustomer());
                updateText(createOrEditCustomerPage.firstName, customer.getFirstNameCustomer());
                clickOn(createOrEditCustomerPage.saveButton);
                if (i == 0) {
                    saveIdFromCreateMessage("id Customer");
                }
                Context.waitUntil(ExpectedConditions.invisibilityOfElementLocated(Utilities.getLocator(customerPage.createMessage)));
            } catch (Exception e) {
                new Result.Warning(e.getMessage(), Messages.format("Customer %s %s is wrong because %s.", customer.getFirstNameCustomer(), customer.getLastNameCustomer(), e.getMessage()), true,
                        customer.getWid());
            }
        }

    }
}
