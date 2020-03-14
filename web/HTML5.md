# 注释 <!--  --> 
# 基本知识点
  * html的作用应限定为内容，任何与排版、样式有关的调整都交由css处理
  * 标签分为单标签`<link/>`和双标签`<a></a>`两种，标签具有属性(通用属性和私有属性)，属性值要用""括起来
  * html中的空格、回车、tab在浏览器解析时是无效的，只是在源码中起到组织代码的作用，多个空格、回车、tab浏览器在页面中都只显示一个空格
  * 空格、回车、tab、注释都会占用传输带宽，在正式上线时应该用专门工具软件去除掉
  * 浏览器将所有的<>都视为标签，不论是否有效都将不显示在页面中
  * 实体(特殊字符)显示：&
  * 所有的标签都有四个通用属性：id name class style
  * `<meta charset="utf-8">`中设置编码格式需要与html文件保存时设置的编码格式保持相同

    </html>
# 结构元素标签
  结构元素标签一般不指定样式，指定样式时一般是在内部使用div标签来实现
  * header
    + 一般用于整个网页的头部
  * nav
  * footer
  * aside
    + 多用于侧边栏或侧边导航栏    
  * article
    + 表示页面中的主体部分或者与上下文不相关的独立内容，比如博客或页面中的一片独立的文章
  * section
    + 页面中的一个内容块，比如章节、区块，用于划分功能或内容区域
  * hgroup
  * address
  * time
  * details
    + 通过open属性实现下面子项的折叠与展开
    + summary标签显示概要信息
    + 目前兼容性不好
  * progress
    + 进度条
  * meter
    + 表示规定范围内的数量值
# HTML5结构元素使用规范示例
    <!DOCTYPE html> 声明文档类型
    <html lang="zh-cn"> 告诉浏览器此页面为中文页面

    <head>
      <meta charset="utf-8">
      <title>标题</title>
    </head>

    <body>
        <header>
             <h1>主标题</h1>
             <nav>
                 <ul>
                    <li>设备绑定</li>
                     <li>故障统计</li>
                     <li>政企用户</li>
                     <li>vlan数据</li>
                </ul>
            </nav>
        </header>

        <aside>
            <h1>标题</h1>
            <ul>
                <li>常用命令</li>
                <li>机房地图定位</li>
                <li>员工联系方式</li>
            </ul>
         </aside>

    
        <section>
            <article>
                <h2>评论标题</h2>
                <p>评论正文</p>
            </article>
        </section>
    
      
        <footer>
            <small>版权所有：....</small>
        </footer>
    </body>
    </html>

# HTML5全局属性
  * contentEditable 
  * designMode
  * hidden
  * spellcheck
  * tabindex
# 标签分类
  * 内联标签（行内属性标签）
      + `<span> <a>`
      + 默认同行显示不换行
      + 内容撑开宽度，默认不支持定义宽高（指定width和height属性无效）
      + 默认不支持margin、padding中的top和bottom
      + 代码换行被解析为空格,多个换行解析为一个空格，如果需要去除这个空格，需要在父级样式中添加font-size: 0px;
      + display:block;可以将内联标签转换为块级标签
  * 块级标签
      + `<div>`
      + 默认独占一行，默认宽度撑满父级的一行，定义宽度以后默认仍是独占一行
      + 支持所有css样式
      + display：inline;可以将块级标签转换为内联标签
  * 行内块级标签 inline-block
      + `<img>`
      + 可以使块级标签在同一行中显示，同时内联标签支持设置宽和高,如果没有设置宽高，由内容撑开大小
      + 可以让块级标签在同一行显示
      + 代码换行被解析为空格,多个换行解析为一个空格，如果需要去除这个空格，需要在父级样式中添加font-size: 0px;
  * 标签嵌套规范
      + `<p>`标签内部不能包含块级标签，内联标签使用dispaly：block没有问题
# 文本标签
  * h1~h6       
    标题字，最多6级，默认换行
  * b、i、u、br  
    粗体、斜体、下划线、换行
  * sup、sub    
    上标、下标
# 格式标签
  * br     
    换行，可以使用连续多个实现多次换行
  * p      
    段落，里面可以加入文字、列表、表格等
  * span
    行内标签，可以区分同一行内的内容
  * pre    
    按原文显示，可以把原文中的空格、回车、换行、tab显示处理
  * ul     
    无须列表，里面每一列表项使用li标签定义
  * ol     
    有序列表，里面每一列表项使用li标签定义
  * li     
    列表项，每个列表项使用一对“li标记
  * dl、dt、dd
    定义列表，自带标题
  * hr     
    水平分割线
# `<a>`标签(超链接)
  * a     
      + `<a>`用途
        - href="url"时，是超链接，会跳转到其他页面
        - href="文件或压缩包"时，会下载文件   
        - href="id名称"时，锚点
      + 当`<a>`标签没有链接内容时，使用#来指向当前页面` <a href="#">文字或图片</a> `
      + ` <a href="url">文字或图片</a>,<a href="" title="" target="_blank、_self ..."></a> `
      + 在`<head>`标签中使用`<base target="_blank"/>`可以指定页面中所有的`<a>`标签的默认打开方式
  * url    
    统一资源定位符包括一下部分：    
    协议：http、mail、ftp、tel    
    主机：www.zpbird.com    
    端口：80(默认可以不填)    
    资源：www/php/index.php    
    参数：？变量名1=值 & 变量名2=值    
  * 相对路径：    
    . 当前目录    
    .. 上一级目录    
    `<a href="./index.html">`    
    `<a href="../php/index.php">`    
  * 绝对路径：    
    从根目录开始查找    
    `<a href="http://www.zpbird.com/php/index.php">`    
# 锚点
  * a 锚点，实现在本页面中跳转
  * 定义具体文章锚点名称 `<a name="锚点名称"></a>`    
  * 引用锚点，通常为列表中镶套使用，实现目录跳转功能(本页面)，引用时锚点名称前加#号    
  * `<li><a href="#锚点名称"></a></li>`    
  * 引用其他页面的锚点，实现跳转的其他页面的特定位置    
  * `<li><a href="./test2.html#锚点名称"></a></li>`    
  * 如果不指定锚点名称，则默认返回页面头部 `<a href="#"></a>`    
  * 如果连#号都不加则显示当前服务器的目录和文件<a href=""></a>，这个属于危险语句，严格禁止(类似于漏洞)    
# 图片标签`<img/>`
  * `<img src="url"/>`
  * 实际使用中应该对不同大小需求的同一个图片制作不同分辨率的版本，不要对大图进行缩小、放大使用
  * `<img width="200">` 当单纯指定一个宽或高的属性时，会实现等比例缩放的效果
  * `<img width="50%">` 当使用百分比时，图片会随着浏览器页面的大小进行缩放，当制作响应式布局时会使用这种方式
  * `<img alt="">` 指定图片的提示标题，也便于搜索引擎查找图片
  * `<map>、<area>` 图片地图，在一个图片上加多个连接，但这个不利于搜索引擎查找关键字

# 表单
  * `<form></form>`标签
    + action 属性
    + method 属性 
    + target 属性
  * `<input/>`标签
    + type 属性
        - "submit" 提交按钮
        - "text"  文本输入框
        - "password" 密码输入框
        - "radio" 单选框
            1、多个单选框input标签通过指定相同的name属性值来达到多个选项选其一的效果
            2、通过在单选框input标签外侧套`<label></label>`标签可以实现点击文字即选中的效果,IE6下不兼容
            3、通过添加checked属性，可以设置为默认选中
            4、通过添加disabled属性，可以禁用
        - "checkbox" 复选框
            1、通过添加checked属性，可以设置为默认选中
            2、通过添加disabled属性，可以禁用
            3、通过在单选框input标签外侧套`<label></label>`标签可以实现点击文字即选中的效果,IE6下不兼容
        - "button" 单纯的按钮 
        - "file" 上传文件 
        - "image" "src" 提交图片
        - "reset" 重置清空
        - "hidden" 隐藏 
    + value 属性
        - 显示的文字
    + name 属性
        - 前端范围内基本不使用，通常使用name=""为后端预留
        - 用于将多个单选框标签组合成单选组
  * `<select></select>` 标签 下拉选课
    + `<option></option>` 标签 列表项
        - 默认选择第一项，通过使用selected属性可以设置默认值
  * `<textarea></textarea>`标签 文本域，用于填写大段文字
# 表格`<table></table>`
# 前端开发规范
  * 文件规范
      + 文件分类（存放、归档）
          - 通用类
              1. css
                  - base (公用样式)    
                     reset.css
                  - lib (第三方库样式)    
                     jquery-ui.css   
                  - ui (自定义ui样式)    
                       editor.css
          - 业务类
              1. css
                  - album（专辑）
                  - artist（歌手）
                  - toplist（排行版）
      + 文件引入
          - 外联样式 使用样式的主要方式
          - 内联样式 只针对当前页面的特殊设置可以使用内联样式
          - 行间样式 不推荐使用，与内容和样式分离的要求相悖
          - @import 避免使用，会引起页面重新渲染的性能问题           
      + 文件本身
          - 文件名
                1. css文件命名由小写字母、数字、中划线组成
          - 编码
                1. css文件使用UTF-8编码
  * 注释规范
      + 块状注释
          - 统一缩进
          - 在被注释对象之上
      + 单行注释
          - 文字两端加空格 可以避免中文字体编码引起的问题
          - 在被注释对象之上
      + 行内注释
          - 文字两端加空格 可以避免中文字体编码引起的问题
          - 在分号之后
      + 命名规范
          - css选择器命名规范
                1. 分类命名
                    - g-类名 全局分类
                    - m-类名 模块分类
                2. 命名格式
                    - 大小写 建议使用小写
                    - 命名长度 建议合理缩写
                3. 语义化命名
                    - 以内容语义命名，而不是以位置来命名
      + 书写规范
          - css代码书写规范
                1. 单行与多行 各有利弊，二选其一，统一遵守
                2. 空格与分号
                    - 缩进 2个或4个空格，自主选择
                    - 代码内空格 空格形式自主选择，但要统一
                    - 分号不要省略
                3. 属性顺序
                    - 根据属性的重要性顺序书写
                        1. 显示属性
                            - display
                            - visibility
                            - position
                            - float
                            - clear
                            - list-style
                            - top
                        2. 自身属性
                            - width
                            - height
                            - margin
                            - padding
                            - border
                            - overflow
                            - min-width
                        3. 文本属性和其他修饰
                            - font
                            - text-align
                            - text-decoration
                            - vertical-align
                            - white-space
                            - color
                            - background
                4. Hack方式 要统一
                    - IE6 _property:value 使用下划线前缀
                    - IE7 *property:value 使用星号前缀
                    - Hack顺序
                            其他浏览器>IE67(*)>IE6(_)
                5. 统一值格式
                    - color 一般统一使用十六进制颜色值
                    - url() 统一引号的使用：无、""、''
  * 其它规范
      + HTML规范
          - 文档声明    
                顶格首行，否则某些浏览器会出现问题
          - 闭合    
               所有标签必须闭合
          - 属性    
                属性值单双引号统一
          - 层级    
                1. 用缩进体系层级
                2. 标签正确嵌套，但嵌套不宜太深    
                   正确嵌套的意思是，例如：ul下面要直接嵌套li标签，不要直接嵌套其他标签
          - 注释    
                可以使用头尾两行注释将结构包起来
          - 标签大小写  同时标签和属性都使用小写 
          - other
                - id、class名称必须以字母开头
                - html标签使用tab进行缩进
                - 属性值必须加引号
                - ul、li / ol、li / dl、dt、dd 这些组合是拥有父子级关系的
                - p、h、dt标签里面不能嵌套块级标签
                - a标签不能嵌套a标签
                - 内联标签不能嵌套块级标签
      + 图片规范
          - 文件名称    
                - 语义
                - 长度
          - 保留源文件
          - 图片合并
                - 尽可能使用图片拼合技术sprite
                - sprite图片可以按模块、业务、页面来划分
# 页面优化
  * 页面优化的必要性
      + 提升页面响应速度
      + 对搜索引擎、屏幕阅读器友好
      + 提高页面可读性、维护性
  * 优化途径
      + 减少页面中的请求
          - 图片合并
              当页面存在很多小的图标文件时，可以合并成一个文件
          - css文件合并 
              1. 多个css文件合并成一个
              2. 避免使用import方式引入css文件
      + 减少页面调用资源文件的大小
          - 减小图片的大小
              1. 选择合适的图片格式    
                  png：多用于小图标和需要透明属性的图片    
                  jpg：大的图片或照片，不支持透明属性
              2. 压缩图片    
                  imageOptim、imageAlpha、JPEGmini...
          - 减小css文件的大小
              1. css值缩写    
                  margin、padding、border、border-radius、font、background等存在多个细分属性的使用缩写形式
              2. 省略值为0的单位    
                  0px = 0% = 0
          - 颜色值最短表示
          - css选择器合并
          - css文件压缩工具（去除多余空格）    
              YUI Compressor、cssmin ....
      + 提升页面性能
          - 加载顺序
              1. 链接css文件的`<link>`标签要放在头部，这样css先于文本标签加载，当浏览器解析到文本标签时可以顺畅到应用样式
              2. 链接js文件的`<script></script>`标签放在`</body>`闭合标签上面，所有内容标签之后，js脚本的加载和执行会阻塞其他资源的加载及页面渲染
          - 减少标签数量
          - 选择器长度 尽量使用简洁较短的选择器
          - 避免使用损耗性能大的css属性   
              expression表达式、filter、border-radius、border-shadow、gradients
          - 给图片设置宽高    
              1. 尽量不要缩放图片，而是使用与宽高相对应尺寸的图片
              2. 当不设置宽高或者图片尺寸与宽高不符时，浏览器会发生回流和重绘
          - 页面中css可以实现的效果尽量使用css处理    
              js处理效果会分别重绘每个处理的元素，css可以将多次渲染变成一次渲染
      + 通过编码规范，提高页面可读性和可维护性
          - 规范
              1. 缩进设置
              2. 变量、类等的命名规范
              3. 文件命名规范
          - 语义化
          - 尽量避免Hack    
              使用其他方式无法实现或代价太大时才使用Hack方法
          - 模块化思
          - 注释
# 模块化
  * 概念：一系列相关联的结构组成的整体，并且有一定的语义化结构，要多次出现在页面的不同部分或多个页面中时，可以使用模块化的方法，比如页面底部的分页器、图片轮播器
  * 模块化的优点
      + 有利于多人协同开发
      + 便于扩展和重用
      + 可读性、可维护性好
  * 模块化的方法
      + 为模块css类选择器进行分类命名（如：.m- .md-）
      + 以一个主选择器开头（模块根节点）
            - 一个模块只能有一个唯一的根节点，即根标签不能存在兄弟标签
      + 使用以主选择器开头的后代选择器（模块的子节点）
      + 例子
         - 结构    
                `<模块1>`                    模块根节点          
                    `<子元素1></子元素1>`      模块子节点    
                    `<子元素2></子元素2>`      模块子节点    
                `</模块1>`
         - 样式    
                模块1{}             以一个主选择器开头（模块根节点）    
                模块1 子元素1{}      使用以主选择器开头的后代选择器（模块的子节点）    
                模块1 子元素2{}    
      + 模块的扩展
         - 可以在已有的模块基础之上进行扩展
         - 在已有模块的根节点上新加类选择器，进行扩展，只需要对新出现的样式和结构设置css样式即可      
# 协作流程
  * 接口设计规范
      + 页面入口规范
          - 定义系统对外可以访问的入口、入口的配置信息
          - URL与TEMPLATE(页面展示模板)的接口
          - URL与API(异步请求)
          - 包含内容
                1. 基本信息
                2. url输入参数
                3. 模板列表
                4. 接口列表(异步接口)
                5.例子：
                    - 页面入口规范
                    - 访问地址：/dj/{id}/
                    - 页面描述：节目详情及推荐信息
                    - 输入参数：
                        - 名称：id
                        - 类型：Number
                        - 描述：节目标识
                    - 异常跳转：
                        - 异常：500
                        - 跳转地址：/500/
                    - 模版列表：
                        - 默认：/templates/dj/dj.ftl
                        - 过期：/templates/dj/over.ftl
                        - 未找到：/templates/dj/404.ftl
                    - 接口列表：
                        - 歌曲列表：/api/dj/tracks/{id}/
                        - 相关节目：/api/dj/rec/{id}/
                        - 收藏节目：/api/dj/fav/{id}/
                        - 评论列表：/api/comments/{id}/
      + 同步数据规范
          - 定义系统需要给每个入口预填的模板文件的数据信息
          - TEMPLATE与MODEL(数据模型)
          - 包含内容
                1. 基本信息
                2. 预填数据
                3. 注入接口
                4. 例子
                    - 同步数据规范
                    - 模板文件：/templates/dj/dj.ftl
                    - 模板描述：节目详情及推荐信息模板
                    - 预填数据：
                            - 名称：user        | dj       | other   
                            - 类型：User        | Program  | String
                            - 描述：登录用户信息 | 节目信息  | 其他信息
                    - 注入接口：
                            - dj.parser
                                - 输入：    
                                    String   节目信息串    
                                    Boolean  是否格式化
                                - 输出：
                                    Program  节目对象
                            - dj.api
                            - dj.api2
      + 异步接口规范 
          - 定义前后端异步交换的接口的相关信息
          - API与MODEL
          - 包含内容
                1. 基本信息
                2. 输入数据
                3. 输出结果
                4. 例子
                    - 异步接口规范
                    - 请求方式：GET、POST
                    - 接口地址：/api/dj/tracks/{id}/
                    - 接口描述：取指定节目的歌曲列表
                    - 输入数据：
                            - 名称        类型      描述
                            - id          Number    节目标识
                            - offset      Number    列表起始位置
                            - limit       Number    列表数量
                    - 输出结果：
                            - 名称        类型      描述
                            - code        Number    请求结果标识
                            - message     String    请求异常信息
                            - result      Array     歌曲列表
  * 接口规范的应用
      + 根据页面入口规范构建项目结构
            - 根据页面入口规范导出配置信息
            - 根据配置信息建立项目的目录结构
      + 根据同步数据规范生成模拟同步数据
      + 根据异步接口规范生成模拟异步数据 
# 版本管理
  * 版本控制系统(VCS)分类
    + '人肉'VCS 即没有控制系统
    + LVCS 本地 
        - RCS(Revision Control System) 缺点：无法完成多人的协同开发
    + CVCS 集中式 缺点：当中央服务器出现故障时，项目将停滞
        - CVS
        - SVN
        - Perforce
    + DVCS 分布式
        - Git
        - Mercurial
  * 分支模型
    + 概念
        - 分支：从目标仓库获得一份项目拷贝，每条拷贝都有和原仓库功能一样的开发线
        - 分支模型：一个围绕项目(开发/部署/测试)等工作流的分支操作(创建、合并等)规范集合
    + 产品级的分支模型
        - 常驻分支 一旦被创建就不会被更改
                1. production(master)     
                    - 就是master分支
                    - 默认分支    
                    - production就是产品分支,上面的代码必须是可以上线发布的
                2. development    
                    - 必须从master创建

        - 活动分支 会跟着产品的分布，被动态的创建
                1. feature 
                    - 特性开发分支
                    - 平时开发人员使用的分支
                    - 从development分支创建
                    - feature分支的各个并行的开发线完成后要合并到development分支
                2. hotfix 
                    - 代码bug修复的分支
                    - 从master分支创建，因为修复bug都是针对上线发布的产品
                    - 例如：hotfix-36
                3. release
                    - 从development分支创建
                    - 标识着一个产品开始正式发布
                    - 例如：release-110
        - 分支模型的具体流程
                1. feature分支的各个并行的开发线完成后要合并到development分支
                2. 如果某个feature-A开发线需要feature-B的功能，则feature-B完成时合并到development分支后，feature-A开发线要从development分支将feature-B合并进来
                3. 当所有feature分支开发完成，都会合并到development分支，准备发布、创建release分支
                4. 创建release分支后，可能会多次合并到development分支，进行bug修复、调整、更新配置等工作，这样可以通过development分支更好的进行版本回溯，因为release分支有可能会在产品发布之后被删除
                5. 当发布产品的release-v1.0版本后，要将当前版本同时推送到master分支和development分支
                6. 当产品上线后，会发现bug需要修复，这时则需要创建hotfix分支
                7. hotfix分支完成后，需要合并到master分支和development分支
  * Git
    + 介绍
        - 免费开源的分布式版本控制系统(DVCS)
        - 基于内容寻址的存储系统，区分于基于文件的冲突检测的系统
    + 命令
        - 查看帮助文档
            1. git help 子命令
            2. git 子命令 -h
            3. git 子命令 --help
            4. man git-子命令
        - 基本操作
            1. git config 配置git
                + 配置级别
                    - --local 
                        1. 默认，高优先级
                        2. 只影响本仓库
                        3. 存放在当前目录的git文件夹 .git/config
                    - --global
                        1. 中优先级
                        2. 影响到所有当前用户的git仓库
                        3. 存放在当前用户的home目录 ~/.gitconfig 
                    - --system
                        1. 低优先级
                        2. 影响到全系统的git仓库
                        3. 存放在 /etc/gitconfig
                + 用户配置
                    - git config --global user.name "zp.bird"
                    - git config --global user.email zpbird7902@126.com   
            2. git status 实现对仓库状态的跟踪，可以查看当前目录的仓库信息
                + 从命令主要实现对以下三种关系的状态变化的跟踪
                    - 未跟踪--跟踪
                    - 工作目录--暂存区
                    - 暂存区--最新提交
                + touch aaa.css 文件创建命令
            3. git init 初始化仓库
                + git init [path]
                    - 执行后当前目录会成为一个git仓库，并创建了./git目录
                    - .git目录非常重要，它几乎记录了所有提交的信息及引用关系
                    - .git目录内容
                        - HEAD
                        - branches
                        - config(--local配置文件)
                        - description
                        - hooks
                        - info
                        - objects
                        - refs
                + git init [path] --bare
            4. git add 添加文件内容到暂存区(同时文件从未跟踪状态变为已跟踪，这是文件级别的变化)
                + 添加单个文件 git add 文件名
                + 批量添加 git add . 添加当前目录下的所有文件
            5. .gitignore 配置忽略文件
                + 配置git add命令需要忽略的文件
                + 对于已经跟踪的文件，也可以通过.gitignore文件来删除它们的跟踪
                + .gitignore文件的写法可以参看GitHub网站中gitignore仓库中的范例
            6. git-rm 从暂存区删除
                + git-rm --cached 仅从暂存区删除
                + git-rm 从暂存区和工作目录同时删除
                + git-rm $(git ls-file --deleted) 删除所有在工作目录中已经删除的文件的跟踪
            7. git commit 根据暂存区的内容创建一个提交记录
                + git commint -a -m '全部提交' 不经过暂存区直接提交
                + git commit -m  '初始提交' 为提交命令添加一个注释，便于查看log
            8. git log 查看提交历史信息
                + git log --oneline 显示简洁信息
                + 其他用法    
                    git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
            9. git config alias.shortname  "fullcommand"
                + git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
                + 执行 git lg
            10. git diff 显示不同版本的差异
                + git diff 显示工作目录与暂存区的差异
                + git diff -cached["reference"] 显示暂存区与某次提交的差异，默认为HEAD，HEAD指向当前的提交(最近一次提交)，所以后面的参数一般可以省略
                + git diff -cached "reference" 显示工作目录与某次提交的差异
            11. git checkout --"file" 将文件内容从暂存区复制到工作目录，以取消当前文件的修改
            12. git reset HEAD "file" 将文件内容从上次提交复制到暂存区，以取消暂存区的内容，此时工作目录与暂存区的内容不一致，git status会提示提交
            13. git reset HEAD -- "file" 将文件内容从上次提交复制到工作目录
    + 分支操作 
        - 主要是围绕提交历史实现的
        - git branch 实现分支的增删查改
            1. git branch 分支名称      创建分支
            2. git branch -d 分支名称   删除分支
            3. git branch -v          显示所有分支信息
        - git checkout 分支名称         通过移动HEAD检出版本，可以用于切换分支
        - git chechout -b 分支名称      创建并切换到分支
        - git reset     将当前分支回退到历史某个版本
            1. git reset --mixed commit-id (默认)  同时将当前版本提交的内容复制到暂存区
            2. git reset --soft commit-id         只是切换指针，不复制内容到暂存区和工作目录
            3. git reset --hard commit-id         同时将当前版本提交的内容复制到暂存区和工作目录
        - git reflog
        - git stash 保存当前的工作目录和暂存区状态，并返回到干净的工作空间
        - git merge 合并分支
        - git rebase 修剪提交历史基线，俗称“变基”
        - git tag 对某个提交设置一个不变的别名
    + 远程操作
        - git clone 克隆一个远程仓库作为本地仓库


# 整站规划
  * 一般情况下首页打开速度要值5秒钟之内

#  