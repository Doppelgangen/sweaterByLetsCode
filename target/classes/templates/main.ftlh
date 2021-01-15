<#import "parts/common.ftlh" as c>

<@c.page>
    <form method="get" action="/main" class="row row-cols-lg-auto align-items-start">
        <div class="col-auto">
            <input type="text" name="filter" value="${filter?ifExists}" class="form-control"
                   placeholder="Search by tag"/>
        </div>
        <div class="col-auto">
            <button type="submit" class="btn btn-outline-secondary ms-3">Search</button>
        </div>
    </form>

    <#include "parts/messageEdit.ftlh" />

    <#include "parts/messageList.ftlh"/>

</@c.page>