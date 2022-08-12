<#macro comment target,type>
    <#if !post.disallowComment!false>
        <script src="https://lf9-cdn-tos.bytecdntp.com/cdn/expire-1-M/vue/2.6.10/vue.min.js" type="application/javascript"></script>
        <script src="https://www.unpkg.com/halo-comment-yu@latest/dist/halo-comment.min.js"></script>
        <div class="bg-white p-8 shadow-lg mb-12">
            <halo-comment id="${target.id?c}" type="${type}" class="halo-comment-part"/>
        </div>
    </#if>
</#macro>