# ubuntu20.04-redis-mysql8-torch-
When use a computer with new hardware,usually we can only use new systems. I arranged, and I succed.

If you have read my privious articles, the base driver will be easilly for you. But I met many problems in ubuntu 20.04.   
1. Libs is not installed completely in the new system. you must see "dpkg warnings "when you use apt-get to install some software.    
  I will provide a bash file for you,"dpkg.sh", you can modify something based on it.   
2.When you compiling OPencv,there are many hidden trouble.You must check carefully libs.    
  Luckily, I will provide cv.sh for you.   
3.Some softwares are not installed in ubuntu20.04. So, when you compiled torch,don't forget to install "git"  
  sudo apt-get install git     
4.A problem could also arrise "internal compiler error:Killed(program cc1plus)". It is because your cpu has too many cores,but your internal memory is too poor.
  My meshod is to add memory, you can adjust swap space if you don't have any.  
OK, algorithm is completed, then I use mysql + redis + nodjs for communication.  
1.Redis:  
  (1)I used newest Redis downloaded from official website.the default url is 127.0.0.1:6397,if you wan to change,you must create a new config file .  
  (2)$ redis-server (/path/to/xxx.conf).  
  (3)open a new cmd, $ redis-cli .  
  (4)127.0.0.1:6379> config get requirepass (It's inisally with "")  
  (5)config set requirepass 123456(your password)  
  (6)auth 123456(your password)    
2.Mysql:(It is a hard stuff, so many things changed,it cost me long time )    
  (1)This program is developed in mysql-5.7 ,but in ubuntu 20.04, it's not a good idea to install mysql-5.7. Therefore, I installed mysql-8.0.20.  
    apt-get install mysql-server mysql-client libmysqlclient-dev    
  (2)ERROR 1045 (28000): Access denied for user '-root'@'localhost' (using password: NO)  
    we don't know the default password.So,we must skip the password at first.  
    $sudo gedit /etc/mysql/mysql.conf.d/mysqld.conf    
    add : skip-grant-tables under [mysqld] and save.    
    $sudo service mysql restart    
    $mysql -u root -p   and enter straightly  
    >use msql;  
  (3)use update to set your root password into ""(NULL string,you can't use any other string,because the caching_sha2_password)  
  (4)>flush privileges;  
  (5) delete the "skip-grant-tables" and save  
      sudo service mysql restart    
  (6)Then you can use root without password  
  (7)use >alte user ‘root’@‘localhost’ IDENTIFIED WITH mysql_native_password BY  ‘yourpassword’ ;(In New version 8,you must use alte to change password by root)    
  (8)>flush privilege  
  (9) Then,you can login by the new password.However, if failed because of the protocol,don't forget change the 'caching_sha2_password' with 'mysql_native_password'(decode problem)  
  (10)You will succeed.  
    
