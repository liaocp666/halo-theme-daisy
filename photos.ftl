<#include "module/macro.ftl"/>
<@head title="${settings.photos_title} - ${blog_title!}"/>

<body class="bg-[#f9f9f9]" data-no-instant>
<div class="flex flex-col lg:flex-row">
    <@header/>
    <div class="flex flex-col lg:pl-[330px] w-full">
        <div class="page-title my-20 mx-auto lg:page-mqx-width w-full lg:px-[40px] flex flex-col space-y-3">
            <h1 class="text-4xl font-black subpixel-antialiased" id="fillTitle">${settings.photos_title}</h1>
        </div>
        <div class="flex w-full mx-auto lg:page-mqx-width lg:px-[40px]">
            <div class="page-content journals lg:w-[100%] columns-1 lg:columns-3 gap-8">
                <#list photos.content as photo>
                    <div class="w-full page-item hover:shadow-lg duration-300 mb-12 bg-white float-left block overflow-hidden">
                        <div class="page-thumbnail overflow-hidden">
                            <a data-thumb="${photo.url!}" data-fancybox="journals" data-caption="${photo.name!}" href="${photo.url!}" title="${photo.name!}">
                                <img alt="${photo.name!}" src="${photo.url!}"/>
                            </a>
                        </div>
                        <div class="page-meta p-3 text-767676 text-base flex justify-between">
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
                            <div class="page-content p-3 text-767676 flex flex-col space-y-3">
                                <div class="page-summary">
                                    <div>${photo.description!}</div>
                                </div>
                            </div>
                        </#if>
                    </div>
                </#list>
            </div>
        </div>
    </div>
</div>
<@footer/>
</body>
</html>