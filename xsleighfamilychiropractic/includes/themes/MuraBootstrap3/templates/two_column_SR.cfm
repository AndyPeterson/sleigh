<cfoutput>
	<cfinclude template="inc/html_head.cfm" />
	<body id="#$.getTopID()#" class="depth-#$.content('depth')# #$.createCSSHook($.content('menuTitle'))#">
		<cfinclude template="inc/navbar.cfm" />
		<div class="container">
			<div class="row">
				<section class="col-lg-9 col-md-9 col-sm-8 col-xs-12 content">
					<cfinclude template="inc/breadcrumb.cfm" />
					#$.dspBody(
						body=$.content('body')
						, pageTitle=$.content('title')
						, crumbList=false
						, showMetaImage=true
						, metaImageClass='thumbnail'
					)#
					#$.dspObjects(2)#
				</section><!--- #98A8B1 #e0dede; #A0AFB9--->
				<aside class="col-lg-3 col-md-3 col-sm-4 col-xs-12 sidebar" style="background-color:##e0dede; padding-top:10px; border-radius:5px;">
					#$.dspObjects(3)#
				</aside>
			</div><!--- /.row --->
			<cfinclude template="inc/footer.cfm" />
		</div><!--- /.container --->
	<cfinclude template="inc/html_foot.cfm" />
</cfoutput>