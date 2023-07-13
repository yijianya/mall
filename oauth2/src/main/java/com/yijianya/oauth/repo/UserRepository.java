package com.yijianya.oauth.repo;

import com.yijianya.oauth.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author YiJianYa
 * @date 2023/7/13  10:44
 */
@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    User findByUserName(String userName);
}
