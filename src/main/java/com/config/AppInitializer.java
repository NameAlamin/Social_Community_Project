package com.config;

import com.security.SecurityConfig;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.multipart.support.MultipartFilter;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.*;

public class AppInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        // root config
        AnnotationConfigWebApplicationContext rootConfig = new AnnotationConfigWebApplicationContext();
        rootConfig.register(RootConfig.class,DbConfig.class, SecurityConfig.class);
        rootConfig.refresh();
        servletContext.addListener(new ContextLoaderListener(rootConfig));

        // servlet config
        AnnotationConfigWebApplicationContext servletConfig = new AnnotationConfigWebApplicationContext();
        servletConfig.register(ServletConfig.class);
        //ServletRegistration.Dynamic registration = servletContext.addServlet("servlet",new DispatcherServlet(servletConfig));


        // Multipart Config
        ServletRegistration.Dynamic servletRegistration = servletContext.addServlet("servlet", new DispatcherServlet(servletConfig));
        servletRegistration.setMultipartConfig(new MultipartConfigElement("/", 2097152, 4194304, 50));

        // Multipart Filter Config
        FilterRegistration.Dynamic multipartFilter = servletContext.addFilter("multipartFilter", MultipartFilter.class);
        multipartFilter.addMappingForUrlPatterns(null, true, "/*");

        // set load on startup
        servletRegistration.setLoadOnStartup(1);

        // mapping
        servletRegistration.addMapping("/");
    }
}
