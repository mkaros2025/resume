#import "template.typ": *

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标
#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-linux = icon("icons/fa-linux.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-windows = icon("icons/fa-windows.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")
#let fa-trophy = icon("icons/fa-trophy.svg") // 为专业竞赛添加奖杯图标
#let fa-laptop-code = icon("icons/fa-laptop-code.svg") // 计算机科研图标

// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 10pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1cm,
    bottom: 1.8cm,
    left: 2cm,
    right: 2cm,
  ),

  // 照片设置 - 已注释掉照片
  // photograph: "profile.jpg",
  // photograph-width: 7em, // 缩小照片尺寸
  // gutter-width: 1.5em,
)[
  // 缩小名字与信息的间距
  #set block(spacing: 0.3em)
  = 某某

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) 133-3333-3333",
    ),
    (
      icon: fa-envelope,
      content: "liming@example.com",
      link: "mailto:liming@example.com",
    ),
    (
      icon: fa-github,
      content: "github.com/liming-dev",
      link: "https://github.com/liming-dev",
    ),
  )
][]

// 调整块间距
#set block(spacing: 0.5em) // 略微增加块间距提高可读性

== #fa-graduation-cap 教育背景

// 教育背景顶部信息
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (auto),
  gutter: 0.5em,
  align(left)[*某某大学*],
  align(center)[*某某学院*],
  align(center)[*某某专业*],
  align(right)[2020.09 - 2024.06]
)

// 分隔线
#v(0.1em)
#line(length: 100%, stroke: 0.03em + rgb("#cccccc"))
#v(0.1em) // 增加一点底部间距

// 教育内容部分
#grid(
  columns: (1fr),
  rows: (auto, auto, auto, auto), // 添加第四行用于获奖情况
  gutter: 0.7em, // 增加行间距提高可读性
  [
    *均分:* GPA: 5 / 5 · Rank: 0%
  ],
  [
    *核心课程:* 数据结构、算法分析、操作系统、计算机网络、数据库系统
  ],
  [
    *英语能力:* CET-6: 620 #h(0.5em) IELTS: 7.0
  ],
  [
    *获奖情况:* 互联网+大赛省级金奖(2022), ACM-ICPC区域赛铜奖(2021)
  ]
)


== #fa-wrench 专业技能

// 精简且专业的技能展示
#grid(
  columns: (1fr),
  rows: (auto, auto),
  gutter: 0.8em, // 增加行间距
  [
    *编程语言:* C++17, Go, Python 
    #h(0.8em)·#h(0.8em)
    *操作系统:* #fa-linux Debian/RedHat Linux系统配置与管理
  ],
  [
    *开发工具:* Makefile, CMake, XMake, Docker, Kubernetes
    #h(0.8em)·#h(0.8em)
    *AI技术:* 本地AI模型部署，大语言模型应用实践
  ]
)


== #fa-code 项目经历

#item(
  link(
    "https://github.com/liming-dev/cloud-platform",
    [ *轻量级容器云平台* ],
  ),
  [ *实验室项目* ],
  date[ 2022 年 03 月 – 2022 年 12 月 ],
)

#tech[ Golang, Docker, Kubernetes ]

基于 Kubernetes 的容器管理平台，提供Web界面的容器编排服务

- 设计实现了基于 RBAC 的多租户权限管理系统
- 开发了容器资源动态伸缩和负载均衡模块
- 使用 Prometheus 和 Grafana 构建监控告警系统

#item(
  link(
    "https://github.com/liming-dev/distributed-cache",
    [ *分布式缓存系统* ],
  ),
  [ *个人项目* ],
  date[ 2023 年 01 月 – 2023 年 04 月 ],
)

#tech[ Golang, Redis, etcd ]

一个支持分布式部署的高性能缓存系统

- 实现了一致性哈希算法进行数据分片
- 采用 Raft 协议保证集群一致性
- 支持缓存自动过期和 LRU 淘汰策略


== #fa-trophy 专业竞赛

#item(
  [ *互联网+ 大学生创新创业大赛* ],
  [ *省级金奖* ],
  date[ 2022 年 10 月 ],
)

#item(
  [ *ACM-ICPC 亚洲区域赛* ],
  [ *铜奖* ],
  date[ 2021 年 12 月 ],
)

#item(
  [ *中国高校计算机大赛-人工智能创意赛* ],
  [ *国家三等奖* ],
  date[ 2022 年 8 月 ],
)

#item(
  [ *"蓝桥杯"全国软件和信息技术专业人才大赛* ],
  [ *省级一等奖* ],
  date[ 2021 年 5 月 ],
)


== #fa-laptop-code 科研经历

#item(
  [ *基于深度学习的XXX检测系统研究* ],
  [ *导师：张三 教授* ],
  date[ 2022 年 09 月 – 2023 年 06 月 ],
)

#v(-0.1em) // 减少空白
- 参与设计并实现了基于CNN+Transformer的目标检测模型
- 优化了数据预处理流程，将模型精度提高了5.2%
- 完成系统部署与算法优化，发表论文一篇（XYZ期刊）

#item(
  [ *分布式高性能计算平台开发* ],
  [ *导师：李四 副教授* ],
  date[ 2021 年 10 月 – 2022 年 05 月 ],
)

#v(-0.1em) // 减少空白
- 负责分布式计算框架的核心功能模块开发
- 使用C++实现了一套高效的任务调度算法
- 系统在校内多个科研项目中得到应用