<#import "parts/common.ftlh" as c>

<@c.page>
    <form method="get" action="/main" class="row row-cols-lg-auto align-items-start">
        <div class="col-auto">
            <input type="text" name="filter" value="${filter?ifExists}" class="form-control"
                   placeholder="Search by tag">
        </div>
        <div class="col-auto">
            <button type="submit" class="btn btn-outline-secondary ms-3">Search</button>
        </div>
    </form>
    <a class="btn btn-secondary mt-3" data-bs-toggle="collapse" href="#collapseExample" role="button"
       aria-expanded="false"
       aria-controls="collapseExample">
        Add new message
    </a>
    <div class="collapse" id="collapseExample">
        <form method="post" enctype="multipart/form-data" class="row row-cols-lg-auto align-items-start my-3">
            <div class="col-auto"><input class="form-control" type="text" name="text" placeholder="Input message"></div>
            <div class="col-auto"><input class="form-control" type="text" name="tag" placeholder="Tag"></div>
            <div class="col-auto"><input class="form-control" type="file" name="file"></div>
            <div class="col-auto"><input class="form-control" type="hidden" name="_csrf" value="${_csrf.token}"/></div>
            <div class="col-auto">
                <button type="submit" class="btn btn-secondary">Add message</button>
            </div>
        </form>
    </div>

    <div class="row row-cols-1 row-cols-md-5 g-4 align-items-start my-3">
        <#list messages as message>
            <div class="card my-3">
                <#if message.filename??>
                    <img src="/img/${message.filename}" class="card-img-top">
                </#if>
                <div class="m-2">
                    <span>${message.text}</span>
                </div>
                <i>${message.tag}</i>
                <div class="card-footer">
                    ${message.authorName}
                </div>
            </div>
        <#else>
            No message
        </#list>
    </div>
</@c.page>