package com.yourcompany.norarobot.utils;

import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;

import org.junit.Assert;
import org.junit.Test;

import com.yourcompany.norarobot.utils.NoraRobotContext;

public class NoraRobotContextUT {

    @Test
    public void testConstructorIsPrivate() throws Exception {
        Constructor<NoraRobotContext> constructor = NoraRobotContext.class.getDeclaredConstructor();
        Assert.assertTrue(Modifier.isPrivate(constructor.getModifiers()));
        constructor.setAccessible(true);
        constructor.newInstance();
    }

}
