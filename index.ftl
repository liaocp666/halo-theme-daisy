<#include "module/macro.ftl"/>
<@head title="${blog_title!}"/>

<body class="bg-[#f9f9f9]">
<div class="flex flex-col lg:flex-row">
    <@header/>
    <div class="w-full h-screen lg:pl-[330px] px-[40px] lg:px-0 mt-[-60px] lg:mt-0">
        <div class="lg:max-w-[1000px] mx-auto h-screen relative">
            <div class="flex flex-col lg:flex-row justify-center content-center items-center h-screen lg:space-x-16 lg:mx-[20px]">
                <div class="avatar mb-6 lg:mb-0">
                    <div class="w-72 h-72 bg-cover bg-no-repeat bg-center animation-morph"
                         style="background-image: url('${user.avatar!}'); box-shadow: inset 0px 0px 0px 9px rgb(255 255 255 / 30%); border-radius: 60% 40% 30% 70% / 60% 30% 70% 40%;"></div>
                </div>
                <div class="resume space-y-6">
                    <div class="name text-center lg:text-left">
                        <h1 class="text-6xl subpixel-antialiased font-black font-sans">${user.nickname!}</h1>
                    </div>
                    <div class="info text-center lg:text-left">
                        <p class="text-767676">${user.description!}</p>
                    </div>
                    <div class="social hidden lg:block">
                        <ul class="flex space-x-4">
                            <#if settings.github?? && settings.github != ''>
                                <li>
                                    <a href="${settings.github}" title="github" target="_blank"><i class="ri-github-line text-2xl"></i></a>
                                </li>
                            </#if>
                            <#if settings.weibo?? && settings.weibo != ''>
                                <li>
                                    <a href="${settings.weibo}" title="weibo" target="_blank"><i class="ri-weibo-line text-2xl"></i></a>
                                </li>
                            </#if>
                            <#if settings.wechat?? && settings.wechat != ''>
                                <li>
                                    <a href="${settings.wechat}" title="wechat" target="_blank"><i class="ri-wechat-line text-2xl"></i></a>
                                </li>
                            </#if>
                            <#if settings.qq?? && settings.qq != ''>
                                <li>
                                    <a href="${settings.qq}" title="qq" target="_blank"><i class="ri-qq-line text-2xl"></i></a>
                                </li>
                            </#if>
                            <#if settings.bilibili?? && settings.bilibili != ''>
                                <li>
                                    <a href="${settings.bilibili}" title="bilibili" target="_blank"><i class="ri-bilibili-line text-2xl"></i></a>
                                </li>
                            </#if>
                            <#if settings.rss?? && settings.rss != ''>
                                <li>
                                    <a href="${settings.rss}" title="rss" target="_blank"><i class="ri-rss-line text-2xl"></i></a>
                                </li>
                            </#if>
                            <#if settings.email?? && settings.email != ''>
                                <li>
                                    <a href="${settings.email}" title="email" target="_blank"><i class="ri-mail-line text-2xl"></i></a>
                                </li>
                            </#if>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<@footer/>
</body>
</html>