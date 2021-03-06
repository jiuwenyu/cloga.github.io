---
author: admin
comments: true
date: 2013-04-11 04:23:13+00:00
layout: post
slug: 'socialanalyticstoolsintro'
title: 社交网络分析工具介绍
wordpress_id: 1914
categories:
- Python
- R
- SNA
---

尽管Facebook的股价表现差强人意，新浪微博的商业化也遥遥无期，但是，社交网络分析仍然是数据分析中的一个热门话题。我也一直在关注这类内容，下面就为大家介绍一下我所接触到的社交网络分析工具。


# 一、web工具篇


让我们先来看一下市面上比较成熟的产品。


## 1、[微博风云榜](http://www.tfengyun.com/)


[caption id="attachment_1916" align="alignleft" width="364"][![微博风云榜](http://www.cloga.info/wp-content/uploads/2013/04/微博风云.jpg)](http://www.cloga.info/wp-content/uploads/2013/04/微博风云.jpg) 微博风云榜[/caption]

[caption id="attachment_1917" align="alignleft" width="119"][![微博风云榜菜单](http://www.cloga.info/wp-content/uploads/2013/04/fengyun01.jpg)](http://www.cloga.info/wp-content/uploads/2013/04/fengyun01.jpg) 微博风云榜菜单[/caption]





















从菜单栏可以看到微博风云榜提供了传播分析，舆情监测，内容发布，数据报告等全面的社交分析服务。同时也提供了数据接口，尽管目前只有两个接口，用户信息接口和高级搜索接口，这两个接口就应该可以满足大部分数据服务商的数据需求。

此外，微博风云榜也有自己的社交影响力查询，可以用于比较不同微博账号的影响力，有点国内的[Klout](http://klout.com/home)的味道。

总的来说，微博风云榜其实已经不仅仅是一个社交分析工具，它集成了社交传播分析，粉丝分析，舆情监测，内容发布等与社交网络运营管理相关的内容，如果再加上Social CRM就更加完美。


## [2、知微](http://www.weiboreach.com/)


[caption id="attachment_1923" align="aligncenter" width="564"][![知微](http://www.cloga.info/wp-content/uploads/2013/04/Screen-Shot-2013-04-11-at-8.31.17-AM.png)](http://www.cloga.info/wp-content/uploads/2013/04/Screen-Shot-2013-04-11-at-8.31.17-AM.png) 知微[/caption]

与微博风云榜相比，知微则更专注于微博的传播的分析，普通版即支持转发数小于1000条的微博的传播分析。知微提供了传播分析全面的数据，包括传播路径图，转发层级，转发内容的词云，水军识别，地域分布...……<!-- more -->


## 3、[北大PKUVIS微博可视分析工具](http://vis.pku.edu.cn/weibova/weiboevents/)


[caption id="attachment_1924" align="aligncenter" width="613"][![PKUVIS微博可视分析工具](http://www.cloga.info/wp-content/uploads/2013/04/Screen-Shot-2013-04-11-at-8.39.47-AM.png)](http://www.cloga.info/wp-content/uploads/2013/04/Screen-Shot-2013-04-11-at-8.39.47-AM.png) PKUVIS微博可视分析工具[/caption]

这是由北京大学可视化实验开发的一个微博分析工具。与微博风云榜类似，也是专注于微博传播分析的工具，与知微相比，可以分析转发数更多的微博，同时也支持基于事件的传播分析，支持的布局也更加多样。


# 二、桌面工具篇


了解相对比较成熟的web工具后，让我们看一下有哪些可以用于社交网络分析的桌面工具。


## [1、Gephi](http://www.gephi.org/)


首先介绍一下Gephi，Gephi在社交网络分析领域称得上是明星级的分析工具，它有Java开发的一款开源桌面社交分析工具，有复杂网络图表领域的Photoshop的美誉。

[caption id="" align="aligncenter" width="580"]![Gephi](https://gephi.org/wp-content/themes/gephi/images/illustrations/home_screenshot.jpg) Gephi[/caption]

Gephi也提供了一个用于复杂网络的文件格式：GEXF，这个文件格式已经成为复杂领域的一个文件标准。

Gephi已被广泛的用于科研与教学，比如Coursera中的[Social Network Analysis](https://www.coursera.org/course/sna)课程就是用Gephi讲授的。[Ooof也提供了Gephi的中文教程](https://www.udemy.com/gephi/ )。


## [2、NodeXL](nodexl.codeplex.com/)


NodeXL是用于复杂网络分析的一个Excel插件，相对于Gephi，NodeXL更容易入门。它提供了一个Excle模板，按照模板添加数据后就可以进行相关的分析。

[caption id="" align="aligncenter" width="353"]![NodeXL](http://download.codeplex.com/Download?ProjectName=nodexl&DownloadId=310439) NodeXL[/caption]

关于应用NodeXL进行社交网络分析，可以参见：[Analyzing Social Media Networks with NodeXL Insights from a Connected World](http://ishare.iask.sina.com.cn/f/18252478.html)（感谢万能的新浪爱问）


# 三、程序包|库


最后再让我们看一下相关的程序包或开源的库。


## [1、NetworkX](networkx.github.io/)


NetworkX是一个用于复杂网络分析的Python包，内置了常用的图与复杂网络分析算法，可以方便的进行复杂网络数据分析、仿真建模。

[caption id="attachment_1936" align="aligncenter" width="835"][![NetworkX](http://www.cloga.info/wp-content/uploads/2013/04/networkX.jpg)](http://www.cloga.info/wp-content/uploads/2013/04/networkX.jpg) NetworkX[/caption]


## [2、igraph](http://igraph.sourceforge.net/)


igraph是一个创建操作复杂网络图的软件包，有C、Python和R三种语言的接口。

[caption id="attachment_1937" align="aligncenter" width="538"][![igraph](http://www.cloga.info/wp-content/uploads/2013/04/igraph.jpg)](http://www.cloga.info/wp-content/uploads/2013/04/igraph.jpg) igraph[/caption]


## [3、NodeXL](http://nodexl.codeplex.com/discussions/71182?ProjectName=nodexl)


NodeXL除了Excel之外，也提供一个用于复杂网络分析的.net类库。


## [4、sigma.js](http://sigmajs.org/examples.html)


sigma.js是开源的轻量级JS框架，使用HTML的Canvans来生成Gephi图表样式，可以接收的数据源格式为GEXF文件（Gephi提出的数据格式。）

前面提到的微博风云榜、知微就是使用这个框架来生成传播图。

[caption id="attachment_1938" align="aligncenter" width="713"][![sigma.js](http://www.cloga.info/wp-content/uploads/2013/04/sigma.jpg)](http://www.cloga.info/wp-content/uploads/2013/04/sigma.jpg) sigma.js[/caption]


# 四、数据获取篇


前面提到的是数据分析和图形展现方面的工具，最后再聊一下数据获得的部分，主要的数据源是来自新浪微博，下面介绍R和Python的两个SDK。


## [1、Rweibo](http://jliblog.com/app/rweibo)


Rweibo是一个新浪微博的R语言SDK，作为library在R环境中调用，对新浪微博提供的接口进行了实现（见[新浪微博API](http://open.weibo.com/wiki/API%E6%96%87%E6%A1%A3_V2)），可以进行微博信息获取、用户信息获取、搜索、发表微博等操作。该应用通过OAuth的方式授权，使用者首先需要到[新浪微博开放平台](http://open.weibo.com/devel.php)申请一个新的应用，获取App Key和App Secret，然后在R环境中按照提示注册一个应用，从而进行各项操作。

一个特色是作者提供了一个搜索接口，通过爬取页面来获得微博搜索结果页面的信息。


## [2、sinaweibopy](http://michaelliao.github.io/sinaweibopy/)


sinaweibopy是Python专用的支持新浪微博API的OAuth 2客户端，无依赖，100%纯Py，单个文件，代码简洁，运行可靠，也是新浪微博官方推荐的Python SDK。

关于社交网络分析的工具就介绍这些，马上动起手来尝试自己的社交网络分析项目吧~


