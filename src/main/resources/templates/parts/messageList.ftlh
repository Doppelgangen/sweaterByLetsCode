<#include "security.ftlh">

<div class="row row-cols-1 row-cols-md-5 g-4 align-items-start my-3" id="message-list">
    <#list messages as message>
        <div class="card my-3" data-id="${message.id}">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top"/>
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
            </div>
            <div class="card-footer">
                <a href="/user-messages/${message.author.id}">${message.authorName}</a>
                <#if message.author.id == currentUserId>
                <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">Edit</a>
                </#if>
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>