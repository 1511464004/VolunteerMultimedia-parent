package com.bao.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.web.cors.CorsUtils;

/**
 * 解决iframe嵌套问题
 */
@Configuration
@EnableWebSecurity
@Order(90)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.headers().frameOptions().disable();
    }
//@Override
//protected void configure(final HttpSecurity http) throws Exception {
//    http
//            .csrf().disable()
//            .authorizeRequests()
//            .requestMatchers(CorsUtils::isPreFlightRequest).permitAll()
//            .anyRequest().permitAll().and()
//            .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and()
//            .headers().frameOptions().sameOrigin();
//
//}
}
