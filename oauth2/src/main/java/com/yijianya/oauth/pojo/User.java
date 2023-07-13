package com.yijianya.oauth.pojo;

import lombok.*;

import javax.persistence.*;

/**
 * @author YiJianYa
 * @date 2023/7/12  17:58
 */
@Getter
@Setter
@ToString
@RequiredArgsConstructor
@Entity
@Table
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "passwd")
    private String passwd;

    @Column(name = "user_role")
    private String userRole;
}
