<#include "module/macro.ftl"/>
<@head title="${settings.journals_title} - ${blog_title!}"/>

<body class="bg-[#f9f9f9]">
<div class="flex flex-col lg:flex-row">
    <@header/>
    <div class="flex flex-col lg:pl-[330px] w-full">
        <div class="page-title my-20 mx-auto lg:page-mqx-width w-full lg:px-[40px] flex flex-col space-y-3">
            <h1 class="text-4xl font-black subpixel-antialiased" id="fillTitle">${settings.journals_title}</h1>
        </div>
        <div class="flex flex-col lg:flex-row w-full mx-auto lg:page-mqx-width lg:space-x-8 lg:px-[40px]">
            <div class="page-content journals lg:w-[100%]">
                <#list journals.content as journal>
                    <div class="page-item hover:shadow-lg duration-300 mb-12">
                        <div class="page-content bg-white p-8 text-767676 flex flex-col space-y-3">
                            <div class="page-meta text-base flex justify-between">
                                <div>
                                    <span>${journal.createTime?string("yyyy-MM-dd")}</span>
                                </div>
                                <div class="journal-comment">
                                    <a class="flex space-x-2 block cursor-pointer" title="评论一下">
                                        <i class="text-767676 ri-chat-2-line"></i>
                                        <span class="text-767676">${journal.commentCount!}</span>
                                    </a>
                                </div>
                            </div>
                            <div class="border-b border-gray-300 w-full"></div>
                            <div class="page-summary">
                                <p>${journal.content!}</p>
                            </div>                               
                        </div>  
                        <div class="journal-comment-div bg-white p-8 hover:shadow-lg  mb-12" hidden>
                            <halo-comment id="${journal.id}" type="journal" class="halo-comment-part"/>
                        </div>                
                    </div>                    
                </#list>
                
            </div>
        </div>
    </div>
</div>
<@footer/>
<script src="https://lf9-cdn-tos.bytecdntp.com/cdn/expire-1-M/vue/2.6.10/vue.min.js"></script>
<script src="${options.comment_internal_plugin_js!'https://www.unpkg.com/halo-comment-yu@latest/dist/halo-comment.min.js'}"></script>
<script>
$(".journal-comment").click(function(){
    var that = $(this);
    var ele = that.parents('.page-item').children('.journal-comment-div');
    ele.slideToggle();
});
</script>
</body>
</html>