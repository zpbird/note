/*
 * @Author: zp.bird 
 * @Date: 2017-03-22 15:15:28 
 * @Last Modified by: zp.bird
 * @Last Modified time: 2017-03-22 18:59:04
 */
# 注释：/* */ 
# HTML与CSS结合的方式
  * 内联样式表    
      在html的任何标签中使用style属性直接定义该标签的css样式
  * 嵌入样式表    
      在头部`<head></head>`中使用`<style type="text/css"></style>`标签定义css样式，影响范围为本页面。
  * 外部链接样式表    
      在头部`<head></head>`中使用`<link rel="stylesheet" type="text/css" href="url">`标签进行链接，影响范围时引用该css文件的所有页面。可以链接多个css文件
  * 导入样式表    
      在css文件或html的`<style>`标签中使用@import:url(demo.css)导入一个.css文件的样式
# 基本语法
  属性名：属性值；
# 引入方式
  * 行间样式表
      写法：在标签中直接增加style属性，例如`<div style="width:100;height:200;background:red;"></div>`    
      缺点：不利于维护，不利于代码重用
  * 内部样式表
      写法：在head标签中，写入style标签，在style标签中通过选择器来控制样式
  * 外部样式表
      写法：在头部`<head></head>`中使用`<link rel="stylesheet" type="text/css" href="url">`标签进行链接，影响范围时引用该css文件的所有页面。可以链接多个css文件
  * 导入样式表
      在css文件或html的`<style>`标签中使用`@import:url(demo.css)`导入一个.css文件的样式
# 选择器
  * 常用选择器
        + 通用元素选择器 '*'
            通用元素选择器，匹配所有元素
         + 标签名选择器
            标签选择器，匹配所有p标签(p 可以时任意HTML标签)
         + class 类选择器
            类选择器 使用率最高    
        标签名.类名{} 例如：`p.cone{}`    
            - .类名{} 则代表所有标签中的类名 例如：.cone{}    
            - 一个标签可以指定多个类，例如：`<div class="cone ctwo cfour">`，这样可以有效的组织css样式
        + id 选择器
            - id选择器的名字在一个页面中不能相同，必须是唯一的，否则JavaScript会出错
            - 在HTML标签中：`<id="">`    
            - 在CSS中：用#来标识为ID名
        + 伪类选择器    
            - css2中的伪类    
                1. E:link
                    `a:link{color:#ff0000;text-decoration:none}`        未访问（默认值）
                2. E:visited
                    `a:visited{color:#00ff00;text-decortion:none}`      访问过后（点击过后）
                3. E:hover
                    `a:hover{color:#ff00ff;text-decoration:underline}`  悬停（划过）
                4. E:active
                    `a:active{color:#0000ff;text-decoration:underline}` 链接激活（按下）
                - 需要注意的是需要严格按照上面的顺序来依次定义样式，否在无法实现循环持续
                    1. 四个伪类全部使用一般是搜索引擎、门户网站、小说网站
                    2. 一般的网站只使用hover
                - 在css2中只有`<a>`和`<p>`两个标签具有伪元素，ie6以上的浏览器支持所有的标签使用hover伪类
            - css3中新增加的伪类
                1. E:target
                    表示当前的URL片段的元素类型，这个元素必须为E
                2. E:disabled
                    表示不可点击的表单控件
                3. E:enabled
                    表示可以点击的表单控件
                4. E:checked
                    表示已经选中的checkbox或radio
                5. E:first-line
                    表示E元素中的第一行
                6. E:first-letter
                    表示E元素中的第一个字符
                7. E::selcetion
                    表示E元素在用户选中文字时,特别注意这个是双冒号
                8. E:before
                    生成内容在E元素前，结合content属性使用可以为元素添加内容
                    p:before{ content:"ZPBIRD";}
                9. E:after
                    生成内容在E元素后，结合content属性使用可以为元素添加内容
                10. E:not(s)
                    表示E元素不被匹配,用于排除掉某些元素
                    h1:not(.subtitle){background:red;}
  * 其他选择器
        + 组合选择器
            - E，F 多元素选择器，同时匹配所有E元素和F元素
            - E F 后代选择器，匹配所有属于E元素后代的F元素
            - E>F 子元素选择器，匹配使用E元素的子元素F(第一层后代)
            - E+F 邻居元素选择器，匹配使用紧随E元素之后的一个同级元素F
            - E~F 同级元素选择器，匹配任何紧随E元素之后的多个同级F元素
        + 属性选择器
            - E[att] 匹配所有具有att属性的E元素，不考虑att的值，同时可以省略E，即可以对具有某一属性的所有标签进行匹配
            - E[att=val] 匹配所有att属性值等于val的元素
            - E[att~=val] 匹配所有att属性具有多个空格分隔的值、其中一个值等于val的元素
            - E[att|=val] 匹配所有att属性具有多个连字号分隔（hyphen-separated）的值、其中一个以val开头的E元素，主要用于lang属性，比如en、en-us、en-gb等等
            - E[att^=val] 匹配att的值与val开头的元素
            - E[att$=val] 匹配att的值以val结尾的元素
            - E[att*=val] 匹配att的值包含val的元素
        + 结构选择器（结构性伪类）
            E:root 将样式匹配到页面的根元素中    
            E:not  对某个结构元素使用样式，但想排除这个机构元素下的子结构元素    
            E:empty 指定当元素内容为空白时使用的样式    
            E:target 对页面中某个target元素指定样式，该样式只在用户点击了页面中的链接，并且跳转到target元素后生效    
            E:first-child 匹配父元素中第一个子元素    
            E:last-child 匹配父元素中最后一个子元素    
            E:nth-child() 匹配指定序列号的子元素，或者odd偶数的、even奇数的子元素    
            E:nth-last-child() 倒序    
            E:nth-of-type() 与nth-child()作用类似，但仅匹配使用通知标签的元素    
            E:nth-last-of-type()    
            E:nth-child(an+b) a表示每次循环的步长；b表示指定的样式在循环中开始的位置；循环使用样式    
            E:only-child 匹配父元素下仅有一个子元素    
            E:only-of-type    
            E:enabled 匹配表单中激活的元素    
            E:disabled 表单中禁用的元素    
            E:checked 表单中被选中的元素，单选框(radio)或复选框(checkbos)    
            E::selection 用户当前选中的元素   
        + 伪元素选择器 first-line、first-letter、before、after
            例如：  `p:first-line{color:#ff0000}  li:after{}`
  
  * 优先级       
        + 相同级别样式默认后者覆盖前者，这里的顺序指的是在css文件或`<style>`标签中样式定义的顺序
        + 标签选择器 < class选择器 < id选择器 < 行间样式 < js代码修改样式
# 单位
  * 长度单位
      + px 像素
      + em 相对于当前对象内文本的字体尺寸
      + % 百分比
      + pt 点
      + cm 厘米
      + mm 毫米
      + 换算比例：1in=2.54cm=25.4mm=72pt=6pc
  * 颜色单位
      + #rrggbb (例如：#ffcc00)
      + #rgb (例如：#fc0)
  * 指定URL地址方式 (例如：body{background-image:url(http://www.lp.cn/im/bg.jpg)})
# 盒子模型
  * 基本知识点
      + 无意义的HTML元素：`<div>`和`<span>`
      + `<div>`标签自带换行，自身不带有任何样式，目前主要用于布局大的区域
      + `<span>`标签自身不带换行，自身不自身不带有任何样带有任何样，主要用于同一行中内容的分块，例如区分提示和数据：    姓名：张鹏
      + css是分层的，文档层、float层、position层
  * 盒子模型
      + 盒子的实际大小=宽/高+border+padding+margin
      + `<div>`常用css属性
        宽度（指的是内容部分）：width  高度（指的是内容部分）：height      边框：border    内边距：padding     外边距：margin
      + ie系列浏览器是在内容宽高的基础上向内添加border和padding，向外添加margin
      + 非ie系列浏览器是在内容宽高的基础上向外添加border、padding、margin
      + 在布局时使用!important来标识非ie系列浏览器使用的属性
      + 常用属性
          - width、height 宽度、高度
                这里的宽高指的是盒子可以容纳内容的大小，而盒子实际(在文档中所占面积)的大小需要加上border、padding、margin的数值
          - min-width、min-height 最小宽度、高度
          - border   边框
          - padding  内边距
                1. 内边距相当于是盒子的厚度，会影响盒子的实际大小
                2. 简写顺序 padding:top right bottom left;
          - margin   外边距
                1. 上下外边距会叠压
                2. 父子级包含时子级的margin-top会传递给父级，即内边距代替外边距
                3. 简写顺序 margin:top right bottom left;
          - position 定义一个元素是否absolute(绝对)、relative(想读)、static(静态)、fixed(固定)，需要配合top、bottom、left、right使用    
              position:absolute; 当使用绝对方式时，是相对于浏览器内容区域的左上角进行调节，主要用于动态漂浮的元素（配合JavaScript实现）    
              position:relative；相对于默认位置进行调节    
              position:static; 默认方式    
              position:fixed; 使用这种方式时，当拉动右侧滚动条时，该元素始终显示在固定位置，常用于“回到顶部”等功能元素    
          - z-index  当两个元素重叠时，整数值高的元素覆盖低的元素
          - text-align  设置文本的靠左、靠右、居中显示
          - line-height 通过设置行高靠右实现文本的上、中、下显示
          - display 控制不换行标签变成换行显示（block），将换行标签去掉换行（inline），隐藏元素同时丢弃位置(none)
          - visibility 用于镶套型div，用于隐藏元素但保留位置(hidden)
          - overflow  超出部分隐藏（hidden）、出现滚动条(auto或scroll)
          - float 布局div的主要工具，left、right，当改变浏览器的大小时float会自动换行
          - clear 指定一个元素是否允许有其他漂浮元素在他旁边， left、right、both
  * 使用知识点
        + 在布局类似于登陆界面的单独居中的效果时使用 position：absolute；top：50%；left：50%；margin-top：-<div>高度一半数值px；margin-left：-<div>宽度一半数值px；
        + 当使用完全百分比定义宽高的div时，需要设定最小宽高值，通过内部插入一个空div来定义最小宽高
        + 当要定义区域间隔宽度时也可以用加入div的方式实现，当间隔小于18px时ie浏览器统一指的为18px，可以使用overflow：hidde来修正
# 浮动 float
  * 特性
        + 会使元素脱离文档流,浮动的元素会被提升半层(如果有重叠部分，会将下面元素标签中的内容挤出原有的位置,但可以覆盖标签本身：背景、边框等)
        + 可以使块级标签在同一行中显示
        + 同时内联标签支持设置宽和高
        + 如果没有设置宽高，由内容撑开大小
        + 代码换行不解析，不会产生空格  
  * 浮动 float:left/right/none(默认值)   
  * 清除浮动 clear:left/right//both/none  
        + 元素的某个方向上不能有浮动其他元素
        + 解决父级元素需要浮动后的子元素撑开宽高的办法是给父级元素追加.clear类样式`<标签 class=“other clear”>` `.clear{zoom:1}`和.clear的after伪类样式`.clear:after{content:"";display:block;clear:both;}`两条
  * 问题
        + ie6下的双边距问题，横向的maging会被放大两倍
            解决办法：display:inline;
        + ie6、7下要并列在同一行的元素都要加浮动
       
# 定位
  css定位就是改变元素在页面上的位置
  * 定位机制
      + 普通文档流定位
        元素按照其在HTML中的位置顺序决定排布的过程
      + 浮动定位
          - float属性的值
          - left        左浮动
          - right       右浮动
          - none        不浮动
          - inherit     从父级元素继承浮动属性设置
      + clear属性
        去掉浮动属性，包括继承而来的
          - left、right    去掉左或右浮动
          - both           同时去掉左右两侧的浮动
          - inherit        去掉继承来的浮动设置
      + 绝对布局定位
  * 定位属性
      + position
        把元素放在一个静态的、相对的、绝对的或固定的位置上
          - relative 相对定位
              1. 不使元素脱离文档流   
              2. 不影响元素本身的特性 
              3. 如果没有定位偏移量，对元素本身没有任何影响
              4. 相对定位一般都是配合绝对定位元素使用
          - absolute 绝对定位
              1. 使元素完全脱离文档流性
              3. 块元素内容撑开宽高
              4. 如果有定位父级元素则相对于定位父级发生偏移，如果没有父级元素则相对于整个文档发生偏移
              5. 绝对定位元素的子级的浮动可以不用写浮动清除方法
          - fixed 固定定位
              1. 与绝对定位基本相同，但固定定位是相对于整个文档进行定位，无论如何滚动元素的位置不会变动，即使有定位父级也无效
              2. 使元素完全脱离文档流性
              3. 块元素内容撑开宽高
              4. 使行内元素支持宽高
              5. 固定定位元素的子级的浮动可以不用写浮动清除方法
          - static 静态定位
              1. 是默认值 
              2. 设置偏移量是无效的
              3. 几乎从来不用，javascript可能会用到
          - inherit 继承定位
              1. 从父级元素继承定位属性的值
              2. 几乎从来不用
      + top、left、right、bottom
          - 元素在四个方向上的偏移量
          - 当元素未指定position方式时，偏移量无效
      + overflow
        设置元素溢出该区域时的处理方式
      + clip 
        设置元素的显示形状
      + vertical-align
        设置元素垂直对齐方式
      + z-index
          - 设置元素的堆叠顺序，数值越大元素越在上面
          - 使用定位后的元素如果出现重叠，默认后者比前者的高


# 文本样式
  * font-size       文字大小，一般为偶数
  * font-faimly     字体
  * color           字体颜色
  * line-height     行高
  * text-align      文本对齐方式
  * text-indent     首行缩进，em缩进字符
  * font-weight     粗体
  * font-style      斜体
  * text-decoration 文本修饰，通常是下划线
  * letter-spacing  字母间距
  * word-spacing    单词间距，以空格为分界符
# 服务器端字体
  * @font-face属性
# CSS Reset
  * 由于不同浏览器各个标签默认样式的细节数值会有差异，可以使用预先设置好的reset.css文件消除默认样式
  * 对于统一风格的全局性的设置应写入到reset.css文件中
  * 对于不同的需求或者不同页面的要求，reset.css文件设置会有所不同，或者增加减少内容
  * 引用reset.css文件必须放在所有css引用的第一位
# 布局解决方案
  * 居中布局
      + 水平居中（父容器和子容器的宽度不确定时）
        - 方案一 inline-block + text-align
            1. 父级元素
                text-align:center;
            2. 子级元素
                display:inline-block; ie6、7下不支持inline-block但可以使用display:block; zoom:1;来模拟
            3. 优点：兼容性强
            4. 缺点：子元素会继承父元素的text-align属性，有时候不是我们想要的效果
        - 方案二 table + margin
            1. 子集元素
                display:table; margin:0 auto;
            2. 优点：只需要设置子集元素的样式，兼容性好，ie67可以将div标签改为table标签
        - 方案三 absolute + transform
            1. 父级元素
                position：relative;
            2. 子级元素
                position:absolute; left:50%; transfom:translatex(-50%);
            3. 优点：由于使用绝对定位，子元素是脱离文档流，不会影响其他元素
            4. 缺点：transform属于css3新增属性，无法兼容ie678，同时需要加各浏览器的前缀
        - 方案四 flex + justify-content
            1. 父级元素
                display:flex;
                justify-content:center;
            2. 优点：只需要设置父级
            3. 缺点：不兼容ie678 
      + 垂直居中（父容器和子容器的高度不确定时）
        - 方案一 table-cell + vertical-align
            1. 父元素
                display:table-cell;
                vertical-align:middle;
            2. 优点：兼容性好，ie67可以将div标签改为table标签
        - 方案二 absolute + transform
            1. 父级元素
                position：relative;
            2. 子级元素
                position:absolute; top:50%; transfom:translatey(-50%);
            3. 优点：由于使用绝对定位，子元素是脱离文档流，不会影响其他元素
            4. 缺点：transform属于css3新增属性，无法兼容ie678，同时需要加各浏览器的前缀
        - 方案三 flex + align-iterms
            1. 父元素
                display:flex;
                align-iterms:center;
            2. 优点：只需要设置父级
            3. 缺点：兼容性问题
      + 水平垂直同时居中（父容器和子容器的宽高不确定时）
        - 方案一 inline-block + text-align + table-cell + vertical-align
            1. 父级元素
                text-align:center; (实现水平居中)
                display：table-cell;
                vertical-align:middle;
            2. 子级元素
                display:inline-block; (实现水平居中)
            3. 优点：兼容性高
        - 方案二 absolute + transform
            1. 父级元素
                position:relative;
            2. 子级元素
                position:absolute;
                left:50%;
                top:50%;
                transform:translate(-50%,-50%);
        - 方案三 flex + justify-content + align-iterms
            1. 父级元素
                display:flex;
                justify-content:center;
                align-iterms:center;
            2. 优点：只需要设置父级元素
            3. 缺点：兼容性不好
  * 多列布局
      + 定宽与自适应
        - 方案一 float + margin
            1. 左子级元素（定宽）
                float:left;
                width:100px;
            2. 右子级元素（自适应）
                margin-left:100px;
            3. 优点：简单、容易理解 
            4. 缺点：
                在ie6中会出现3像素bug问题，其他浏览器都支持
                在右子级元素中包含的块级元素使用清除浮动clear时会有一些问题
        - 方案二 float + margin + （fix）是针对方案一的两个缺点的改进方案
            1. 左子级元素（定宽）
                float:left;
                width:100px;
                position:relative; (目的是提高层级到右级子元素上面)
            2. 在右级子元素外面整个包裹一个div
                float:right;
                width:100%;
                margin-left:-100px;
            3. 右子级元素（自适应）
                margin-left:100px;
            4. 优点：兼容性非常好
        - 方案三 float + overflow
            1. 左子级元素（定宽）
                float:left;
                width:100px;
            2. 右子级元素（自适应）
                overflow:hidden;
            3. 优点：简单
            4. 缺点：ie6不支持
        - 方案四 table
            1. 父级元素
                display:table;
                table-layout:fixed;(布局优先，同时加速渲染)
                width:100%;
            2. 左子级元素（定宽）
                display:table-cell;
                widht:100px;
                padding-right:20px;
                需要处理将背景颜色限定在content中不影响padding
            3. 右子级元素（自适应）
                display:table-cell;
        - 方案五 flex
            1. 父级元素
                display:flex;
            2. 左子级元素（定宽）
                widht:100px;
                margin-right:20px;
            3. 右子级元素（自适应）
                flex:1;
            4. 优点：简洁还用
            5. 缺点：
                属于css3兼容性不太好
                性能不太好
      + 不定宽与自适应
        - 方案一 float + overflow 主要采用的方案
            1. 左子级元素（不定宽）
                float:left;
                width:100px;
            2. 右子级元素（自适应）
                overflow:hidden;
            3. 优点：简单
            4. 缺点：ie6不支持
        - 方案二 table
            1. 父级元素
                display:table;
                table-layout:fixed;(布局优先，同时加速渲染)
                width:100%;
            2. 左子级元素（不定宽）
                display:table-cell;
                widht:100px;
                padding-right:20px;
                需要处理将背景颜色限定在content中不影响padding
            3. 右子级元素（自适应）
                display:table-cell;
        - 方案三 flex
            1. 父级元素
                display:flex;
            2. 左子级元素（不定宽）
                widht:100px;
                margin-right:20px;
            3. 右子级元素（自适应）
                flex:1;
            4. 优点：简洁还用
            5. 缺点：
                属于css3兼容性不太好
                性能不太好
      + 等分列
        - 方案一 float
            1. 理论公式：父级宽度+空隙宽度=（子级元素宽度+空隙宽度）X 列数
            2. 父级元素
                margin-left:20px;
            3. 子级各列元素
                float:left;
                width:25%; (此例子中设定为四列)
                padding-left:20px;
                box-sizing:border-box;
            4. 缺点：样式与内容是强耦合，无法实现分离，当列数更改时，必须修改样式
        - 方案二 table
            1. 在父级元素之上添加修复多出空隙宽度的div
                margin-left:-20px;
            2. 父级元素
                display:table;
                width:100%;
                table-layout:fixed;
            3. 子级各列元素
                display:table-cell;
                padding-left:20px;
            4. 优点：样式与内容解耦，列数无论多少都会实现平分
        - 方案三 flex
            1. 父级元素
                display:flex;
            2. 子级各列元素
                flex:1;(等同于flex:1 1 0;)
            3. .column + .column （选择第一个子级列元素后面的子级各列元素）
                margin-left:20px;
            4. 优点：样式与内容解耦，列数无论多少都会实现平分
      + 等高
        - 方案一 table
            1. 父级元素
                display:table;
                table-layout:fixed;(布局优先，同时加速渲染)
                width:100%;
            2. 左子级元素（不定宽）
                display:table-cell;
                widht:100px;
                padding-right:20px;
                需要处理将背景颜色限定在content中不影响padding
            3. 右子级元素（自适应）
                display:table-cell;
        - 方案二 flex
            1. 父级元素
                display:flex;
            2. 左子级元素（不定宽）
                widht:100px;
                margin-right:20px;
            3. 右子级元素（自适应）
                flex:1;
            4. 优点：简洁还用
            5. 缺点：
                属于css3兼容性不太好
                性能不太好
        - 方案三 float
            1. 父级元素
                overflow:hidden;
            2. 左子级元素,右子级元素
                padding-bottom:99999px;
                margin-bottom:-99999px;
            3. 左子级元素（不定宽）
                float:left;
                width:100px;
            4. 右子级元素（自适应）
                overflow:hidden;
            5. 优点：兼容性较好
            6. 缺点：属于伪等高，是通过background颜色默认包含padding部分实现的，content部分实际高度不一致
  * 全屏布局 多用于管理系统、监控平台、统计系统
      + 全屏布局页面效果的特点
        - top和bottom定高，不定宽
        - left定宽，不定高
        - right不定宽高
        - 滚动条只针对与内容主体部分（right）
        -当改变浏览器的大小时，页面始终充满浏览器
      + 实现方案
        - 方案一 position
            1. position全屏布局的基本结构    
                `<div class="parent">`    
                    `<div class="top nav">top</div>`    
                    `<div class="left aside">left</div>`    
                    `<div class="right main_content">`
                        `<div class="inner">right</div>`用于实现滚动目的才嵌套此层
                    `</div>`    
                    `<div class="bottom info">bottom</div>`    
                `</div>`
            2. 目前主要使用的方案
            3. 全局设置样式
                html,body,.parent{ height:100%; overflow:hidden; }
            4. 设置top
                position:absolute; (是相对于body进行定位的，也可以给parent设置position:relactive;从而相对于parent定位)
                top:0; left:0; right:0;
                height:100px;
            5. 设置left
                position:absolute; (是相对于body进行定位的，也可以给parent设置position:relactive;从而相对于parent定位)
                top:100px; left:0; bottom:50px;
                widht:200px;
            6. 设置right
                position:absolute; (是相对于body进行定位的，也可以给parent设置position:relactive;从而相对于parent定位)
                left:200px; right:0; top:100px; bottom:50px;
                overflow:auto; (用于实现主体部分滚动效果)
            7. 设置bottom
                position:absolute; (是相对于body进行定位的，也可以给parent设置position:relactive;从而相对于parent定位)
                left:0; right:0; bottom:0;
                height：50px;
            8. 设置inner
                min-height:1000px;
        - 方案二 flex
            1. flex全屏布局的基本结构  
                `<div class="parent">`
                    `<div class="top">top</div>`
                    `<div class="middle">`
                        `<div class="left">left</div>`
                        `<dvi class="right">`
                            `<div class="inner">right</div>`用于实现滚动目的才嵌套此层
                        `</dvi>`
                    `</div>`
                    `<div class="bottom">bottom</div>`
                `</div>`
            2. 全局设置样式
                html,body,.parent{ height:100%; overflow:hidden; }
            3. 设置.parent
                display:flex;
                flex-direction:column;
            4. 设置.top
                height:100px;
            5. 设置.bottom
                height:50px;
            6. 设置.middle
                display:flex;
                flex:1;
            7. 设置.left
                widht:200px;
            8. 设置.right
                flex:1;
                overflow:auto;
            9. 设置.inner
                min-height:1000px;
  * 响应式布局
      + 特点
        - 优点：一套网站可以适配多种设备，节约开发和维护成本
        - 缺点：在pad或手机上是通过css样式将不需要到部分隐藏，但这些资源仍然是被加载的，存在资源冗余现象
      + 响应式布局html头部设置
        - 虚拟视图概念viewport
            在pad和手机系统中都有一个viewport概念，页面是渲染到viewport中，然后根据具体设备屏幕的实际大小进行等比例缩放
        - meta标签设置    
            `<meta name="viewport" content="width=device-width    ` 将viewport的宽度设置为设备的实际宽度    
            `                               ，initial-scale=1.0   `  初始缩放设置为1.0    
            `                               ，user-scalable=no "/>`    禁止用户缩放页面    
      + 响应式布局方案
        - 使用响应式布局页面的主体结构尽量不使用定宽的设置
        - 或者左侧导航栏部分一般宽度较窄，可以使用定宽，主体内容部分使用自适应布局
        - 当屏幕尺寸太小，使用自适应无法满足要求，就需要根据设备尺寸改变布局的形式
            1. @media screen and (max-width:320px;){} 
                css会检测屏幕尺寸，当<=320px;时会使用此布局方式
            2. @media screen and (min-width:769px;){}
                屏幕宽度>=769px时
            3. @media screen and (min-width:769px;) and (max-width:1000px;){} 
                769px<=屏幕宽度<=1000px
#           
# 
# 

