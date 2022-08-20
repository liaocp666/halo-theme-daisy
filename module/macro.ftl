<#macro head title>
    <!doctype html>
    <html lang="zh">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <#if (settings.sub_title?? && settings.sub_title != '')>
            <title>${title!} - ${settings.sub_title}</title>
        <#else>
            <title>${title!}</title>
        </#if>
        <meta name="apple-mobile-web-app-capable" content="yes"/>
        <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
        <meta name="format-detection" content="telephone=no"/>
        <meta name="renderer" content="webkit">
        <meta name="theme-color" content="${settings.google_color!'#fff'}">
        <meta name="author" content="${user.nickname!}"/>
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}"/>
        <#if options.blog_favicon?? && options.blog_favicon != ''>
            <link rel="apple-touch-icon" sizes="180x180" href="${options.blog_favicon}">
            <link rel="icon" type="image/png" sizes="32x32" href="${options.blog_favicon}">
            <link rel="icon" type="image/png" sizes="16x16" href="${options.blog_favicon}">
            <link rel="manifest" href="${options.blog_favicon}">
        </#if>
        <link href="${theme_base!}/source/css/style.css" rel="stylesheet">
        <link rel="preload" href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" as="style" onload="this.onload=null;this.rel='stylesheet'">
        <noscript><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"></noscript>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.css"/>
        <link href="https://lf3-cdn-tos.bytecdntp.com/cdn/expire-1-M/highlight.js/11.4.0/styles/github.min.css" type="text/css" rel="stylesheet" />
        <style>
            .hljs {
                background: #f6f8fa;
            }
        </style>
        <@global.head />
    </head>
</#macro>

<#macro header>
    <header class="hidden fixed w-[300px] px-16 h-screen space-y-16 lg:flex flex-col justify-center content-start bg-white">
        <div class="logo">
            <a href="${blog_url!}" title="${blog_title!}">
                <img src="${blog_logo!}" alt="${blog_title!}">
            </a>
        </div>
        <div class="nav">
            <ul class="text-767676 space-y-2">
                <@menuTag method="list">
                    <#list menus?sort_by('priority') as menu>
                        <li>
                            <a class="hover:text-black block w-full hover:tracking-wider duration-300"
                               href="${menu.url!}"
                               target="${menu.target!}">${menu.name!} </a>
                        </li>
                    </#list>
                </@menuTag>
            </ul>
        </div>
        <div class="search flex justify-start text-767676 text-lg space-x-3">
            <form method="get" action="/search" role="search" class="flex justify-start content-center">
                <input autocomplete="off" class="border-b border-stone-300 focus:outline-none focus:border-b w-full"
                       type="search"
                       name="keyword" placeholder="Search" required>
                <button type="submit">
                    <i class="ri-search-2-line"></i>
                </button>
            </form>
        </div>
        <div class="copyright text-767676">
            <p>
                © ${.now?string("yyyy")} <a class="text-black" href="${blog_url!}">${blog_title!}</a>
            </p>
            <p>
                Powered by <a href="https://halo.run/" target="_blank" class="text-black">Halo</a>&nbsp;&&nbsp;<a href="https://github.com/liaocp666/halo-theme-daisy" target="_blank" class="text-black">Daisy</a>
            </p>
        </div>
    </header>
    <header class="lg:hidden bg-white sticky top-0">
        <div class="flex justify-between p-4">
            <div class="logo">
                <a href="${blog_url!}" title="${blog_title!}">
                    <img src="${blog_logo!}" alt="${blog_title!}">
                </a>
            </div>
            <div class="menu">
                <a onclick="toggleNav()">
                    <i class="ri-menu-3-line"></i>
                </a>
            </div>
        </div>
        <div class="mobile-nav right-0 bg-white h-full w-full" id="mobileNav" style="display: none">
            <ul class="text-767676 space-y-6 py-6">
                <@menuTag method="list">
                    <#list menus?sort_by('priority') as menu>
                        <li>
                            <a class="hover:text-black block w-full hover:tracking-wider duration-300 text-center"
                               href="${menu.url!}"
                               target="${menu.target!}">${menu.name!} </a>
                        </li>
                    </#list>
                </@menuTag>
            </ul>
        </div>
    </header>
</#macro>

<#macro navigation>
    <div class="bg-white p-4 hover:shadow-lg duration-300 mb-12" data-instant>
        <nav aria-label="Page navigation">
            <ul class="flex justify-between list-style-none space-x-3">
                <@paginationTag method="archives" page="${posts.number}" total="${posts.totalPages}" display="3">
                    <li class="page-item">
                        <#if pagination.hasPrev>
                            <a class="page-link relative block py-1.5 px-3 rounded border-0 bg-transparent outline-none transition-all duration-300 rounded text-gray-800 hover:text-gray-800 hover:bg-gray-200 focus:shadow-none"
                               href="${pagination.prevPageFullPath!}">上一页</a>
                        </#if>
                    </li>
                    <li>
                                    <span class="page-link relative block py-1.5 px-3 rounded border-0 outline-none transition-all duration-300 rounded text-gray-800 text-gray-800 bg-gray-200 shadow-none">
                                        ${posts.number + 1} / ${posts.totalPages}
                                    </span>
                    </li>

                    <li class="page-item">
                        <#if pagination.hasNext>
                            <a class="page-link relative block py-1.5 px-3 rounded border-0 bg-transparent outline-none transition-all duration-300 rounded text-gray-800 hover:text-gray-800 hover:bg-gray-200 focus:shadow-none"
                               href="${pagination.nextPageFullPath!}">下一页</a>
                        </#if>
                    </li>
                </@paginationTag>
            </ul>
        </nav>
    </div>
</#macro>

<#macro footer>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.umd.js"></script>
    <script src="https://lf6-cdn-tos.bytecdntp.com/cdn/expire-1-M/highlight.js/11.4.0/highlight.min.js" type="application/javascript"></script>
    <script src="https://lf6-cdn-tos.bytecdntp.com/cdn/expire-1-M/instantclick/3.1.0/instantclick.min.js" type="application/javascript"></script>
    <script src="${theme_base!}/source/js/daisy.js"></script>
    <script>
        hljs.highlightAll();
        loadHotPost(5, '${blog_url!}', '${settings.api_authorization!}')
        lightBox('.markdown-body img', 'post')
        var url = location.href;
        var urlstatus = false;
        $(".nav li a").each(function () {
            if ((url + '/').indexOf($(this).attr('href').replace('.html', '')) > -1 && $(this).attr('href').replace('.html', '') != '/') {
                $(this).addClass('text-black font-semibold tracking-wide');
                urlstatus = true;
            } else {
                $(this).removeClass('text-black font-semibold tracking-wide');
            }
        });
        if (!urlstatus) {
            $(".nav li a").eq(0).addClass('text-black font-semibold tracking-wide');
        }
        InstantClick.on('change', function () {
            Fancybox.bind("[data-fancybox]", {
                infinite: false,
                preload: 1
            });
        })
        InstantClick.init()
    </script>
    <@global.footer />
</#macro>

<#macro widgetRecentComments>
    <div class="widget bg-white w-full p-8 hover:shadow-lg duration-300">
        <div class="widget-title text-black font-bold mb-2">
            <p>最新评论</p>
        </div>
        <div class="widget-hr border-b border-gray-300 w-full mb-4">
        </div>
        <div class="widget-content text-767676">
            <@commentTag method="latest" top="5">
                <ul>
                    <#list comments.content as comment>
                        <li class="py-1 flex justify-start w-full space-x-1">
                            <div class="truncate block">
                                <i class="ri-arrow-right-s-fill"></i>
                                <a class="hover:text-black"
                                   title="${comment.content!}"
                                   href="${comment.post.fullPath!}#comment">${comment.author!}
                                    ：${comment.content!}</a>
                            </div>
                        </li>
                    </#list>
                </ul>
            </@commentTag>
        </div>
    </div>
</#macro>

<#macro widgetHotPost>
    <div class="widget bg-white w-full p-8 hover:shadow-lg duration-300">
        <div class="widget-title text-black font-bold mb-2">
            <p>热门文章</p>
        </div>
        <div class="widget-hr border-b border-gray-300 w-full mb-4">
        </div>
        <div class="widget-content text-767676">
            <ul id="hotPosts">
                <li class="text-center">Loading……</li>
            </ul>
        </div>
    </div>
</#macro>

<#macro widgetNewPost>
    <div class="widget bg-white w-full p-8 hover:shadow-lg duration-300">
        <div class="widget-title text-black font-bold mb-2">
            <p>最新文章</p>
        </div>
        <div class="widget-hr border-b border-gray-300 w-full mb-4">
        </div>
        <div class="widget-content text-767676">
            <ul id="newPosts">
                <@postTag method="latest" top="5">
                    <#list posts as post>
                        <li class="py-1 w-full flex justify-start space-x-1">
                            <i class="ri-arrow-right-s-fill"></i>
                            <a href="${post.fullPath!}">${post.title!}</a>
                        </li>
                    </#list>
                </@postTag>
            </ul>
        </div>
    </div>
</#macro>

<#macro widgetLinks>
    <div class="widget bg-white w-full p-8 hover:shadow-lg duration-300">
        <div class="widget-title text-black font-bold mb-2">
            <p>友情连接</p>
        </div>
        <div class="widget-hr border-b border-gray-300 w-full mb-4">
        </div>
        <div class="widget-content text-767676">
            <@linkTag method="listTeams">
                <#list teams as team>
                    <ul>
                        <#if team.team == "Home">
                            <#list team.links as link>
                                <li class="py-1 flex justify-start w-full space-x-1">
                                    <div class="truncate block">
                                        <i class="ri-arrow-right-s-fill"></i>
                                        <a class="hover:text-black" href="${link.url!}"
                                           target="_blank">${link.name!}</a>
                                    </div>
                                </li>
                            </#list>
                        </#if>
                    </ul>
                </#list>
            </@linkTag>
        </div>
    </div>
</#macro>