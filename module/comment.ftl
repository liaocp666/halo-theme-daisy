<#macro comment target,type>
    <#if !post.disallowComment!false>
        <script src="https://lf9-cdn-tos.bytecdntp.com/cdn/expire-1-M/vue/2.6.10/vue.min.js"></script>
        <script src="${options.comment_internal_plugin_js!'https://www.unpkg.com/halo-comment-yu@latest/dist/halo-comment.min.js'}"></script>
        <div class="bg-white p-8 hover:shadow-lg duration-300 mb-12">
            <halo-comment id="${target.id?c}" type="${type}" class="halo-comment-part"></halo-comment>
        </div>
    </#if>
</#macro>