{
  "ServiceRequestDetail": 
  {
  	<#list ServiceRequestDetail as result>"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        </#list>
  },
	<#list PolicyInfo as result>"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        </#list>

}