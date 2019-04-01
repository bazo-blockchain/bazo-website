<#include "head.ftl">

<header class="row sticky">
  <#if depth!=0> <!-- not main-->
    <label for="doc-drawer-checkbox" class="button drawer-toggle col-sm"></label>
  </#if>
  <a href="${root}" class="logo col-sm3 col-md"><img style="vertical-align: text-top;" id="logo-small2" src="${root}/design/bazo-logo-inv.svg" alt="bazo"></a>
  <#list globalnav as link>
    <a class="button col-sm col-md" href="${root}/${link.url}">
        <span>${link.name}</span>
    </a>
  </#list>
  <a class="button col-sm col-md" href="https://github.com/bazo-blockchain">
      <img style="vertical-align: text-top;" id="logo-small2" src="${root}/design/github-inv.svg" alt="github">
  </a>
</header>
<#if depth==0> <!-- main-->
  <#include "body-header-main.ftl">
</#if>
<div class="container responsive-padding">
    ${content}
</div>

<#include "footer.ftl">