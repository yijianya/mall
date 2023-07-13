package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;

/**
 * @author YiJianYa
 * @date 2023/7/13  17:18
 */
@Configuration
public class WebSecurityConfig {

    @Bean
    public AuthenticationManager authenticationManager() {
        return null;
    }
}
