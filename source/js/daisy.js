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
                        '<li class="py-1 w-full flex justify-start space-x-1"><div class="truncate block"><i class="ri-arrow-right-s-fill"></i><a href="' + item.fullPath + '" class="hover:text-black dark:hover:text-white" title="' + item.title + '">' + item.title + '</a></div></li>'
                )
            })
        }
    });
}

function lightBox(selector, gallery) {
    $(selector).wrap(function () {
        return '<a data-no-instant data-fancybox="' + gallery + '" href="' + this.src + '" title="' + this.alt + '" data-caption="' + this.alt + '"></a>';
    })
    Fancybox.bind("[data-fancybox]", {
        infinite: false,
        preload: 1
    });
}

function toggleNav() {
    $('#mobileNav').slideToggle(500)
}

function generateCatalog() {
    const catalog = $('#catalog')
    if (!catalog) {
        return
    }
    let lastLevel = 0
    let lastLeftPx = 0
    const url = window.location.pathname + "#"
    const content = $(".markdown-body :header")
    if (!content || content.length === 0) {
        $('#catalog-widget').remove()
    }
    content.each(function () {
        const level = this.tagName.replace('H', '')
        const title = $(this).text()
        if (lastLevel === 0) {
            lastLevel = level
            lastLeftPx = 0
        }
        if (level > lastLevel) {
            lastLeftPx = (level - lastLevel) * 15 + lastLeftPx
        }
        if (level < lastLevel) {
            lastLeftPx = lastLeftPx - (lastLevel - level) * 15
        }
        lastLevel = level
        $(this).attr('id', title)
        catalog.append('<li style="padding-left: ' + lastLeftPx + 'px" class="py-1 flex justify-start w-full space-x-1"><a class="truncate block dark:hover:text-white" title="' + title + '" href="' + url + title + '">' + title + '</a></li>')
    });
}

function removeCommentCopyright() {
    var comment = document.querySelector('.halo-comment-part')
    if (comment) {
        var style = document.createElement('style')
        style.innerHTML = '.edition { display: none }'
        comment.shadowRoot.append(style)
    }
}

function daisy_cursor() {
    const e = document.querySelector(".cursor-inner"),
            t = document.querySelector(".cursor-outer");
    e.style.visibility = "visible"
    t.style.visibility = "visible"
    window.onmousemove = function (s) {
        t.style.transform = "translate(" + s.clientX + "px, " + s.clientY + "px)"
        e.style.transform = "translate(" + s.clientX + "px, " + s.clientY + "px)"
    }
    $("body").on("mouseenter", "a", function () {
        e.classList.add("cursor-hover")
        t.classList.add("cursor-hover")
    })
    $("body").on("mouseleave", "a, .cursor-pointer", function () {
        $(this).is("a") && $(this).closest(".cursor-pointer").length || (e.classList.remove("cursor-hover"), t.classList.remove("cursor-hover"))
    })
}

function toggleSearch() {
    $('#search').toggle('.2')
}

function toggleDarkMode() {
    var dark = window.localStorage.getItem('dark')
    if (!dark) {
        dark = 1
    } else {
        dark = dark == 1 ? 0 : 1
    }
    window.localStorage.setItem('dark', dark)
    darkMode()
}

function darkMode () {
    var dark = window.localStorage.getItem('dark')
    if (!dark) {
        return
    }
    var comment = document.getElementsByTagName("halo-comment")
    if (dark == 1) {
        $('html').addClass('dark')
        if (comment) {
            var haloComment = comment[0].shadowRoot.getElementById("halo-comment")
            $(haloComment).addClass('dark')
            $(haloComment).removeClass('light')
        }
    }
    if (dark == 0) {
        $('html').removeClass('dark')
        if (comment) {
            var haloComment = comment[0].shadowRoot.getElementById("halo-comment")
            $(haloComment).removeClass('dark')
            $(haloComment).addClass('light')
        }
    }
}

darkMode()