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
    <div class="collapse <#if message??>show</#if>" id="collapseExample">
        <form method="post" enctype="multipart/form-data" class="my-3">
            <div class="form-group">
                <input class="form-control ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.text}</#if>" type="text" name="text"
                       placeholder="Input message">
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <div class="form-group mt-3">
                <input class="form-control ${(tagError??)?string('is-invalid', '')}" type="text" name="tag" placeholder="Tag"
                       value="<#if message??>${message.tag}</#if>">
                <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
            </div>
            <div class="form-group mt-3">
                <input class="form-control mt-3" type="file" name="file">
            </div>
            <input class="form-control" type="hidden" name="_csrf" value="${_csrf.token}"/>
            <div class="form-group mt-3">
                <button type="submit" class="btn btn-secondary mt-3">Add message</button>
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