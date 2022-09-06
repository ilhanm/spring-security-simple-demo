package com.ilhanmert.springsecuritydemo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig  {
//    @Override
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        // add our users for in-memory authentication
//        UserBuilder users = User.withDefaultPasswordEncoder();
//        auth.inMemoryAuthentication()
//                .withUser(users.username("john").password("test123").roles("EMPLOYEE"))
//                .withUser(users.username("bryan").password("test123").roles("MANAGER"))
//                .withUser(users.username("gary").password("test123").roles("ADMIN"));
//    }


    @Bean
    public InMemoryUserDetailsManager userDetailsManager() {
        UserDetails john = User.builder()
                .username("john")
                .password("{noop}test123")
                .roles("EMPLOYEE")
                .build();

        UserDetails mary = User.builder()
                .username("mary")
                .password("{noop}test123")
                .roles("MANAGER")
                .build();

        UserDetails susan = User.builder()
                .username("susan")
                .password("{noop}test123")
                .roles("ADMIN")
                .build();

        return new InMemoryUserDetailsManager(john, mary, susan);
    }

//    @Bean
//    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
}
