package com.yourcompany.norarobot.main;

import com.yourcompany.norarobot.utils.NoraRobotContext;

import noraui.main.ScenarioInitiator;

public class ScenarioInitiatorRunner {

    public static void main(String[] args) {
        NoraRobotContext.getInstance().initializeEnv("NoraRobot.properties");
        new ScenarioInitiator().start(args);
    }

}
