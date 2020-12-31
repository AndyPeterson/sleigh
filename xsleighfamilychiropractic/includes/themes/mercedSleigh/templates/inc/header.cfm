<cfoutput>
	<div id="header" class="clearfix">
		<h1><a href="#application.configBean.getContext()#/">#HTMLEditFormat(renderer.getSite().getSite())#</a></h1>
		<!---<span class="navUtility"><a style="color:white; font-weight:bold;" href="/index.cfm/our-office/meet-the-doctors/">About Us</a> ||| <a style="color:white;" href="/index.cfm/contact-us">Contact</a></span>--->
      <ul class="navUtility">
			<li style="color:white; font-weight:bold; font-size:13px;"><!---<a style="color:white; font-weight:bold;" href="/index.cfm/our-office/meet-the-doctors/">About Us</a>---></li>
			<!---<li class="last"><!---<a style="color:white;" href="/index.cfm/contact-us">Contact</a>---></li>--->
		</ul>
		<form action="#application.configBean.getIndexFile()#" id="searchForm">
			<fieldset>
				<input type="text" name="Keywords" id="txtKeywords" class="text" value="Search" onfocus="this.value=(this.value=='Search') ? '' : this.value;" onblur="this.value=(this.value=='') ? 'Search' : this.value;" />
				<input type="hidden" name="display" value="search" />
				<input type="hidden" name="newSearch" value="true" />
				<input type="hidden" name="noCache" value="1" />
				<input type="submit" class="submit" value="Go" />
			</fieldset>
		</form>
		<cf_CacheOMatic key="dspPrimaryNav#request.contentBean.getcontentID()#">#renderer.dspPrimaryNav(viewDepth="1",id="navPrimary",displayHome="Always",closePortals="true")#</cf_cacheomatic>
		<!--- Optional named arguments for Primary Nav are: displayHome="Always/Never/Conditional", openPortals/closePortals="contentid,contentid" (i.e. show specific sub-content in dropdown nav) --->
	</div>
</cfoutput>