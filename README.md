Tutorial for use NoraUi

# JHipster sample install

* installing Jhipster: https://jhipster.github.io/installation/
* Creating an application:https://jhipster.github.io/creating-an-app/

        $ mkdir JHipsterSampleApp
    
        $ cd JHipsterSampleApp/
    
        $ jhipster
    
    (1/16) Which *type* of application would you like to create? Monolithic application (recommended for simple projects)
    
    (2/16) What is the base name of your application? JHipsterSampleApp
    
    (3/16) Would you like to install other generators from the JHipster Marketplace? No
    
    (4/16) What is your default Java package name? com.mycompany.myapp
    
    (5/16) Do you want to use the JHipster Registry to configure, monitor and scale your application? No
    
    (6/16) Which *type* of authentication would you like to use? JWT authentication (stateless, with a token)
    
    (7/16) Which *type* of database would you like to use? SQL (H2, MySQL, MariaDB, PostgreSQL, Oracle, MSSQL)
    
    (8/16) Which *production* database would you like to use? PostgreSQL
    
    (9/16) Which *development* database would you like to use? H2 with disk-based persistence
    
    (10/16) Do you want to use Hibernate 2nd level cache? No
    
    (11/16) Would you like to use Maven or Gradle for building the backend? Maven
    
    (12/16) Which other technologies would you like to use? (Press <space> to select, <a> to toggle all, <i> to inverse selection)
    
    (13/16) Which *Framework* would you like to use for the client? AngularJS 1.x
    
    (14/16) Would you like to use the LibSass stylesheet preprocessor for your CSS? No
    
    (15/16) Would you like to enable internationalization support? No
    
    (16/16) Besides JUnit and Karma, which testing frameworks would you like to use? (Press <space> to select, <a> to toggle all, <i> to inverse selection)
    
        Edit JHipsterSampleApp\src\main\resources\config\application-dev.yml file with your port (9797 for example)
        
            server:
                port: 9797
        
        copy/paste JHipsterSampleApp\.jhipster\Customer.json
    
        $ jhipster entity customer --regenerate

# NoraUi Tutorial

* run loginLogout scenario
* create new scenario (create a customer without NoraUi Model)
* create new scenario (create a customer with NoraUi Model)
