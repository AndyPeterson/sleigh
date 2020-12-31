<cfoutput>
<!DOCTYPE html>
<html lang="en"<cfif $.hasFETools()> class="mura-edit-mode"</cfif>>
	<cfinclude template="inc/html_head.cfm" />
	<body id="#$.getTopID()#" class="#$.createCSSHook($.content('menuTitle'))#" data-spy="scroll" data-target=".subnav" data-offset="50">
      <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K94NHQK"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
		<cfinclude template="inc/navbar_sleigh.cfm" />

		<!---
			The Carousel/Slideshow
			Refer to the theme's contentRenderer.cfc for details on this method and its arguments/options
			NOTES:
				* This theme is designed for Mura 7.0+
				* Only content items with an 'Associated Image' will be rendered
				* You can control the crop of the carousel image by using the
				  custom defined 'carouselimage' image size // 'carouselimage'
		--->
		#$.dspCarouselByFeedName(
			feedName='Slideshow'
			, showCaption=true
			, cssID='myCarousel'
			, size='carouselimage'
			, interval=5000
			, autoStart=true
      , showIndicators=false
		)#

		#$.dspObjects(1)#

		<div class="template pb-5">

			<div class="container">
				<section class="py-5">
                    <cfinclude template="components/threeColumnImageAndTeaser-CodePen.cfm">
                    
					<!---
							The Content
							See the file located under '/display_objects/page_default/index.cfm' to override body styling
					--->
					<!--- #$.dspBody(
						body=$.content('body')
						, pageTitle=''
						, crumbList=false
						, showMetaImage=false
					)# --->

					<!--- #$.dspObjects(2)# --->

				</section>
                
         
			</div><!-- /.container -->
            
            <cfinclude template="components/quantumMarketingTestimonials.cfm">  
           <!--- <cfinclude template="components/testimonialIterator.cfm">
                
            #$.dspCarouselByFeedName(
			feedName='TestimonialSlideshow'
			, showCaption=true
			, cssID='TestimonialCarousel'
			, size='carouselimage'
			, interval=5000
			, autoStart=true
            , showIndicators=false
		)#---> 
		
        <div class="container">
				<section class="py-5">
                    <cfinclude template="components/threeColumnBlogPosts.cfm">
				</section>        
                    
        </div>

		<cfinclude template="inc/footer_sleigh.cfm" />
		<cfinclude template="inc/html_foot.cfm" />
	</body>
</html>
</cfoutput>
