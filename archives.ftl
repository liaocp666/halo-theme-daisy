<#include "module/macro.ftl"/>
<@head title="${settings.archives_title} - ${blog_title!}"/>

<body class="bg-[#f9f9f9]">
<div class="flex flex-col lg:flex-row">
    <@header/>
    <div class="flex flex-col lg:pl-[330px] w-full">
        <div class="page-title my-20 mx-auto lg:page-mqx-width w-full lg:px-[40px]">
            <h1 class="text-4xl font-black subpixel-antialiased pl-4 lg:pl-0"
                id="fillTitle">${settings.archives_title}</h1>
        </div>
        <div class="flex flex-col lg:flex-row w-full mx-auto lg:page-mqx-width lg:space-x-8 lg:px-[40px]">
            <div class="page-content lg:w-[73%] block overflow-hidden">
              <@postTag method="archiveYear">
                 <#list archives as archive>
                    <div class="page-item hover:shadow-lg duration-300 mb-12">
                        
                        <div class="page-content bg-white p-4 lg:p-8 text-767676 flex flex-col space-y-3">
                            <div class="page-meta text-[##767676] text-base flex justify-between">
                              <div class="title text-black">
                                  <span>
                                    <h2 class="text-2xl font-semibold">${archive.year?c}</h2>
                                  </span>
                            </div>
                            </div>
                            <div class="border-b border-gray-300 w-full"></div>
                            <ul class="listing">
                                <#list archive.posts as post>
                                    <li class="py-1 w-full flex justify-start space-x-1">
                                       <div class="truncate block">
                                         <i class="ri-arrow-right-s-fill"></i>
                                         <span >${post.createTime?string["yyyy年MM月dd日"]!}</span>
                                         <span style="margin-right:.5rem">   </span>
                                         <a class="hover:text-black" href="${post.fullPath!}" title="${post.title}">${post.title}</a>
                                       </div>
                                    </li>
                                
                            </#list>
                            </ul>
          
                        </div>
                    </div>
                </#list>
              </@postTag>

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