<#include "security.ftl">

<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
            <#if message.filename??>
                <img src="https://res.cloudinary.com/dc5lumqtr/image/upload/v1544792197/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
            <span>${message.text}</span> <br>M
            <i>#${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                <a href="/user-messages/${message.author.id}">${message.authorName}</a>
                <#if message.author.id == currentUserId>
                <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                    Edit
                </a>
                </#if>
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>