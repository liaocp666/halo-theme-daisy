function loadHotPost(size, blogUrl, api_authorization) {
    const data = {
        page: 0,
        size: size,
        sort: 'topPriority,visits,desc',
        time: new Date().getTime()
    }
    $.ajax({
        headers: {
            'API-Authorization': api_authorization
        },
        url: blogUrl + "/api/content/posts",
        type: 'GET',
        data: data,
        success: result => {
            $("#hotPosts").empty()
            $(result.data.content).each((index, item) => {
                $("#hotPosts").append(
                        '<li class="py-1 w-full flex justify-start space-x-1"><div class="truncate block"><i class="ri-arrow-right-s-fill"></i><a href="' + item.fullPath + '" class="hover:text-black" title="' + item.title + '">' + item.title + '</a></div></li>'
                )
            })
        }
    });
}

function lightBox (selector, gallery) {
    $(selector).wrap(function(){
        return '<a data-no-instant data-fancybox="'+ gallery +'" href="' + this.src + '" title="' + this.alt + '" data-caption="'+ this.alt +'"></a>';
    })
    Fancybox.bind("[data-fancybox]", {
        infinite: false,
        preload: 1
    });
}

function toggleNav () {
    $('#mobileNav').slideToggle(500)
}

function removeCommentCopyright() {
    var comment = document.querySelector('.halo-comment-part')
    if (comment) {
        var style = document.createElement( 'style' )
        style.innerHTML = '.edition { display: none }'
        comment.shadowRoot.append(style)
    }
}
