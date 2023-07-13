package com.yijianya.oauth.service;

import com.yijianya.oauth.pojo.User;
import com.yijianya.oauth.repo.UserRepository;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author YiJianYa
 * @date 2023/7/13  10:46
 */
@Service
public class UserServiceImpl implements UserDetailsService {

    @Resource
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUserName(username);
        if (user != null) {
            return new org.springframework.security.core.userdetails.User(
                    user.getUserName(),
                    user.getPasswd(),
                    AuthorityUtils.createAuthorityList(user.getPasswd())
            );
        }
        throw new UsernameNotFoundException("User not found!");
    }
}
