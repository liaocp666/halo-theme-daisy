<#include "module/macro.ftl"/>
<@head title="所有标签 - ${blog_title!}"/>

<body class="bg-[#f9f9f9] dark:bg-neutral-800">
<div class="flex flex-col lg:flex-row">
    <@header/>
    <div class="flex flex-col lg:pl-[330px] w-full">
        <div class="page-title my-20 mx-auto lg:page-mqx-width w-full lg:px-[40px]">
            <@tagTag  method="list">
                <#list tags  as tag>
                    <div class="inline-flex relative w-fit m-3">
                        <div class="absolute inline-block top-0 right-0 bottom-auto left-auto translate-x-2/4 -translate-y-1/2 rotate-0 skew-x-0 skew-y-0 scale-x-100 scale-y-100 py-1 px-2.5 text-xs leading-none text-center whitespace-nowrap align-baseline font-bold bg-[dodgerblue] text-white rounded-full z-10">
                            ${tag.postCount!}
                        </div>
                        <a href="${tag.fullPath}" title="${tag.name!}" target="_blank" class="inline-block px-7 py-3 bg-gray-200 text-gray-700 font-medium text-sm leading-snug rounded hover:shadow-lg duration-300 transition">${tag.name!}</a>
                    </div>
                </#list>
            </@tagTag >
        </div>
    </div>
</div>
<@footer/>
</body>
</html>