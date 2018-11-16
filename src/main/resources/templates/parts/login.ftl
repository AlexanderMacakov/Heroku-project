<#macro login path isRegisterForm>
<form action="${path}" method="post" xmlns="http://www.w3.org/1999/html">
        <div class="form-group">
            <label class="col-sm-2 col-form-label"> Login : </label>
            <div class="col-sm-3">
            <input class="form-control" type="text" name="username" placeholder="Введите логин"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 col-form-label"> Password: </label>
            <div class="col-sm-3">
            <input class="form-control" type="password" name="password" placeholder="Введите пароль"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm><a href="/registration"> Add new user</a></#if>
        <button class="btn btn-primary" type="submit">
            <#if isRegisterForm>Create
            <#else>Sign In
            </#if>
        </button>
    </form>
</#macro>

<#macro logout>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button class="btn btn-primary" type="submit" />Sign Out</button>
        </form>
</#macro>