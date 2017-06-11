package com.yourcompany.norarobot.utils;

import noraui.utils.Messages;

public class NoraRobotMessages extends Messages {

    /**
     * Technical messages
     */
    public static final String NORAROBOT_ERROR_MESSAGE_DEFAULT = "Erreur dans le code NoraRobot : ";
    public static final String NORAROBOT_ERROR_MESSAGE_APPLICATION_NOT_IMPLEMENTED = NORAROBOT_ERROR_MESSAGE_DEFAULT + "l'application « %s » n'est pas implementée dans NoraRobot.";
    public static final String SCENARIO_ERROR_MESSAGE_ILLEGAL_ARGUMENT = SCENARIO_ERROR_MESSAGE_DEFAULT + "les arguments autorisés sont \"ACT-\", \"DPS-\" et \"ALT-\"";

    /**
     * Functional fail messages.
     */
    //public static final String FAIL_MESSAGE_ = "....";

    /**
     * Functional fail messages with parameters.
     */
    //public static final String FAIL_MESSAGE_ = "...... « %s » ....";
    //public static final String FAIL_MESSAGE_ = "...... « %s » .... %s.";

    /**
     * Constructor is useless because all attributes are static
     */
    private NoraRobotMessages() {
    }

}
