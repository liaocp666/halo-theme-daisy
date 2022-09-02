<#include "module/macro.ftl"/>
<@head title="${settings.journals_title} - ${blog_title!}"/>

<body class="bg-[#f9f9f9]">
<div class="flex flex-col lg:flex-row">
    <@header/>
    <div class="flex flex-col lg:pl-[300px] w-full">
        <div class="page-title my-20 mx-auto lg:page-mqx-width w-full lg:px-[40px] flex flex-col space-y-3">
            <h1 class="text-4xl font-black subpixel-antialiased" id="fillTitle">${settings.journals_title}</h1>
        </div>
        <div class="flex flex-col lg:flex-row w-full mx-auto lg:page-mqx-width lg:space-x-8 lg:px-[40px]">
            <div class="page-content journals lg:w-[100%]">
                <#list journals.content as journal>
                    <div class="page-item hover:shadow-lg duration-300 mb-12">
                        <div class="page-content bg-white p-8 text-767676 flex flex-col space-y-3">
                            <div class="page-meta text-[##767676] text-base flex justify-between">
                                <div>
                                    <span>${journal.createTime?string("yyyy-MM-dd")}</span>
                                </div>
                            </div>
                            <div class="border-b border-gray-300 w-full"></div>
                            <div class="page-summary">
                                <p>${journal.content!}</p>
                            </div>
                        </div>
                    </div>
                </#list>
            </div>
        </div>
    </div>
</div>
<@footer/>
<script>
</script>
</body>
</html>