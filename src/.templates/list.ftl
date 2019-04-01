<#if depth==0>
    <div class="content">
        ${itemsurl['intro'].content}
    </div>

    <div class="light_grey content">
        ${itemsurl['founders'].content}
    </div>

    <div class="dark_grey content">
        ${itemsurl['contact'].content}
    </div>
<#else>
  <#if layout??><div class="${layout}"></#if>
  <#list items as key, item>
    <#if url=="pub">
      <h1>${item.name}</h1>
    </#if>
    <div id=${item.nr}>
      ${item.content}
    </div>
  </#list>
  <#if layout??></div></#if>
</#if>
