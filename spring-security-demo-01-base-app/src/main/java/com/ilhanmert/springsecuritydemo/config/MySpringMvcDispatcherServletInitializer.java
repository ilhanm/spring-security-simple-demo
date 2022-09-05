package com.ilhanmert.springsecuritydemo.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MySpringMvcDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        //xml configuration karsiligi dispatcher servlet (org.springframework.web.servlet.DispatcherServlet)
        return new Class[]{DemoAppConfig.class};
    }

    @Override
    protected String[] getServletMappings() {
        // xml karsiligi dispatcher url-pattern
        return new String[]{"/"};
    }

}
