# halo-theme-daisy

daisy 是一款简洁、大气的 halo 主题。不仅仅适用于个人博客，也适用于个人形象打造，产品宣传等。

## 预览

* [Kent Liao](https://www.kokoo.top)

![image](https://user-images.githubusercontent.com/27202776/184520613-f22ff4d5-0c79-44e9-a390-8ea0a23547de.png)

## 功能

* 深色模式
* 字体切换
* 支持所有独立页面
* 响应式主题
* 代码高亮
* 文章目录
* 平滑滚动
* 数学公式
* 预加载页面
* 光标背景
* 专注内容设计

## 配置

> ⚠️ 主题需要使用到 api 服务，需要在 halo 开启 api 服务。填入的 Access key 需要单独记下，在配置中需要使用。

### 网站设置

* 设置网站副标题，以及其他独立页面的标题。此处使用默认也可以。
* Access key，填入上方 api 服务的 Access key 。**注意：** 如果 Access key 为空，侧边栏将不显示热门文章

### 社交资料

填写 github/wechat 等社交链接，正确填写会在首页有对应图标显示

### 友情链接

侧边栏的友情链接组件，默认只显示 Home 分组内容。

### 外观设置

* 默认开启局部刷新
* 切换字体：OPPO Sans、Mi Sans、HarmonyOS Sans、System
* 光标背景：开启后灰色背景将跟随光标移动

### 备案设置

填写备案相关内容

## 页面

提供不带右部组件侧栏的独立页面展示，在 `高级` - `自定义模板` 选择 NoSidebar 。

## 评论

推荐使用：[halo-comment-normal](https://github.com/halo-dev/halo-comment-normal)

## 安装

1. 远程拉取：https://github.com/liaocp666/halo-theme-daisy 复制地址进去点击下载。
2. 本地上传：在下载 [压缩包](https://github.com/liaocp666/halo-theme-daisy/archive/refs/heads/main.zip) 至本地，然后上传安装。

## 更新

参考[安装](#安装)

## 开发

主题采用 npm 管理依赖，主要使用 tailwindcss 生成样式。

安装依赖

```shell
npm install
```

开发阶段，动态监听网页元素，生成样式

```shell
npm run dev
```

生产阶段，生成压缩后的样式文件

```shell
npm run build
```
