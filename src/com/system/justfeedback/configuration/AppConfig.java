package com.system.justfeedback.configuration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.format.FormatterRegistry;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.system.justfeedback.converter.RoleToUserProfileConverter;



@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.system.justfeedback")
public class AppConfig extends WebMvcConfigurerAdapter{
	
	
	@Autowired
	RoleToUserProfileConverter roleToUserProfileConverter;
	
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {

		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/jsp/");
		viewResolver.setSuffix(".jsp");
		registry.viewResolver(viewResolver);
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
    public void configureMessageConverters(List converters) {
        super.configureMessageConverters(converters);
        MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();
        converter.setObjectMapper(new HibernateAwareObjectMapper());
        converters.add(converter);
    }
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }
    
    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(roleToUserProfileConverter);
    }
	
    @Bean(name="messageSource")
	public MessageSource messageSourceforJSP() {
    	ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
    	messageSource.setBasenames("/WEB-INF/resources/code","/WEB-INF/resources/messages1","/WEB-INF/resources/company","classpath:resources/messages","classpath:resources/auditrailMessages","classpath:resources/link","classpath:resources/projectKeywords","classpath:resources/project","classpath:resources/company");
	    return messageSource;
	}
    /**Optional. It's only required when handling '.' in @PathVariables which otherwise ignore everything after last '.' in @PathVaidables argument.
     * It's a known bug in Spring [https://jira.spring.io/browse/SPR-6164], still present in Spring 4.1.7.
     * This is a workaround for this issue.
     */
    @Override
    public void configurePathMatch(PathMatchConfigurer matcher) {
        matcher.setUseRegisteredSuffixPatternMatch(true);
    }
    
    //for multipartResolver from xml
  	@Bean
  	public MultipartResolver  multipartResolver() {
  		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
  		multipartResolver.setMaxUploadSize(100000000);
  	    return multipartResolver;
  	}
  	@Bean
	public ViewResolver jsonViewResolver() {
		return new JsonViewResolver();
	}
}

