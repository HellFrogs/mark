# StudentManage

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

#### 功能说明
系统角色分为管理员和学生，管理员拥有对学生、课程、分数、教师等基本信息的增删改查权限。学生只可以查看个人信息，以及课程得分情况。
首页实现了一些数据的统计，如在线人数、系统运行时间。（用到了servlet中的监听器）
简单地写了两个过滤器，完成基本的登录校验、权限认证。
分页以及查询功能并未实现，分页的组件被隐藏起来了，如果有需要，可以自行编写相关代码。（个人觉得没必要，此项目仅仅用来熟悉servlet）

#### 项目运行
tomcat9 + jdk1.8
依赖的jar包在WEB-INF的lib文件夹下
传统java web项目，非maven结构。
根据不同的编辑器百度不同的导入方法（传统项目推荐eclipse，idea社区版不支持直接添加tomcat）
建好数据库后，还需要在项目中配置连接参数，在src目录下的druid.properties中配置。
数据库文件见sql文件夹
