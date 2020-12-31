        <!--- added for Katie 5/23/2020 --->
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K94NHQK"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->

<cfoutput>
<header>
    
        <!--- Adding Top Row --->
        <div class="container" class="margin-top: 5px; padding: 0.5rem 1rem;">
          <div class="row">
            
            <div class="col-sm">
             
            </div>
            <div class="col-sm text-right">
            
            </div>
            <div  style="padding-top:5px;"  class="col-sm text-right">
              
            </div>
          </div>
        </div>
        <!--- /// Adding top row --->
	<nav class="navbar navbar-expand-lg bg-light navbar-light navbar-static-top" style="padding-bottom:0; padding-top:0"><!-- py-4-->
		

        
        <div class="container">

			<a class="navbar-brand" href="#$.createHREF(filename='')#">
                <!---#esapiEncode('html', $.siteConfig('site'))#--->
                <!---Dev Site--->
                <img src="#$.siteConfig('themeAssetPath')#/images/SleighFamilyChiroLogo.png" class="img-responsive">
            </a>
            
            <a class="d-lg-none d-xl-none" href="">Make Appointment</a>
             <a class="d-lg-none d-xl-none" href="">847-788-0880</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="##siteNavbar" aria-controls="siteNavbar" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="navbar-collapse collapse" id="siteNavbar">

				<cf_CacheOMatic key="dspPrimaryNav">
					<!---
						For information on dspPrimaryNav(), visit:
						http://docs.getmura.com/v6/front-end/template-variables/document-body/
					--->
					#$.dspPrimaryNav(
						viewDepth=1
						, id='navPrimary'
						, class='navbar-nav mr-auto'
						, displayHome='never'
						, closeFolders=true
						, showCurrentChildrenOnly=false
						, liClass='nav-item'
						, liHasKidsClass='dropdown'
						, liHasKidsAttributes=''
						, liCurrentClass=''
						, liCurrentAttributes=''
						, liHasKidsNestedClass=''
						, aHasKidsClass='dropdown-toggle'
						, aHasKidsAttributes=''
						, aCurrentClass='nav-link active'
						, aCurrentAttributes=''
						, ulNestedClass='dropdown-menu'
						, ulNestedAttributes=''
						, aNotCurrentClass='nav-link'
						, siteid=$.event('siteid')
					)#
				</cf_CacheOMatic>
				<script>
					Mura(function(){
						#serializeJSON($.getCurrentURLArray())#.forEach(
							function(value){
								navItem=Mura("##navPrimary [href='" + value + "']");
								if(navItem.length){
									var navItem=Mura("##navPrimary [href='" + value + "']").closest("li");
									if(navItem.length){
										navItem.addClass("active");
									}
								}
							}
						);
					})
				</script>

			<!--- add new nested row structure with form --->
                
            <div class="row">
              <div class="col-sm text-right">
                  <div class="row text-right">
                    <a href="tel:1-847-788-0880"><i class="fa fa-phone"></i>+1(847)788-0880 <strong>Call or Text</strong></a>
                    </div>
              <div class="row text-right">
                    
                  <a href="/contact/" style="margin:5px;" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">Make Appointment</a>
                    <a href="/forms/" style="margin:5px;" class="btn btn-secondary btn-sm active" role="button" aria-pressed="true">Forms</a>
                </div>
                  <div class="row">
                    <form method="post" id="searchForm" class="form-inline" role="search" action="#m.createHREF(filename='search-results')#">
					<div class="input-group">
						<input type="text" name="Keywords" id="navKeywords" class="form-control" value="#esapiEncode('html', $.event('keywords'))#" placeholder="#$.rbKey('search.search')#" aria-label="Search">
						<span class="input-group-btn">
							<button type="submit" class="btn btn-secondary">
								<i class="fa fa-search" aria-hidden="true"></i>
								<span class="sr-only">Search</span>
							</button>
						</span>
					</div>
					<input type="hidden" name="display" value="search">
					<input type="hidden" name="newSearch" value="true">
					<input type="hidden" name="noCache" value="1">
					#variables.$.renderCSRFTokens(format='form',context='search')#
				</form>
                </div>
    
  </div>
</div>
                
                

			</div><!--- /.navbar-collapse --->
		</div><!--- /.container --->
	</nav> <!--- /.nav --->
</header>
</cfoutput>
