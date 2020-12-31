<!---<cfset testimonialBean = m.getBean('feed').loadBy(name='TestimonialSlideshow')>
<cfset testimonialIterator = testimonialBean.getIterator()>
    <cfif testimonialIterator.hasNext()>
            <cfloop condition="testimonialIterator.hasNext()">
                    <cfset item = testimonialIterator.next()>
         <p>hey</p>
        </cfloop>
    </cfif>
 lets get ourselves some testimonials    --->


<cfset testimonialBean = m.getBean('feed').loadBy(name='TestimonialSlideshow')>
<cfset testimonialIterator = testimonialBean.getIterator()>
     

<div>
    <div class="testimonial pt-5 pb-1 testimonialBG">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-8 offset-lg-2">
                    
                    <a href="">
                        <h3 class="h2 text-center whiteText">Testimonials</h3>
                    </a>
                    
                    <div id="testimonialCarousel" class="carousel slide" data-ride="carousel" data-interval="5000">
                        
                        <style type="text/css">
                            .carousel-item::before{
                                content:none;
                            }
                        </style>
                        
                        <div class="carousel-inner carousel-container">
                            <!--- here is where the looping begins --->
                           <cfif testimonialIterator.hasNext()>
                            <cfloop condition="testimonialIterator.hasNext()">
                                <cfset item = testimonialIterator.next()>
                                <div class="carousel-item active" style="min-height: 160px">
                                    <h2 class="h3 text-center whiteText"><i><cfoutput>#item.get('title')#</cfoutput></i></h2>
                                    <cfoutput>#item.get('summary')#</cfoutput>
                                </div>
                            </cfloop>
                            </cfif>
                        <!--- end loop --->
                        </div>
                        
                        <a class="carousel-control-prev" 
                           href="##testimonialCarousel" 
                           role="button"
                           data-slide="prev" 
                           style="width:auto;">
                            <span style="color:black;font-size:40px;font-weight: bold;">
                                &lsaquo;
                            </span>
                        </a>
                        <a class="carousel-control-next" href="##testimonialCarousel" role="button" data-slide="next" style="width:auto">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

                    