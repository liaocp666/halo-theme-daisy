<#include "module/macro.ftl"/>
<@head title="${keyword!} - ${blog_title!}"/>

<body class="bg-[#f9f9f9]">
<div class="flex flex-col lg:flex-row">
    <@header/>
    <div class="flex flex-col lg:pl-[330px] w-full">
        <div class="page-title my-20 mx-auto lg:page-mqx-width w-full lg:px-[40px]">
            <h1 class="text-4xl font-black subpixel-antialiased pl-4 lg:pl-0"
                id="fillTitle">${keyword!}</h1>
        </div>
        <div class="flex flex-col lg:flex-row w-full mx-auto lg:page-mqx-width lg:space-x-8 lg:px-[40px]">
            <div class="page-content lg:w-[73%] block overflow-hidden">
                <#list posts.content as post>
                    <div class="page-item hover:shadow-lg duration-300 mb-12">
                        <#if post.thumbnail?has_content>
                            <div class="page-thumbnail overflow-hidden">
                                <a href="${post.fullPath!}" title="${post.title!}">
                                    <img class="ease duration-300 w-full max-h-[400px] hover:scale-110"
                                         src="${post.thumbnail!}" alt="${post.title!}">
                                </a>
                            </div>
                        </#if>
                        <div class="page-content bg-white p-4 lg:p-8 text-767676 flex flex-col space-y-3">
                            <div class="page-meta text-[##767676] text-base flex justify-between">
                                <div>
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
                                    <a class="flex space-x-2 block" href="${post.fullPath!}#comment" title="评论一下">
                                        <i class="ri-chat-2-line"></i>
                                        <span>${post.commentCount!}</span>
                                    </a>
                                </div>
                            </div>
                            <div class="border-b border-gray-300 w-full"></div>
                            <div class="title text-black">
                                <a href="${post.fullPath!}" title="${post.title!}">
                                    <h2 class="text-2xl font-semibold">${post.title!}</h2>
                                </a>
                            </div>
                            <div class="page-summary">
                                <p>${post.summary!}</p>
                            </div>
                        </div>
                    </div>
                </#list>
                <@navigation method="search" keyword="${keyword!}"/>
            </div>
            <div class="sidebar lg:w-[27%] block overflow-hidden mb-12">
                <div class="flex flex-col space-y-12">
                    <@widgetHotPost/>
                    <@widgetRecentComments/>
                    <@widgetLinks/>
                </div>
            </div>
        </div>
    </div>
</div>
<@footer/>
</body>
</html>