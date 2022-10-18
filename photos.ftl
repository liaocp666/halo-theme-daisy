<#include "module/macro.ftl"/>
<@head title="${settings.photos_title} - ${blog_title!}"/>

<body class="bg-[#f9f9f9] dark:bg-neutral-800" data-no-instant>
<div class="flex flex-col lg:flex-row">
    <@header/>
    <div class="flex flex-col lg:pl-[330px] w-full">
        <div class="page-title my-20 mx-auto lg:page-mqx-width w-full lg:px-[40px] flex flex-col space-y-3">
            <h1 class="text-4xl font-black subpixel-antialiased dark:text-white" id="fillTitle">${settings.photos_title}</h1>
        </div>
        <div class="flex w-full mx-auto lg:page-mqx-width lg:px-[40px] flex-col ">
            <div class="grid grid-cols-1 lg:grid-cols-3 page-content journals lg:w-[100%] gap-8">
                <#list photos.content as photo>
                    <div class="w-full page-item hover:shadow-lg duration-300 mb-12 bg-white dark:bg-neutral-900 float-left block overflow-hidden">
                        <div class="page-thumbnail overflow-hidden">
                            <a data-thumb="${photo.url!}" data-fancybox="journals" data-caption="${photo.name!}" href="${photo.url!}" title="${photo.name!}">
                                <img class="min-w-full max-h-60 min-h-min h-60" alt="${photo.name!}" src="${photo.url!}"/>
                            </a>
                        </div>
                        <div class="page-meta p-3 text-767676 dark:text-[#999] text-base flex justify-between">
                            <#if photo.location?? && photo.location != ''>
                                <div class="flex space-x-1">
                                    <i class="ri-map-pin-line"></i>
                                    <span>${photo.location!}</span>
                                </div>
                            </#if>
                            <div>
                                ${photo.takeTime?string("yyyy-MM-dd")}
                            </div>
                        </div>
                        <#if photo.description?? && photo.description != ''>
                            <div class="px-3">
                                <div class="border-b border-gray-300"></div>
                            </div>
                            <div class="page-content p-3 text-767676 dark:text-[#999] flex flex-col space-y-3">
                                <div class="page-summary">
                                    <div>${photo.description!}</div>
                                </div>
                            </div>
                        </#if>
                    </div>
                </#list>
            </div>
            <div class="bg-white p-4 hover:shadow-lg duration-300 mb-12 dark:bg-neutral-900">
                <nav aria-label="Page navigation">
                    <ul class="flex justify-between list-style-none space-x-3">
                        <@paginationTag method="photos" page="${photos.number}" total="${photos.totalPages}" display="3">
                            <li class="page-item">
                                <#if pagination.hasPrev>
                                    <a class="page-link relative block py-1.5 px-3 rounded border-0 bg-transparent outline-none transition-all duration-300 rounded text-gray-800 dark:text-[#999] hover:bg-gray-200 focus:shadow-none"
                                       href="${pagination.prevPageFullPath!}">上一页</a>
                                </#if>
                            </li>
                            <li>
                        <span class="page-link relative block py-1.5 px-3 rounded border-0 outline-none transition-all duration-300 rounded text-gray-800 dark:text-[#999] bg-gray-200 shadow-none">
                            ${photos.number + 1} / ${photos.totalPages}
                        </span>
                            </li>
                            <li class="page-item">
                                <#if pagination.hasNext>
                                    <a class="page-link relative block py-1.5 px-3 rounded border-0 bg-transparent outline-none transition-all duration-300 rounded text-gray-800 dark:text-[#999] hover:bg-gray-200 focus:shadow-none"
                                       href="${pagination.nextPageFullPath!}">下一页</a>
                                </#if>
                            </li>
                        </@paginationTag>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<@footer/>
</body>
</html>