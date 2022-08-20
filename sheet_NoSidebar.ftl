<#include "module/macro.ftl"/>
<@head title="${sheet.title!} - ${blog_title!}"/>

<body class="bg-[#f9f9f9]">
<div class="flex flex-col lg:flex-row">
    <@header/>
    <div class="flex flex-col lg:pl-[300px] w-full">
        <div class="page-title my-20 mx-auto lg:page-mqx-width w-full lg:px-[40px]">
            <h1 class="text-4xl font-black subpixel-antialiased pl-4 lg:pl-0" id="fillTitle">${sheet.title!}</h1>
        </div>
        <div class="flex flex-col lg:flex-row w-full mx-auto lg:page-mqx-width lg:space-x-8 lg:px-[40px]">
            <div class="page-content w-full block overflow-hidden">
                <div class="page-item hover:shadow-lg duration-300 mb-12">
                    <div class="page-content bg-white p-4 lg:p-8 text-767676 flex flex-col space-y-3">
                        <div class="page-meta text-[##767676] text-base flex justify-between">
                            <div class="">
                                <span>
                                    ${sheet.createTime?string("yyyy-MM-dd")}
                                </span>
                            </div>
                            <div>
                                <a class="flex space-x-2 block" href="#comment" title="评论一下">
                                    <i class="ri-chat-2-line"></i>
                                    <span>${sheet.commentCount!}</span>
                                </a>
                            </div>
                        </div>
                        <div class="border-b border-gray-300 w-full"></div>
                        <div class="page-summary markdown-body pb-2" id="post-content">
                            ${post.content!}
                        </div>
                    </div>
                </div>
                <div id="comment">
                    <#include "module/comment.ftl">
                    <@comment target=sheet type="sheet" />
                </div>
            </div>
        </div>
    </div>
</div>
<@footer/>
</body>
</html>