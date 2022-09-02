# halo-theme-daisy

daisy 是一款简洁、大气的 halo 主题。不仅仅适用于个人博客，也适用于个人形象打造，产品宣传等。

## 预览

* [Kent Liao](https://www.kokoo.top)

![image](https://user-images.githubusercontent.com/27202776/184520613-f22ff4d5-0c79-44e9-a390-8ea0a23547de.png)

## 配置

> ⚠️ 主题需要使用到 api 服务，需要在 halo 开启 api 服务。填入的 Access key 需要单独记下，在配置中需要使用。

### 网站设置

* 设置网站副标题，以及其他独立页面的标题。此处使用默认也可以。
* Access key，填入上方 api 服务的 Access key 。

### 社交资料

填写 github/wechat 等社交链接，正确填写会在首页有对应图标显示

### 友情链接

侧边栏的友情链接组件，默认只显示 Home 分组内容。

### 主题设置

* 默认开启局部刷新
* 切换字体：OPPO Sans、Mi Sans、System

## 页面

提供不带右部组件侧栏的独立页面展示，在 `高级` - `自定义模板` 选择 NoSidebar 。

## 评论

[halo-comment-normal](https://github.com/halo-dev/halo-comment-normal)

## 安装

1. 远程拉取：https://github.com/liaocp666/halo-theme-daisy 复制地址进去点击下载。
2. 本地上传：在 [发布](https://github.com/liaocp666/halo-theme-daisy/releases) 页面，下载压缩包至本地，然后上传安装。

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
