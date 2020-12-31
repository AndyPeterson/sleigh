<cfoutput>
<header class="navbar-wrapper">

			<div class="row text-center hidden-xs">
					<a href="/" title="Sleigh Family Chiropractic Home Page"><img src="/sleighfamilychiropractic/includes/themes/mercedSleigh/images/bg_header.jpg" class="img-responsive center-block" alt="Sleigh Family Chiropractic"></a>
				</div> 

	<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
		<div class="container">

			<!--- <img src="/atlanticchiro/includes/themes/MuraBootstrap3/images/bg_header.jpg" class="img-responsive" alt="Responsive image"> --->
			<!--- <img src="\sleighfamilychiropractic\includes\themes\mercedSleigh\images/bg_header.jpg" class="img-responsive" alt="Sleigh Family Chiropractic"> --->
			<div class="navbar-header">
<!---		<p class="navbar-brand" href="#$.createHREF(filename='')#">#HTMLEditFormat($.siteConfig('site'))#</p>		  ---><div class="visible-xs visible-sm">
				<p class="navbar-brand">847-788-0880  / <a href="mailto:drssleigh@sleighfamilychiropractic.com">Email</a>   /  <a href="http://www.sleighfamilychiropractic.com/contact-us/">Address</a></p></div>

				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div><!--- /.navbar-header --->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<div class="row">
					<div class="col-md-10">
						<cf_CacheOMatic key="dspPrimaryNav">
							<!--- 
								For information on dspPrimaryNav(), visit:
								http://docs.getmura.com/v6/front-end/template-variables/document-body/
							--->
							#$.dspPrimaryNav(
								viewDepth=3
								, id='navPrimary'
								, class='nav navbar-nav'
								, displayHome='always'
								, closeFolders=true 
								, showCurrentChildrenOnly=false
								, liHasKidsClass='dropdown'
								, liHasKidsAttributes=''
								, liCurrentClass=''
								, liCurrentAttributes=''
								, liHasKidsNestedClass='dropdown-submenu'
								, aHasKidsClass='dropdown-toggle'
								, aHasKidsAttributes='role="button" data-toggle="dropdown" data-target="##"'
								, aCurrentClass=''
								, aCurrentAttributes=''
								, ulNestedClass='dropdown-menu'
								, ulNestedAttributes=''
								, aNotCurrentClass=''
								, siteid=$.event('siteid')
							)#
						</cf_CacheOMatic>
						<script>
							$(function(){
								$(#serializeJSON($.getCurrentURLArray())#).each(
									function(index, value){
										$("##navPrimary [href='" + value + "']").closest("li").addClass("active");
									}
								);
							})
						</script>
					</div>
					 <div class="col-md-2 pull-right">
						<form id="searchForm" class="navbar-form navbar-right" role="search">
							<div class="input-group">
								<input type="text" name="Keywords" id="navKeywords" class="form-control" value="#HTMLEditFormat($.event('keywords'))#" placeholder="#$.rbKey('search.search')#">
								<span class="input-group-btn">
									<button type="submit" class="btn btn-default">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div>
							<input type="hidden" name="display" value="search">
							<input type="hidden" name="newSearch" value="true">
							<input type="hidden" name="noCache" value="1">
						</form>
					</div> <!--- /search --->
				</div><!--- /.row --->
			</div><!--- /.navbar-collapse --->
		</div><!--- /.container --->
	</nav><!--- /nav --->
</header>
</cfoutput>