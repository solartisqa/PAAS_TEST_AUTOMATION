{
  "ServiceRequestDetail": {
  <#list ServiceRequestDetail as result>"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
  </#list>
  },
  "Policy": {
  "DocGenerationFormsList": [<#assign i=1><#assign it=0>
  <#list 1..82 as pol><#assign DocGenerationFormsListss="DocGenerationFormsList"+pol><#if DocGenerationFormsListss?eval??><#assign it=it+1></#if></#list>
  <#list 1..it as pol>
  <#assign DocGenerationFormsListss="DocGenerationFormsList"+i>
  <#if DocGenerationFormsListss?eval??>
  	{
	  <#list DocGenerationFormsListss?eval as result>	  
	  "${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>	  
	  </#list>
	}<#if pol?is_last><#else>,</#if>
  </#if><#assign i=i+1>
  </#list>
   ],
     <#list Policy as result>"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
  </#list>
  }
}