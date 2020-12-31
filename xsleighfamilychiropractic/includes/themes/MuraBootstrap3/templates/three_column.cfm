<cfoutput>
	<cfinclude template="inc/html_head.cfm" />
	<body style="" id="#$.getTopID()#" class="depth-#$.content('depth')# #$.createCSSHook($.content('menuTitle'))#">
		<cfinclude template="inc/navbar.cfm" />
		<div class="container">
			<div class="row">
				<div class="visible-xs visible-sm">
					<p style="margin:2px; border-color:navy; padding:2px; text-align:center; background-color:##eee;">
						Sleigh Family Chiropractic<br />
						<a href="tel:+8477880880">847-788-0880</a> / <a href="mailto:drssleigh@sleighfamilychiropractic.com">Email</a><br>
3285 N Arlington Heights Rd., Ste. 206<br>
Arlington Heights, IL 60004<br></p></div>
				<section class="col-lg-6 col-md-6 col-sm-8 col-xs-12 content col-sm-push-3">
					<cfinclude template="inc/breadcrumb.cfm" />
					#$.dspBody(
						body=$.content('body')
						, pageTitle=$.content('title')
						, crumbList=false
						, showMetaImage=true
						, metaImageClass='thumbnail'
					)#
					#$.dspObjects(2)#
				</section>
				 <div class="clearfix visible-xs"></div> 
				<aside class="col-lg-3 col-md-3 col-sm-4 col-xs-12 col-sm-pull-6">
					#$.dspObjects(1)#
				</aside>
				<aside class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
					#$.dspObjects(3)#
				</aside>
			</div><!--- /.row --->
		<cfinclude template="inc/footer.cfm" />
		</div><!-- /.container -->
	<cfinclude template="inc/html_foot.cfm" />
</cfoutput>