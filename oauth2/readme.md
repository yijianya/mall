# 执行oauth2需要的sql文件
# 执行自己创建user表

# 覆写oauth.里边的以及springsecurity里边的核心的相关的类（复杂）
# 1.我们需要手动的实现oauth2中的detailedservice。oauth2不知道user表是你的，
# 所以oauth2为了 知道用户用的什么user表，给开了一个detailedservice接口，这个接口，就是让大家汇报user表
# 2.做安全配置。
# db链接的---datasource---进行token的存储(token过期时间自定义配置)
# ---UserService汇报--网络安全---跨域问题
# 校验token是否有效的接口是不是可以开放