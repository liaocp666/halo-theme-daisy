<#include "module/macro.ftl"/>
<@head title="所有标签 - ${blog_title!}"/>

<body class="bg-[#f9f9f9]">
<div class="flex flex-col lg:flex-row">
    <@header/>
    <div class="flex flex-col lg:pl-[300px] w-full">
        <div class="page-title my-20 mx-auto lg:page-mqx-width w-full lg:px-[40px] flex flex-col space-y-3">
            <@tagTag  method="list">
                <#list tags  as tag>
                    <a href="${tag.fullPath!}" class="inline-block px-6 py-2.5 bg-gray-200 text-gray-700leading-tight uppercase rounded hover:shadow-lg hover:bg-gray-300 hover:hover:shadow-lg duration-300 focus:bg-gray-300 focus:hover:shadow-lg duration-300 focus:outline-none focus:ring-0 active:bg-gray-400 active:hover:shadow-lg duration-300 transition duration-150 ease-in-out">${tag.name!}（${tag.postCount!}）</a>
                </#list>
            </@tagTag >
        </div>
    </div>
</div>
<@footer/>
</body>
</html>