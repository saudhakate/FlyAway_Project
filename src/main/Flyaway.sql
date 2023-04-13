create database flyway;
use flyway;

CREATE TABLE  LOGIN  (   
    USERNAME VARCHAR(40),   
    PASSWORD VARCHAR(40)); 
 
 INSERT INTO LOGIN (USERNAME, PASSWORD) value('saurabh', 'admin');
 
 select * from login;
 
create table dbuser(
 `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `Uname` varchar(20) NOT NULL,
   `pwd` varchar(20) NOT NULL,
   `Add` varchar(60) NOT NULL,
  PRIMARY KEY (`Uname`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

select * from dbuser;