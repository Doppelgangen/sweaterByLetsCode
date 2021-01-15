<a class="btn btn-secondary mt-3" data-bs-toggle="collapse" href="#collapseExample" role="button"
   aria-expanded="false"
   aria-controls="collapseExample">
    Message editor
</a>
<div class="collapse <#if message??>show</#if>" id="collapseExample">
    <form method="post" enctype="multipart/form-data" class="my-3">
        <div class="form-group">
            <input class="form-control ${(textError??)?string('is-invalid', '')}"
                   value="<#if message??>${message.text}</#if>" type="text" name="text"
                   placeholder="Input message"/>
            <#if textError??>
                <div class="invalid-feedback">
                    ${textError}
                </div>
            </#if>
        </div>
        <div class="form-group mt-3">
            <input class="form-control ${(tagError??)?string('is-invalid', '')}" type="text" name="tag"
                   placeholder="Tag"
                   value="<#if message??>${message.tag}</#if>"/>
            <#if tagError??>
                <div class="invalid-feedback">
                    ${tagError}
                </div>
            </#if>
        </div>
        <div class="form-group mt-3">
            <input class="form-control mt-3" type="file" name="file"/>
        </div>
        <input class="form-control" type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input class="form-control" type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
        <div class="form-group mt-3">
            <button type="submit" class="btn btn-secondary mt-3">Save message</button>
        </div>
    </form>
</div>
