<#include "module/macro.ftl"/>
<@head title="${post.title!} - ${blog_title!}"/>

<body class="bg-[#f9f9f9]">
<div class="flex flex-col lg:flex-row">
    <@header/>
    <div class="flex flex-col lg:pl-[300px] w-full">
        <div class="page-title my-20 mx-auto lg:page-mqx-width w-full lg:px-[40px]">
            <h1 class="text-4xl font-black subpixel-antialiased pl-4 lg:pl-0" id="fillTitle">${post.title!}</h1>
        </div>
        <div class="flex flex-col lg:flex-row w-full mx-auto lg:page-mqx-width lg:space-x-8 lg:px-[40px]">
            <div class="page-content lg:w-[73%] block overflow-hidden">
                <div class="page-item hover:shadow-lg duration-300 mb-12">
                    <div class="page-content bg-white p-4 lg:p-8 text-767676 flex flex-col space-y-3">
                        <div class="page-meta text-[##767676] text-base flex justify-between">
                            <div class="">
                                <#list post.categories as categorie>
                                    <span class="mr-1">
                                    <a href="${categorie.fullPath}">${categorie.name}</a>
                                </span>
                                    <span class="mr-1">
                                    /
                                </span>
                                </#list>
                                <span>
                                    ${post.createTime?string("yyyy-MM-dd")}
                                </span>
                            </div>
                            <div>
                                <a class="flex space-x-2 block" href="#comment" title="评论一下">
                                    <i class="ri-chat-2-line"></i>
                                    <span>${post.commentCount!}</span>
                                </a>
                            </div>
                        </div>
                        <div class="border-b border-gray-300 w-full"></div>
                        <div class="page-summary markdown-body pb-2" id="post-content">
                            ${post.formatContent!}
                        </div>
                        <div class="tags flex flex-col">
                            <div class="border-b w-full border-gray-300 w-full"></div>
                            <div class="pt-4 w-full flex justify-start space-x-3">
                                <i class="ri-price-tag-3-line"></i>
                                <#list tags as tag>
                                    <a href="${tag.fullPath!}" class="hover:text-black">${tag.name!}</a>
                                </#list>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="post-nav flex justify-between mb-12 space-x-4">
                    <div class="prev-post w-1/2 text-left hover:shadow-lg bg-white p-5">
                        <#if prevPost??>
                            <a class="flex flex-col space-y-1 truncate" href="${prevPost.fullPath!}">
                                <p class="text-sm text-767676">上一篇</p>
                                <span class="flex">${prevPost.title!}</span>
                            </a>
                        <#else>
                            <a class="flex flex-col space-y-1">
                                <p class="text-sm text-767676">上一篇</p>
                                <span class="flex">暂无文章</span>
                            </a>
                        </#if>
                    </div>
                    <div class="next-post w-1/2 text-right hover:shadow-lg bg-white p-5 space-y-1">
                        <#if nextPost??>
                            <a class="flex flex-col space-y-1" href="${nextPost.fullPath!}">
                                <p class="text-sm text-767676">下一篇</p>
                                <span class="flex justify-end">${nextPost.title!}</span>
                            </a>
                        <#else>
                            <a class="flex flex-col space-y-1 justify-end">
                                <p class="text-sm text-767676">下一篇</p>
                                <span class="flex justify-end">暂无文章</span>
                            </a>
                        </#if>
                    </div>
                </div>
                <div id="comment">
                    <#include "module/comment.ftl">
                    <@comment target=post type="post" />
                </div>
            </div>
            <div class="sidebar lg:w-[27%] block overflow-hidden">
                <div class="flex flex-col space-y-12">
                    <@widgetCatalog/>
                    <@widgetHotPost/>
                    <@widgetRecentComments/>
                    <@widgetNewPost/>
                </div>
            </div>
        </div>
    </div>
</div>
<@footer/>
</body>
</html>