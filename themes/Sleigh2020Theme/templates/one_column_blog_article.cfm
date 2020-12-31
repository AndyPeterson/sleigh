<cfoutput>
<!DOCTYPE html>
<html lang="en"<cfif $.hasFETools()> class="mura-edit-mode"</cfif>>
	<cfinclude template="inc/html_head.cfm" />
	<body id="#$.getTopID()#" class="depth-#$.content('depth')# #$.createCSSHook($.content('menuTitle'))#">
      <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K94NHQK"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
		<cfinclude template="inc/navbar_sleigh.cfm" />
		<div class="template py-5">
			<div class="container">
				<cfinclude template="inc/breadcrumb.cfm" />				
                <div class="row">
					<section class="content col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<cfset pageTitle = $.content('type') neq 'Page' ? $.content('title') : ''>
						#$.dspBody(body=$.content('body')
							, pageTitle=pageTitle
							, crumbList=false
							, showMetaImage=true
						)#...
						#$.dspObjects(2)#
					</section>
				</div>
			</div><!-- /.container -->
		</div>
		<cfinclude template="inc/footer_sleigh.cfm" />
		<cfinclude template="inc/html_foot.cfm" />
	</body>
</html>
</cfoutput>
