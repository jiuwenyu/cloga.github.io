---
author: admin
comments: true
date: 2012-12-24 07:42:27+00:00
layout: post
slug: 'socialgrpah'
title: 网络分析与图简介
wordpress_id: 1770
categories:
- SNA
tags:
- social graph
---

[caption id="attachment_1774" align="aligncenter" width="300"][![Friend Visualization](http://www.cloga.info/wp-content/uploads/2012/12/Facebook-300x166.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/facebook/) Friend Visualization[/caption]

前面有介绍过[使用Gephi来制作传播图](http://www.cloga.info/2012/11/25/%e6%96%b0%e6%b5%aa%e5%be%ae%e5%8d%9a%e4%bc%a0%e6%92%ad%e8%b7%af%e5%be%84%e5%9b%be%e7%9a%84%e5%88%b6%e4%bd%9c/)，图是Social Network分析最常用的表现形式和方式，这篇文章介绍一下基本的相关知识。[点击查看原始文档](http://mlg.ucd.ie/summer)


## Graph的相关基本概念


图（Graph）：图是用来表示一组物体之间的关系的方式。

节点（Node）：节点是指要分析的物体，每一个物体就是一个节点，比如在Social Network中每个人就是一个节点。

边（Edge）：Graph中两个节点间的连线，用于表示两个节点的关系。比如在Social Network中两个人的关注关系，微博传播中转发关系。

度（Degree）：节点的度是指与其相连的边数，如果一个节点有3个边，那么这个节点的度就是3。

有向图（Directed Graph）：边代表的关系具有方向的图。比如微博的关注关系，就是有方向的。

输入度（In-degree）：有向图中一个节点收到的边。

输出度（Out-degree）：有向图中一个节点发出的边。

无向图（Undirected Graph）：边代表的关系没有方向的图。

[caption id="attachment_1771" align="aligncenter" width="300"][![Direct Graph](http://www.cloga.info/wp-content/uploads/2012/12/Direct-Graph-300x101.jpg)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/direct-graph/) Direct Graph[/caption]

<!-- more -->

加权图（Weighted Graph）：每个边权重不同的图，边的权重可以代表相似度，距离或者链接成本等。加权图与有向和无向是两个不同的维度。因此，在实际应用中会看到有向加权图（边既有方向又有权重）和无向加权图（边有权重但没有方向）。

[caption id="attachment_1772" align="aligncenter" width="300"][![Weighted Graph](http://www.cloga.info/wp-content/uploads/2012/12/weighted-Graph-300x104.jpg)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/weighted-graph/) Weighted Graph[/caption]

属性图（Attributed Graphs）:节点和边上可以承载更多的属性，这类图叫做属性图。

[caption id="attachment_1773" align="aligncenter" width="300"][![Attributed Graph](http://www.cloga.info/wp-content/uploads/2012/12/Attributed-Graph-300x66.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/attributed-graph/) Attributed Graph[/caption]

自我网络（Ego Networks）：自我网络关注的不是网络整体而是以个体为中心，通过收集自我焦点关联的节点的信息，可以为个体构建一个局部网络。

[caption id="attachment_1775" align="aligncenter" width="300"][![Ego Networks](http://www.cloga.info/wp-content/uploads/2012/12/Ego-Networks-300x119.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/ego-networks/) Ego Networks[/caption]

偶图（Bipartite Graphs）：在偶图中节点被分成两个独立的集合，以确保同一集合中任意两个节点都不共享一条边。

[caption id="attachment_1776" align="aligncenter" width="300"][![Actors-Movies Bipartite Graphs](http://www.cloga.info/wp-content/uploads/2012/12/Actors-Movies-Bipartite-Graphs-300x138.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/actors-movies-bipartite-graphs/) Actors-Movies Bipartite Graphs[/caption]

多关系网络（Multi-Relational Networks）：在许多社交网络分析（SNA）的应用程序中，在节点间可能存在多种关系。在一种关系网络中节点间距离很近，而在另一种中则可能距离很远。

[caption id="attachment_1777" align="aligncenter" width="300"][![Multi-Relational Networks](http://www.cloga.info/wp-content/uploads/2012/12/Multi-Relational-Networks-300x159.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/multi-relational-networks/) Multi-Relational Networks[/caption]

路径（Path）：图中从一个节点到另一个节点的一系列的边叫做路径。路径的长度就是边的个数，通常是寻找两个节点间的最短路径。

图的直径：图的直径是指所有节点间的最短路径中的最长的那条。

连通图（Connected Graph）：每个节点间都用路径连通的图。反之就是非连通图（Disconnected Graph）。

连通分支（Connected Component）：如果一个连通图作为非连通图的一个成分，则这个连通图称为非连通图的连通分支。在许多现实的社交网络中，大部分节点将属于一个巨大的分支。

[caption id="attachment_1779" align="aligncenter" width="300"][![3 connected components](http://www.cloga.info/wp-content/uploads/2012/12/3-connected-components-300x97.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/3-connected-components/) 3 connected components[/caption]


## 向心性的计算


临近节点（Neighbourhood）：是指与它有边直接相连的节点（不包括它自身）。

集中系数（Clustering Coefficient）：节点的集中系数=其临近的节点中有边相连的节点数/其临近节点总数。图的集中系数是其每个节点的聚类系数的平均数。节点的集中系数表现了这个节点的临近节点的集中情况。图的集中系数表明图的集中水平。

[caption id="attachment_1780" align="aligncenter" width="300"][![Clustering Coefficient](http://www.cloga.info/wp-content/uploads/2012/12/Clustering-Coefficient-300x104.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/clustering-coefficient/) Clustering Coefficient[/caption]

度中心性（Degree Centrality）：计算一个节点的边数，度中心性关注单个节点。

Hub节点：度很高的节点。在网络中通常扮演重要的角色。对于一个有向的网络来说，输入度通常用来代表受欢迎程度。

[caption id="attachment_1781" align="aligncenter" width="300"][![Degree](http://www.cloga.info/wp-content/uploads/2012/12/Degree-300x160.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/degree/) Degree[/caption]



中介中心性（Betweenness Centrality）：出现在许多其他节点间最短路径上的节点有较高的中介中心性分数。

[caption id="attachment_1782" align="aligncenter" width="300"][![Betweeness Centrality](http://www.cloga.info/wp-content/uploads/2012/12/Betweeness-Centrality-300x173.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/betweeness-centrality/) Betweeness Centrality[/caption]

节点A的度中心性高于节点H，因为节点H的直接连接更少。而节点H有更高的中介中心性，它在这个网络中扮演经纪人的角色，它处在网络内许多节点交往的路径上，因此，它具有控制其他人交往的能力。

特征向量中心性（Eigenvector Centrality）：一个节点的特征向量中心性与其临近节点的中心性得分的总和成正比。与重要的节点连接的节点更重要。有少量有影响的联系人的节点其中心性可能超过拥有大量平庸的联系人的节点。这点与PR值类似。

特征向量中心性的计算：

1、计算图的成对临近矩阵的特征分解

2、选择有最大特征值的特征向量

3、第i个节点的中心性等于特征向量中的第i元素


## 随机网络（Random Networks）以及小世界网络（Small World Networks）


Erdős–Rényi随机图模型（Random Graph Model）：一个有_n_个非连通节点的图，以概率_p_在每对节点间创建边。

[caption id="attachment_1787" align="aligncenter" width="300"][![Random Networks](http://www.cloga.info/wp-content/uploads/2012/12/Random-Networks-300x107.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/random-networks/) Random Networks[/caption]

小世界网络：

1、米尔格拉姆（著名的社会心理学家，曾主持服从实验）的小世界实验（Small World Experiment）：

向内布拉斯加州随机选出的人发送一个包裹，让他们将这个包裹送给波士顿州的一名股票经纪人。要求他们将这个包裹转寄给可能认识这个股票经纪人的人。

尽管大部分节点不是直接连接，但是，每个节点可以通过一个相对较少的几次传递与其他节点相连。

2、凯文·贝肯的六度（Six Degrees of Kevin Bacon）：基于小世界网络的一个室内游戏

从互联网电影数据库（IMDB）找出演员间合作的图。

一个演员的贝肯数是指他与贝肯相连最短路径的度数。

[caption id="attachment_1789" align="aligncenter" width="300"][![Bancon Number](http://www.cloga.info/wp-content/uploads/2012/12/Bancon-Number-300x63.jpg)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/bancon-number/) Bancon Number[/caption]

3、小世界网络的典型属性：

高集中系数

短平均路径

很多hub节点

构建一个直径较大的连通图，然后随机在其上添加几条边，图的直径将快速变小。

小世界网络有许多局部的联接和少量的“捷径”。

4、生成小世界网络：

创建_n_个节点的环，每一个节点与其最近的_k_个邻近节点相连

以概率_p_将每个节点与某个目标节点相连。

[caption id="attachment_1790" align="aligncenter" width="300"][![small world network](http://www.cloga.info/wp-content/uploads/2012/12/small-world-network-300x91.jpg)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/small-world-network/) small world network[/caption]


## 小团体（Clique）


小团体（Clique）：是指互相认识的一个社交群组（即每一对节点间都有边。）

极大团（Maximal Clique）：当一个团不是图中其他团的子集时称为极大团。

最大团（Maximum Clique）：当一个团的规模大于等于图中的其他团时称为最大团。

[caption id="attachment_1792" align="aligncenter" width="119"][![Clique](http://www.cloga.info/wp-content/uploads/2012/12/Clique.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/clique/) Clique[/caption]


## 团体发现（Community Detection）


人们经常对在一个节点网络中识别团体很感兴趣

下图反映了在讨论2004年美国大选的博客中两个截然不同的群体

在网页上的链接可以反映交织的网络以及一些突出的网站。在这种情况下，2004年美国大选前政治博客的网络结构反映了两个自然和独立的群组。

[caption id="attachment_1794" align="aligncenter" width="404"][![Community Detection](http://www.cloga.info/wp-content/uploads/2012/12/Community-Detection.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/community-detection/) Community Detection[/caption]

团体（Community）/类别（Cluster）/模块（Module）存在许多种定义：



	
  * 一组有共同性质或在图中扮演类似角色的节点[Fortunato, 2010]

	
  * 一个节点子集其中节点间联系密集，而到其他团体的边则密度较小[Girvan & Newman, 2002]


[caption id="attachment_1797" align="aligncenter" width="316"][![Girvan & Newman ,2002](http://www.cloga.info/wp-content/uploads/2012/12/Girvan-Newman-2002.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/girvan-newman-2002/) Girvan & Newman ,2002[/caption]


## 图的分割（Graph Partitioning）


目的：将图的节点分成用户指定数量的独立群组，用于优化与切分边相关的标准。

[caption id="attachment_1798" align="aligncenter" width="458"][![Graph Partitioning](http://www.cloga.info/wp-content/uploads/2012/12/Graph-Partitioning.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/graph-partitioning/) Graph Partitioning[/caption]

最小切分（Min-cut）：就是找到一种分割使边的个数或边的权重最小。

近期的做法是使用更复杂的标准（即标准化分割）以及应用多层次的策略来扩展到大图。

[Graclus [Dhillon et al, 2007]](http://www.cs.utexas.edu/users/dml/Software/graclus.html)

存在的问题：需要预先制定分割的数量，切分原则通常基于聚类层次的强假设。


## 层次聚类（Hierarchical Clustering）


根据相似度计算构建一个聚类树来识别高相似度的节点组。

有两类基本算法：



	
  * 聚合：从每个节点做为一个单独的群体开始，应用自下而上的策略，合并每个层次上最相似的群体。

	
  * 拆分：从包含所有节点的单个群体开始，应用自上而下的策略，将每个层次上选定的群体分为两个子群体。


[caption id="attachment_1799" align="aligncenter" width="318"][![Hierarchical Clustering](http://www.cloga.info/wp-content/uploads/2012/12/Hierarchical-Clustering.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/hierarchical-clustering/) Hierarchical Clustering[/caption]

应用在团体发现时的问题：



	
  * 如何从多种不同的聚类方式中进行选择？

	
  * 在图是否真的存在层次结构？

	
  * 通常对大图的扩展性很差




## 模块度最优化（Modularity Optimisation）


Newman & Girvan [2004]提出了分割质量的测量



	
  * 随机图不应该有群体结构

	
  * 通过比较实际的节点密度与随机图中的节点期望密度里验证群体的存在

	
  * Q = (群体中存在的节点数) − (群体中期望存在的节点数)


应用聚合技术迭代合并节点组组成更大的群体，使模块度在合并后提升。

近期出现的模块度最大化的高效贪婪方法可以将图的规模扩展到10的9次方个节点。

[Louvain Method [Blondel et al, 2008]](http://findcommunities.googlepages.com)

应用在团体发现时的问题：



	
  * 图的总节点数控制哪个团体被识别[Fortunato, 2010]

	
  * 仅将节点分配给一个团体是否合理？




## 重叠VS不重叠


在现实的社交网络中，一个节点可能属于多个团体。

[caption id="attachment_1800" align="aligncenter" width="318"][![Overlapping Networks](http://www.cloga.info/wp-content/uploads/2012/12/Overlapping-Networks.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/overlapping-networks/) Overlapping Networks[/caption]



在许多的现实网络中，真正的“非重叠”团体很少大规模出现[Leskovec et al, 2008]。

团体重叠的普遍存在，使得无法分割网络而不拆分团体[Reid et al, 2011]。

[caption id="attachment_1801" align="aligncenter" width="300"][![Overlapping In Large Graph](http://www.cloga.info/wp-content/uploads/2012/12/Overlapping-Networks01-300x143.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/overlapping-networks01/) Overlapping In Large Graph[/caption]


## 重叠的团体发现


CFinder:基于小团体渗透技术(clique percolation method [Palla et al, 2005])的一种算法。

K-Clique识别：是完全连接的K各节点的子图。

如果一对K-Clique共享K-1Clique，那么，这两个K-Clique是临近的。

从最大的K-Cliques的组合就可以构成重叠的团体。

K-Cliques的组合是指可以通过临近的K-Clique互相达到的一组K-Clique。

[caption id="attachment_1802" align="aligncenter" width="219"][![4-Cliques](http://www.cloga.info/wp-content/uploads/2012/12/4-cliques.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/4-cliques/) 4-Cliques[/caption]

贪婪小团体扩展（Greedy Clique Expansion，GCE）：识别不同的小团体作为种子，通过优化本地适应性函数贪婪扩展这些种子[[Lee et al, 2010]](https://sites.google.com/site/greedycliqueexpansion)。

MOSES：识别高度重叠的团体的可扩展方法[[McDaid et al, 2010](https://sites.google.com/site/aaronmcdaid/moses)]。



	
  * 随机选择一条边，在这个边周围贪婪地扩展一个团体，以便优化目标函数。

	
  * 删除“低质量”的团体

	
  * 通过重新分配个别节点对团体进行微调




## 动态团体发现（Dynamic Community Finding）


在许多社交网络分析任务中，需要分析随着时间变化，团体是如何创建和发展的。

通常以“线下的”方式检查大量网络的快照来进行这项研究。

[caption id="attachment_1803" align="aligncenter" width="300"][![Snapshot of Network](http://www.cloga.info/wp-content/uploads/2012/12/Snapshot-of-Network-300x103.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/snapshot-of-network/) Snapshot of Network[/caption]

可以用生命周期中的关键事件来描述动态团体的特征[Palla et al, 2007; Berger-Wolf et al, 2007]。

[caption id="attachment_1804" align="aligncenter" width="300"][![Dynamic Community](http://www.cloga.info/wp-content/uploads/2012/12/Dynamic-Community-300x151.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/dynamic-community/) Dynamic Community[/caption]

为图的每个快照应用团体发现算法。

将新生成"后续团体"与过去发现的团体进行匹配。

[caption id="attachment_1805" align="aligncenter" width="300"][![Dynamic Community Finding](http://www.cloga.info/wp-content/uploads/2012/12/Dynamic-Community-Finding-300x105.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/dynamic-community-finding/) Dynamic Community Finding[/caption]

[动态团体跟踪软件[Greene et al, 2010]](http://mlg.ucd.ie/dynamic)

[caption id="attachment_1806" align="aligncenter" width="214"][![Dynamic Community Evolution ](http://www.cloga.info/wp-content/uploads/2012/12/Dynamic-Community01.png)](http://www.cloga.info/2012/12/24/%e7%bd%91%e7%bb%9c%e5%88%86%e6%9e%90%e4%b8%8e%e5%9b%be%e7%ae%80%e4%bb%8b/dynamic-community01/) Dynamic Community Evolution[/caption]
