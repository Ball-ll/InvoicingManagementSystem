/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.7.12-log : Database - invoicingmanagement_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`invoicingmanagement_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `invoicingmanagement_db`;

/*Table structure for table `shop_caigou` */

DROP TABLE IF EXISTS `shop_caigou`;

CREATE TABLE `shop_caigou` (
  `shop_caigou_id` VARCHAR(100) DEFAULT NULL,
  `shop_name` VARCHAR(100) DEFAULT NULL,
  `shop_id` VARCHAR(100) DEFAULT NULL,
  `shop_gongyin_name` VARCHAR(100) DEFAULT NULL,
  `shop_int_price` DOUBLE DEFAULT NULL,
  `shop_int_shijiprice` DOUBLE DEFAULT NULL,
  `shop_int_size` INT(11) DEFAULT NULL,
  `shop_int_shijisize` INT(11) DEFAULT NULL,
  `shop_int_allprice` DOUBLE DEFAULT NULL,
  `shop_int_time` VARCHAR(100) DEFAULT NULL,
  `shop_int_user` VARCHAR(100) DEFAULT NULL,
  `shop_int_pay` VARCHAR(100) DEFAULT NULL,
  `shop_int_cangku` VARCHAR(100) DEFAULT NULL,
  `shop_int_payforuser` VARCHAR(100) DEFAULT NULL,
  `shop_int_chajia` VARCHAR(100) DEFAULT NULL,
  `shop_int_chajiastate` VARCHAR(100) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `shop_caigou` */

INSERT  INTO `shop_caigou`(`shop_caigou_id`,`shop_name`,`shop_id`,`shop_gongyin_name`,`shop_int_price`,`shop_int_shijiprice`,`shop_int_size`,`shop_int_shijisize`,`shop_int_allprice`,`shop_int_time`,`shop_int_user`,`shop_int_pay`,`shop_int_cangku`,`shop_int_payforuser`,`shop_int_chajia`,`shop_int_chajiastate`) VALUES 
('cff606f07ab64dd9ad76ceccd60f5889','旺旺（小装）','0109c43ce376435899b9b90d2f6aac7d','',1,1.2,300,100,120,'2019-6-27','丸子','','啦啦仓库','','',''),
('d976b2331e6d4eb6801dc5ce6dc18fcf','旺旺（小装）','baea3b6c79364d30b35574d0e87fb4f6','',1,1,300,111,NULL,'1','','','啦啦仓库','','',''),
('7783e18c57e942d0921d70b2016a8fa5','旺旺（小装）','35dc25092546406690f15104417e72f8','小米',1,222,300,2222,NULL,'','','','啦啦仓库','','',''),
('709debc7c883488c8eea34f00bfc9b74','旺旺（小装）','01cb23f73c6542cfade84006743cd870','小米',1,222,300,2,444,'','','','哒哒仓库','','',''),
('37261987db4f4866a73ac1ba144e9493','旺旺（小装）','d3fd17ab898d46e8a456939bb2cffb7e','伊利',1,222,300,2,444,'','','','哒哒仓库','','',''),
('1b97a6e28f4c4e7c94fd3271dc3f47d9','旺旺（小装）','c13104fa1bd2483f842b4a082a7ce465','伊利',1,222,300,2,444,'','','','啦啦仓库','','',''),
('b3a7430d56fd4fd3979126379ca5153b','牛乳','1481f111e6e74829a3a3b2e79a3e4182','蒙牛',1,2.5,2,200,500,'','','','啦啦仓库','','',''),
('cf9cc170a58a49ac9987e8c5ad49a495','旺旺（小装）','8018d9ffa09642a798311c77b46c0282','伊利',3,2.5,10,500,250,'','嗷嗷','','啦啦仓库','','','');

/*Table structure for table `shop_caigoushenhei` */

DROP TABLE IF EXISTS `shop_caigoushenhei`;

CREATE TABLE `shop_caigoushenhei` (
  `shop_caigoushenhei_id` VARCHAR(100) DEFAULT NULL,
  `shop_caigoushenhei_shop` VARCHAR(100) DEFAULT NULL,
  `shop_int_price` INT(11) DEFAULT NULL,
  `shop_int_size` INT(11) DEFAULT NULL,
  `shop_int_allprice` INT(11) DEFAULT NULL,
  `shop_int_yutime` VARCHAR(100) DEFAULT NULL,
  `shop_int_shuoming` VARCHAR(100) DEFAULT NULL,
  `shop_caigoushenhei_shenqinren` VARCHAR(100) DEFAULT NULL,
  `shop_caigoushenhei_shenheiren` VARCHAR(100) DEFAULT NULL,
  `shop_caigoushenhei_qianming` TEXT,
  `shop_caigoushenhei_qianming_lujing` VARCHAR(1000) DEFAULT NULL,
  `shop_caigoushenhei_bohui` VARCHAR(100) DEFAULT NULL,
  `shop_caigoushenhei_time` DATETIME DEFAULT NULL,
  `shop_caigoushenhei_zhuangtai` VARCHAR(100) DEFAULT NULL,
  `shop_caigou_zhuangtai` VARCHAR(100) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `shop_caigoushenhei` */

INSERT  INTO `shop_caigoushenhei`(`shop_caigoushenhei_id`,`shop_caigoushenhei_shop`,`shop_int_price`,`shop_int_size`,`shop_int_allprice`,`shop_int_yutime`,`shop_int_shuoming`,`shop_caigoushenhei_shenqinren`,`shop_caigoushenhei_shenheiren`,`shop_caigoushenhei_qianming`,`shop_caigoushenhei_qianming_lujing`,`shop_caigoushenhei_bohui`,`shop_caigoushenhei_time`,`shop_caigoushenhei_zhuangtai`,`shop_caigou_zhuangtai`) VALUES 
('72d7acd87aa040b1a7e6391a9afe5821','牛乳',1,2,3,'05/15/2019','','1','1','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAFCUlEQVR4nO3dTW7jNhjGcWebGEmQOLZjS6T4nqMXmHbdHqCX6C1mNWiBrnqEAkWBAt3PdpZdF+2ui6JNZxJ/ajbmQJXlL5kURfv/A7QYxCPTSvKEL0lRnQ4AAAAAAAAA7MkYs1RKzUK3AwA2yrJsISK5iOTGmKWI5KHbBACVbFBt+jcAtEJVj4rAAtA2P9gysPwFykIArVEcs9r29abbBQD/Y3tPO0q+70Ukv7q6+rmxhgFAwXe2V5Vl2WLXi/d9HQA4tasErMLAO4DGKaVmdcKHgXcAjRoMBk8ikqdpOjn0/xJYABp1TOjYnpnrNgFApWPHoUQkHw6Hf7lsEwCscbGWiplCAI1wMcvHTCEA7+xg+7FbxRBYALxzNcNHYAHwzlXQsLQBgFcub1wmsAB45bKMI7AAeEVgAYiGy8BiXywAXh26K8M2Wus5gQXAG5dl3Hg8fiawAHjjetxJRPJut/uLq/MBwCeuy7jVivmpq/MBQNFXq8B67eJkIpJrrecuzgUAa1zcR+jjXACwxuU4FlvMAPDO1XosAguAd3UfPlFGYAFohC0Ntda1A4fAAtCYwnhWrVlDAgtAo465XYfAAtC4uuNZBBaAxtUdhCewAARRZxCewAIQzKGhRWABCO2VHYhflYivNr2QwALQCra3ZY+qYCKwALSK1npeDC9jzHI4HL7vdAgsAC1W7nURWABaTyk1Lfe62MgPQKvZsCr2uHh8PYBWKpaEo9HoQ0Wvi91IAbTDpjEs+8xCel0AWmOPQfdvy70uY8yy1+v92VgjAaDTOWxZQ5ZliyRJJuVZxlXpyL7wAPyqu6zh9vb2XZZli6plEsaYJUslADgnInmSJBMX59JabwwwY8xyNBp9cPE+AM6Uz+cSltd6lUOM5yECOEjDzyX8nDISQG2rkvAl1PuX73Msh5irchXACRCR/O7u7m3odlhJkrxsC7DiYUtOjvqHUmoWug2hP3/on3ns6fLy8sdtD6+4uLj46fHx8b1SaqqUmmmt51mWLWxZt+moChsfR5PvdaoH19DNE9Sx7st+v/+UpumkHB5tCZDCL8Fab6h42DZrredKqVmappPVdjdv9rkQtlew6ReQm7hRpXz3htcx05i7tsW2hfgLsivMbHisAmQ6Ho+fr6+vf/P2zXRsOBz+t+n62oAM3UaEU/y5MMYsx+Pxs/c33eeXMnTXcp+27dPzKPY+kiR56fV6//i4plrr+al2ibfNRtpDaz0POeEAf8pjocZwL2z0bBc5dDuaYHu5NqQP6ZnaPyAPDw9/h/4c2K7Rsg/NOqfA2qbf7/9rxwTrlO7lXvJqDO2L0J/rnJR7U2maMvt3auw3OXQ7YpIkyYtdO3ZsuFGSHuf+/v4Pyr4zQmB59bVSalaewT0g2ChJNyiX9QTVmSCw2mEwGDxRku5Wvi7ci3pmCKz4JEkysbti1Am3XWv22ngopWbFcO52u625MwMNIrBO2jdVJWl5Fi2Gw7Y99AVFYAQWgGgYY3ICC0AUmGEBEA0CC0A0CCwA0SCwAESDwAIQDQILQDTYfgNANFZrsD4L3Q4A2Ekk7CO+AGAvg8Hgd1a5A4jCKe/nDuDEsD0ygGiwUwOAaBBYAKLBolEA0SCwAESDwAIQDW7LARANEcmVUjwdF0D7iUh+c3Pza+h2AMBWSqkpSxoARIFV7gCiwaJRANEgsABEg8ACEA0WjQKIBoEFIBoEFgAAkfsIMROKNpo4lCcAAAAASUVORK5CYII=','\\uploadFile\\qianming\\[B@72127002.png',NULL,'2019-05-04 23:23:52','已批准','已采购'),
('0a1a0c29fbcd4428a4bd93278f11e8ee','旺旺',1,2,2,'05/08/2019','','1','1','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAEXklEQVR4nO3dvYskRRjH8QaZWEQMTKbq+VW57rCRgcH9B4L4DwgGBibHiUaC5mIqaGQgKmhgqK54iecrh8YGd4iIgl6gx72trLs3Lybd2jYz2zOz01tdN98PNGwwu/P0QP32qZqamqIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGTOzL4ws4up6wCAVlVgSZp5719KXQ8AtJI0k3SUug4AaGVmU0mz1HUAQCszOyCwAGSjnBbup64DAFpJmpnZNHUdANBK0hHTQgBZkPQ2gQUgCwQWgGwQWAA65Zy7a2ZT7/0tM5utc3nvb1Q/lwvvG7mK4t/9XV+nfp0AnLEqnMrtB/+7+hhY3vtJs04zmzrnxqlfSwAb4px7y3s/KTunuYO+HPi3Nvm8IYQ3upoSVvez6F4kfdPF8wLYMO/9ZF4wVeHRRTjN02VgNTnnri/qFunCgJ4ZDAbP1gesc+52OVAnqWo6y8CaZ4ku7NtUtQFbyTk3rg/KPu0sTx1YTc65P1u6sGThDtzTnHPjWjc1ds7dTV1TU98Ca55FXVhRFA+b2eXU9QFZaw6w4XD4Y+qaFskhsJqqLqx6jb33nOkFrGIwGDzXCKk7fQ6qSo6BVVe9cZG6DiAbfV2fWoak13Ie8BxCCKyhj+tTy8g9sHL8JwFgTTkHVgjhE0mzEMKnqWsBcAZyDazagjvbHIBtkVtgSbqS63ohgFPKKbDqb26krgVAAjkEVrmvja4K2HZ9DazmB8NjjB+lrglAYn0KrGZIlbvZj1PXBaAnUgcWIQVgaZJePuvAIqQArOWsAouQAnBqXQWWmV2vn6hASAE4tU0ElqSfFx26VxRFQUgB2IhVA0vSd83Oac5U71qXNQPYUicFlqT3lwinzr8oAwCKovgvsHZ3d59fdBRxFU7e+8PU9QLYPg+a2cIvaC07pyzP9wKQOTM7OimcyinhudR1Atgy3vuDlmndJMb4avV4Sef78tEcAPegEMK7ZnZYLYif9NX2IYT9k/4WgQXgNKKZXasWwBd1S3P2Ok1DCD+s84TlMcMfbvY2AGRP0ldmdrxsGNW7JTM7lvRlBzX9KunvFX7lvhjjQ2b2aIzxnKQnzewZSS9sujYgO2Z2kLqGZezt7V0ws5u1gGkNpPq0zsx+L4oipqg9hHCn3BR6ycwuSXpE0puSPgghfCbpezP7SdINSRNJf0i6GkK4LGk/hPCepNdT1A70xpzPoiULL0lXvPfjdboj7/2hmb2TqvZlOOceqwXW/WZ2QdLTIYQnJD0eYwzD4fCB1HUCvee9H88JgpXDazQanZf0uZn9ZmZ/1QOocR2uEEZjSVe7uG8AmWuGl/e+NVxWvXZ2dl6phdfN0Wj0Yur7BpC5skO6uKBLOjaz25J+kfRxjPGp1PUCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgpX8AH+n/8Afv91wAAAAASUVORK5CYII=','\\uploadFile\\qianming\\[B@4e324a31.png',NULL,'2019-05-06 09:14:55','已批准','未采购'),
('048578a0b5ef41eaab10262c676c0c2b','旺旺（小装）',1,300,360,'05/16/2019','库存不够啦','1','1','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAFD0lEQVR4nO3dTW7bRhQAYC0CZJEEMGIkDiSKP7pd0UWXvVDbC/QAPUXQbrrupm3QpogdW7K7iCdlWP2L5IzI7wO4cKLYT3T4NO9xZjiZAAAAAAAAAAAALfguy7KPRVEsy7JcVVV1Xz9ms9l1/euyLFdFUSyzLLuJHThwfr7flnAWi8XDKUdRFMtj/l3skwL0qCiKZVVV98cmjHA0E1hZlquyLFd5nt/NZrPrE8P8YT6fb0qWn39+KycEiO/Zs2e/hYt9XcLJsuymw4TTqfp7ih0LcKAsyz5uK9XC3w2pP5Tn+W39/cWOB1gjz/O7XcmpLMvV06dPf40dax/CeSjLchU7Fhi1bSVdSE5FUSxjxxnbdDq9XiwWD9Pp9EPsWGDwXr9+/fe25BRGVHme38WONVVKQ+hAnue3+5R0RguHCeczdhyQlDzP7/a9MMIUgm0lnd5LO8qyXElY0LAhYX2j3xTd1/pY0BAS1h79ptvYsY6NPhajtu8UglevXv0VO1b0sRiR0AwPvZANJd1qMvn0Se7TPD36WAzWpob4ZDL5dtcUgqIoVrXXkxC/EwZhU1P82Dt1RllpCjtBxI4D9hbW1m0q7dqYgFn//hrs6fAhQvK2zXeqqup+Op12svuAfZrSI2GRnLbLu2PVYzABNA3uFBJV2Eo31cmY9TlZMePgE3cK6dWu8i61PZ3qsV5eXr6LHc/YSVh0KpXy7hTKwnQY7dKaN2/e/LNp5ngK5d2xwrwszd74/B44WljasmV6wWCmA7hbmISvLIBmb3uUdz/FjrEroXeiLIxH/4qNLi8v3+0o70Z34RplxaV/xWfz+Xw05d2xTCSNS/9qxLaVd1VV3V9cXPwRO8bUNPfJuri4+D12TCOifzUWT548eTuE6QWx1UsS6wz7pX81cOFJv10tDh6j5vbJIYGd63SNc6J/NVCNXQbuqqq6v7q6eh87rqFoJigP+uyH/tWAPCamL0ZRsWMaqnXnNyQt5707+lcD0OxJ+ZTv3qbSRNLqRp7nt87rGbu6unpfT1RKvn5t66WEnqGLqx1FUSydzzPWTFSx4xmjLMtutjV/XWTtkPwHwh2++HaV38qY0yivoUX7Xkzmah1OsoKWHTInKNy9dQHuZooIdODQWddGDbuZhAsdWiwWDy9evPh539d7OOtmSmfo2LGlS7g4jSQ+sZAcenBKiadE/G/6hxEn9ODUxbhjTVphHptRJvSoje1Owu4Pi8XiYQyrFZoL82PHA6Px/Pnzt4+N919O/V5DXwvqCdqQgDYvwCGWiBIVJKTtBFNfP3fOF7g1r5CgrnbBbG4bVFXV/TnsBVXf4VaigsR0vc94URTLdckrtdFX/XkBEhUkrK95RC9fvvxz00NEJpPJj33EUNd8XsBsNrsew51OOGuxbtGvewrS4wNuO5vb1ExSKY72gC1SKIOyLLvZMvo6iSQFA5JCwmra8ni3jYuL5/P5xzBqC4ckBXsITwHadez7uq6Px4s6ubiaMdYS0EMzoa1JcEkeKZ7bIR+xc8FZqL78dE/+P+85JKyhHM5tv0fsXHBWzqF/4hHqwP+su42ewmr/5uPrAb7QvKVfVdV9lmU3MWKRsIC9VWvmIvX58yUs4GDT6fRDM3n10e+qOlpPCIxEcw3eIXeW1r22+Wf1r22dArSmLMtVlwkr9vsDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAfgXVsvVlj9s2FEAAAAASUVORK5CYII=','\\uploadFile\\qianming\\[B@4cd4bf23.png',NULL,'2019-05-06 13:45:41','已批准','未采购'),
('39d9c1b1df1543eca2e45b31a9e367e9','旺旺（小装）',3,10,25,'05/07/2019','发发发','1','1','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAFW0lEQVR4nO3dvW8cRRjH8S1TRJGSWJYS3c4zz7OJo1AlbWpqJPgfEIiCBgqQKCmgoKCBjgZRIyEaJNIhQQGRItNAEYgIBIIUItmO3+7OFLkhw3rP9vlmd3zZ70daKS+6m8eW88szs7NzRQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAEVHUsIsPcdQDAgbz3IzPbq1+qOvbejy5evPhr7hoBYJ+yLLdVdayq46YQGwwGG+Hvw+W9H4nI0Dm3s7S09HnurwFAz4nIKEwbm4JslqseeIQegGwuXLiw6pzbEZGh935UD6d5A8/M9pxzu6q69yxfi/o1zlt3/fW5f56BQx0Weov6j5nAmv31ZrbnvR/l/pkEgEPppCvPXQcAHIrAAvAfVb1lZp+Y2dtm9lrueurCjZrcdQDIyMx+iG5kPDiJgRX2COauA0AG3vuPzWxXo7u13vu32hwz3goz62vproAeMbPvVXXfkwxFUSx3GVSTYLw3y+udc7uTzcp/tFUjgIzM7E9t2Os2+bMHXdVRr+E4XdJxuzIAJ9C1a9dumNnGAQH1Y9c1hTUnffJUxOo8ocP+K2CBqeoXk+ndRkNADc3ss8z1jeNuKvx+1qlgUbB2BSwcM7vf1D0VRXHazB5funTphdw1BvWwqqrq6+OGDvuugBNORN4ws+0Dpnf3c9c4TahTRHaL4n+d1czTufBa59xu+koBHIuZrTaF0ySgRmZ24k+sEJHNeI1KVe/Ms8ger3+lrxbAUZ02s7UDuqe1oihO5y5yFtPWq447lSvL8j5hBWRw9erVF1V1qKqbUwKq87t3KcVhNW9XFbCFAeiQqj6ud1DXr19/3sy2ReTN3PWlEm0CHc3bVdXfM1WNAGqqqvptyhRv6Jx7PXd9qYnIzejwxJ0UXVVRPO3WBoPBaqpagd5T1a8OWIP6Jnd9bYrv+qXqqurvm6JOoNfsyWkGu/WAqqrqr9y1dUFEvou/7nD6Z4qF8fCcIYvsQAJRJ7Gmqpu56+laUzfpvf891fsTVkACtZMNHuaup2unTp16uWnam3IMwgpIoL63qG8aTlhIvts8jHH+/PkPU7830BtRUA1y19IlVb0TB9Xke3CjjbHCTnYW2YE5mNntvu0DalqjEpG7bY7Z5+4VSKoP//OvrKy8N21rRttjszkUSOhZPdKkqqovtfaJ2/GvRWS97RrCeOfOnfug7bGA3ngWpiwhoOpd1PLy8kve+3+6vrHAuhXQElV9tGihNS2gVHU8CYnniuJpcEy6qmFX9S3a9xNYKFEH8ih3LU2OGlCxXNs1WLcCOnCS1rMOCqhJAO0LqCD+mC0R6XRKFmo+e/bs+12OC/RSHAre+2FVVTdbHu9T7/1WGLPpY7IOC6hYzk2wrFsBGajqTr2zqQfIUcPMzO6F0w6mHY0cX5PxjxxQgYhsRc/+dR4YZVneZd0KOAHM7Kf6EStTwmz7sECKA8/MbqeoL+qqskxnOS4GWBBm9nMIsytXrrwbBdL65cuXX+1g/GxdlXNuIw7irscHsEBy3iRIeaAfgB7I0dnQVQGYmXNu3cz2yrL8qKsx6aoAHEuX00G6KgBz6So86KoAzCVs0GxzjNQfPgGgp9oIkbIsH9b3mQ0Gg29TjgGgh1KdvCAi+zbDqurYOZf8THcAPRUFyy9HfY1zbmvaI0KTbu2VFksG0GchdERkqKp79Ss+B6vpeUUeowHQKREZishWU2CdOXPmnXBWVlmWf+euFQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIvvXzbo3DOegIWjAAAAAElFTkSuQmCC','\\uploadFile\\qianming\\[B@456c8f3e.png',NULL,'2019-05-07 12:00:41','已批准','已采购');

/*Table structure for table `shop_cangku` */

DROP TABLE IF EXISTS `shop_cangku`;

CREATE TABLE `shop_cangku` (
  `shop_cangku_id` VARCHAR(100) DEFAULT NULL,
  `shop_cangku_name` VARCHAR(100) DEFAULT NULL,
  `shop_cangku_leixing` VARCHAR(100) DEFAULT NULL,
  `shop_cangku_user` VARCHAR(100) DEFAULT NULL,
  `shop_cangku_rongliang` INT(11) DEFAULT NULL,
  `shop_cangku_now_rongliang` INT(11) DEFAULT NULL,
  `shop_cangku_weizhi` VARCHAR(100) DEFAULT NULL,
  `shop_cangku_zhuangtai` VARCHAR(100) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `shop_cangku` */

INSERT  INTO `shop_cangku`(`shop_cangku_id`,`shop_cangku_name`,`shop_cangku_leixing`,`shop_cangku_user`,`shop_cangku_rongliang`,`shop_cangku_now_rongliang`,`shop_cangku_weizhi`,`shop_cangku_zhuangtai`) VALUES 
('013545adad4021','啦啦仓库','成品仓库','管理员B',4000,3400,'4栋A区','运用中'),
('013546574ad4021','哒哒仓库','半成品仓库','管理员B',2000,1996,'4栋A区','运用中');

/*Table structure for table `shop_gongyin` */

DROP TABLE IF EXISTS `shop_gongyin`;

CREATE TABLE `shop_gongyin` (
  `shop_gongyin_id` VARCHAR(100) DEFAULT NULL,
  `shop_gongyin_name` VARCHAR(100) DEFAULT NULL,
  `shop_gongyin_user` VARCHAR(100) DEFAULT NULL,
  `shop_gongyin_phone` VARCHAR(100) DEFAULT NULL,
  `shop_gongyin_address` VARCHAR(100) DEFAULT NULL,
  `shop_gongyin_lururen` VARCHAR(100) DEFAULT NULL,
  `shop_gongyin_lurutime` DATETIME DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `shop_gongyin` */

INSERT  INTO `shop_gongyin`(`shop_gongyin_id`,`shop_gongyin_name`,`shop_gongyin_user`,`shop_gongyin_phone`,`shop_gongyin_address`,`shop_gongyin_lururen`,`shop_gongyin_lurutime`) VALUES 
('d76f4577d369499286674b24125fa565','蒙牛','牛牛','22222222','天津市-天津市-河西区-566666','1','2019-04-15 15:22:47'),
('e62f104114fa45db8813df0e8ad55b0a','伊利','小伊','028-66256264','内蒙古-乌海市-海勃湾区-大草原66号','1','2019-04-15 15:23:43'),
('7196688232ad494bbb1b5810a27c3221','小米','雷军','028-6666666','四川省-成都市-金牛区-九里堤街道北路','1','2019-04-19 11:45:36'),
('92c51ccfc2474b9ca0465533680d52e3','哇哒哒','哇哒哒','哇哒哒','','1','2019-04-19 13:09:15'),
('a92e3ea0ef5a4808bbd1f5999ff53238','旺旺牛奶厂商','小李','124121516132','浙江省-嘉兴市-秀洲区-666号地区','1','2019-04-19 15:16:52'),
('d2f02c81086f401d844d4bb89f208469','','','','浙江省-嘉兴市-秀洲区-666号地区','1','2019-05-05 13:49:08');

/*Table structure for table `shop_info` */

DROP TABLE IF EXISTS `shop_info`;

CREATE TABLE `shop_info` (
  `shop_id` VARCHAR(100) DEFAULT NULL,
  `shop_name` VARCHAR(100) DEFAULT NULL,
  `shop_isbn` VARCHAR(100) DEFAULT NULL,
  `shop_produced_time` VARCHAR(100) DEFAULT NULL,
  `shop_guarantee_time` VARCHAR(100) DEFAULT NULL,
  `shop_price` DOUBLE DEFAULT NULL,
  `shop_size` INT(10) DEFAULT NULL,
  `shop_gongyin_name` VARCHAR(100) DEFAULT NULL,
  `shop_int_cangku` VARCHAR(100) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `shop_info` */

INSERT  INTO `shop_info`(`shop_id`,`shop_name`,`shop_isbn`,`shop_produced_time`,`shop_guarantee_time`,`shop_price`,`shop_size`,`shop_gongyin_name`,`shop_int_cangku`) VALUES 
('137aa1541ab7437da696c0c0816b817f','旺旺','','','',2.5,0,'','啦啦仓库'),
('01cb23f73c6542cfade84006743cd870','旺旺（小装）',NULL,NULL,NULL,NULL,2,'小米','哒哒仓库'),
('d3fd17ab898d46e8a456939bb2cffb7e','旺旺（小装）',NULL,NULL,NULL,NULL,2,'伊利','哒哒仓库'),
('1481f111e6e74829a3a3b2e79a3e4182','牛乳',NULL,NULL,NULL,NULL,200,'蒙牛','啦啦仓库'),
('8018d9ffa09642a798311c77b46c0282','旺旺（小装）','ijfadlkalk','','',1.5,400,'伊利','啦啦仓库');

/*Table structure for table `shop_kucun` */

DROP TABLE IF EXISTS `shop_kucun`;

CREATE TABLE `shop_kucun` (
  `cangku_id` VARCHAR(100) DEFAULT NULL,
  `shop_name` VARCHAR(100) DEFAULT NULL,
  `shop_kucun_size` INT(11) DEFAULT NULL,
  UNIQUE KEY `shop_name` (`shop_name`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `shop_kucun` */

/*Table structure for table `shop_out` */

DROP TABLE IF EXISTS `shop_out`;

CREATE TABLE `shop_out` (
  `shop_out_id` VARCHAR(100) DEFAULT NULL,
  `shop_name` VARCHAR(100) DEFAULT NULL,
  `shop_before_size` INT(11) DEFAULT NULL,
  `shop_out_size` INT(11) DEFAULT NULL,
  `shop_final_size` INT(11) DEFAULT NULL,
  `shop_out_user` VARCHAR(100) DEFAULT NULL,
  `shop_out_time` DATETIME DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `shop_out` */

INSERT  INTO `shop_out`(`shop_out_id`,`shop_name`,`shop_before_size`,`shop_out_size`,`shop_final_size`,`shop_out_user`,`shop_out_time`) VALUES 
('2659f89f01544bf58235608e6eda5621','牛乳',10,1,9,'小李','2019-05-04 23:43:25'),
('183115296a21468c92a373893760e2dd','牛乳',9,5,4,'小李','2019-05-05 23:25:00'),
('96689b82d89a4db992527228153e0591','牛乳',3,1,2,'小李','2019-05-06 09:26:18'),
('2b4db76a85f040c99c553a790637d849','旺旺',2222,222,2000,'小李','2019-05-06 09:45:36'),
('ed42cd08539348f191a82cc0c3bde671','旺旺',2222,222,2000,'小李','2019-05-06 09:47:16'),
('aaea98808e0349209976988cdf688e4d','旺旺',2000,1000,1000,'小李','2019-05-06 09:47:28'),
('a5db77b3ae4345c1a5c2d75250da7068','旺旺',23,23,0,'小李','2019-05-06 09:54:15'),
('584038e010824c7f91841ba595986925','旺旺（小装）',300,100,200,'小李','2019-05-07 12:02:21');

/*Table structure for table `shop_panku` */

DROP TABLE IF EXISTS `shop_panku`;

CREATE TABLE `shop_panku` (
  `shop_panku_id` VARCHAR(100) DEFAULT NULL,
  `shop_panku_cangku_name` VARCHAR(100) DEFAULT NULL,
  `shop_panku_excel` VARCHAR(100) DEFAULT NULL,
  `shop_panku_excel_lujing` VARCHAR(100) DEFAULT NULL,
  `shop_panku_user` VARCHAR(100) DEFAULT NULL,
  `shop_panku_time` DATETIME DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `shop_panku` */

/*Table structure for table `shop_sales` */

DROP TABLE IF EXISTS `shop_sales`;

CREATE TABLE `shop_sales` (
  `shop_sales_id` VARCHAR(100) DEFAULT NULL,
  `shop_sales_shop` VARCHAR(100) DEFAULT NULL,
  `shop_sales_cangku` VARCHAR(100) DEFAULT NULL,
  `shop_sales_shop_size` VARCHAR(100) DEFAULT NULL,
  `shop_sales_shop_danjia` VARCHAR(100) DEFAULT NULL,
  `shop_sales_time` DATETIME DEFAULT NULL,
  `shop_sales_jine` DOUBLE DEFAULT NULL,
  `shop_sales_user` VARCHAR(100) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `shop_sales` */

INSERT  INTO `shop_sales`(`shop_sales_id`,`shop_sales_shop`,`shop_sales_cangku`,`shop_sales_shop_size`,`shop_sales_shop_danjia`,`shop_sales_time`,`shop_sales_jine`,`shop_sales_user`) VALUES 
('fee6b5b02f3042e19217d7a9a98088ee','旺旺','啦啦仓库','0','2.5','2019-05-07 12:05:24',0,'1'),
('72ac2136e7484d34a1cc7162842c0f14','旺旺（小装）','啦啦仓库','100','1.5','2019-05-07 12:06:04',150,'1');

/*Table structure for table `shop_wuliao` */

DROP TABLE IF EXISTS `shop_wuliao`;

CREATE TABLE `shop_wuliao` (
  `shop_wuliao_id` VARCHAR(100) DEFAULT NULL,
  `shop_wuliao_name` VARCHAR(100) DEFAULT NULL,
  `shop_wuliao_type` VARCHAR(100) DEFAULT NULL,
  `shop_wuliao_guige` VARCHAR(100) DEFAULT NULL,
  `shop_wuliao_danwei` VARCHAR(100) DEFAULT NULL,
  `shop_wuliao_qubie` VARCHAR(100) DEFAULT NULL,
  `shop_wuliao_leixing` VARCHAR(100) DEFAULT NULL,
  `shop_wuliao_lururen` VARCHAR(100) DEFAULT NULL,
  `shop_wuliao_lurutime` DATETIME DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `shop_wuliao` */

INSERT  INTO `shop_wuliao`(`shop_wuliao_id`,`shop_wuliao_name`,`shop_wuliao_type`,`shop_wuliao_guige`,`shop_wuliao_danwei`,`shop_wuliao_qubie`,`shop_wuliao_leixing`,`shop_wuliao_lururen`,`shop_wuliao_lurutime`) VALUES 
('2b99cae0dceb4b0292b2ff6103d158c4','牛乳','饮料','500ml/灌','ml','原厂库物料','半成品物料','1','2019-04-23 11:58:16'),
('d9e291d7268d4162b8b32c5cc741e45c','旺旺（小装）','饮料','125ml/瓶','ml','原厂库物料','成品物料','1','2019-05-06 13:39:32'),
('af247ddf005349b1a7440331182cc594','旺旺（中瓶）','饮料','250ml/瓶','ml','原厂库物料','','1','2019-05-06 13:40:00');

/*Table structure for table `users_info` */

DROP TABLE IF EXISTS `users_info`;

CREATE TABLE `users_info` (
  `users_id` VARCHAR(100) DEFAULT NULL,
  `users_zhanghao` VARCHAR(100) DEFAULT NULL,
  `users_niceng` VARCHAR(100) DEFAULT NULL,
  `users_touxiang` LONGTEXT,
  `users_pws` VARCHAR(100) DEFAULT NULL,
  `users_name` VARCHAR(100) DEFAULT NULL,
  `users_sex` VARCHAR(100) DEFAULT NULL,
  `users_birth` VARCHAR(100) DEFAULT NULL,
  `users_mail` VARCHAR(100) DEFAULT NULL,
  `users_phone` VARCHAR(100) DEFAULT NULL,
  `users_address` VARCHAR(100) DEFAULT NULL,
  `users_zc_time` DATETIME DEFAULT NULL,
  `users_dl_time` DATETIME DEFAULT NULL,
  `users_dl_address` VARCHAR(100) DEFAULT NULL,
  `users_dl_ip` VARCHAR(100) DEFAULT NULL,
  UNIQUE KEY `users_zhanghao` (`users_zhanghao`),
  UNIQUE KEY `users_niceng` (`users_niceng`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
SELECT * FROM users_info