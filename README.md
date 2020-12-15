# 学生管理系统

#### 涉及技术
Servlet、JSP、BootStrap，Jquery（很少，可忽略）、druid数据库连接池（配置一下即可）

#### 运行截图

登录页
![登录页](https://images.gitee.com/uploads/images/2020/1202/165755_4dda76c2_7967932.png "登录界面.png")

管理员主界面
![管理员主界面](https://images.gitee.com/uploads/images/2020/1202/165835_fce943f1_7967932.png "管理员主界面.png")

学生主界面
![输入图片说明](https://images.gitee.com/uploads/images/2020/1202/165901_e86a1e86_7967932.png "学生主界面.png")

学生管理（管理员视角）
![输入图片说明](https://images.gitee.com/uploads/images/2020/1202/165930_d7c49066_7967932.png "学生管理.png")

账号管理（管理员视角）
![账号管理](https://images.gitee.com/uploads/images/2020/1202/170013_e1ce3899_7967932.png "系统账号管理.png")

成绩录入（管理员视角）
![输入图片说明](https://images.gitee.com/uploads/images/2020/1202/170049_70775bb0_7967932.png "成绩录入.png")

个人档案（学生视角）
![输入图片说明](https://images.gitee.com/uploads/images/2020/1202/170115_f9b11a52_7967932.png "个人档案.png")

#### 项目运行

环境：

tomcat9 + jdk1.8

依赖的jar包在WEB-INF的lib文件夹下

数据库文件见sql文件夹

导入：

传统java web项目，非maven结构，传统项目推荐用eclipse。（import——>Existing Project into WorkSpace）

初始账号密码：

管理员账号密码： admin    123
学生账号密码：   0000     123

#### 功能说明

系统角色分为管理员和学生: 

管理员拥有对学生、课程、分数、教师等基本信息的增删改查权限。学生只可以查看个人信息，以及课程得分情况。

首页实现了一些数据的统计，如在线人数、系统运行时间。（用到了servlet中的监听器）

两个过滤器，完成基本的登录校验、权限认证。

分页以及查询功能并未实现，分页的组件被隐藏起来了，如果有需要，可以自行编写相关代码。

（个人觉得没必要，此项目仅仅用来熟悉servlet）

#### 代码解读

核心部分的代码讲解放在了个人博客中：

CSDN    https://blog.csdn.net/qq_37855749/article/details/110492060

博客园：   https://www.cnblogs.com/phdeblog/p/14075413.html

#### 作者

小楼夜听雨

邮箱/qq：1376034301@qq.com

提供java/php系统代做服务，毕设、课程设计、小作业等，完全定制，保证全世界唯一。

支持技术栈自选，SpringBoot、Vue、React、SpringCloud。。。。。。

价格实惠，售后周到，远程部署、代码1对1讲解，包您满意，有意者可以联系上述qq/邮箱。

博客地址：

https://www.cnblogs.com/phdeblog

https://blog.csdn.net/qq_37855749

欢迎关注



