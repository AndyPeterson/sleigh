<style>
    $primary-color: #ccc;
$col-bg-color: #eee;
$col-footer-bg-color: #eee;
$col-header-bg-color: #027fa9;
$col-content-bg-color: #fff;

body {
  background-color: $primary-color;
}

.ribbon {
  height: 100px;
  width: 30px;
  background-color: #ddd;
  position: absolute;
  right:30px;
  top:15px;
  writing-mode: tb-rl;
  z-index: 999;
}

.ribbon span {
  padding: 20px
}

.ribbon::after {
  height: 10px;
  margin-left: 10px solid #000;
}

.custom-column {  
  background-color: $col-bg-color;
  border: 5px solid $col-bg-color;    
  padding: 10px;
  box-sizing: border-box;  
}

.custom-column-header {
  font-size: 24px;
  background-color: #027fa9;  
  color: white;
  padding: 15px;  
  text-align: center;
}

.custom-column-content {
  background-color: $col-content-bg-color;
  border: 2px solid white;  
  padding: 20px;  
}

.custom-column-footer {
  background-color: $col-footer-bg-color;   
  padding-top: 20px;
  text-align: center;
}
</style>
<!---<cfset feedBean = m.getFeed('content').where().prop('credits').containsValue('steve')>--->

<cfset feedBean = m.getBean('feed').loadBy(name='blogFeatures')>
    
    
<!---
These are some amazing dumps right here
<cfdump var="#feedBean.getQuery()#" top="200" >
<cfdump var="#feedBean.getIterator()#" top="200" >--->
    <!---<cfdump var="#feedBean#">--->
<cfset it = feedBean.getIterator()>

    <cfif it.hasNext()>    <div class="container">
        <div class="row">
                <cfloop condition="it.hasNext()">
                    <cfset item = it.next()>
                        <div class="col-sm-12 col-md-4">
                            <div class="custom-column" style="border: 1px solid rgba(0, 0, 0, 0.125); min-height: 300px">
                                <div class="custom-column-header">
                                    <cfoutput>#esapiEncode('html', item.get('title'))#</cfoutput>
                                </div>
                                <div class="custom-column-content">
                                 <!---<cfoutput>#esapiEncode('html', item.get('summary'))#</cfoutput>--->
                                 <cfoutput>
                                     <!---<img class="img-responsive" src="/sites/Sleigh/cache/file/#item.get('fileID')#_medium.png">--->
                                     
                                     <img class="img-responsive" src="/sites/Sleigh/cache/file/#item.get('fileID')#.jpg">
                                     <!--- asp trying to hide blog post summary on mobile --->
                                      <!--- hiding per Sleign 5/6/2020
                                        <span class="d-sm-none d-md-block">#item.get('summary')#</span> ---></cfoutput> 
                                       
                                </div>
                                <div class="custom-column-footer">
                                    <cfoutput>
                                        <a class="btn btn-primary btn-lg" href="#item.get('url')#">Read More</a>
                                    <!---<button class="btn btn-primary btn-lg" href="#item.get('url')#">
                                        Read More
                                    </button>--->
                                    
                                    </cfoutput>
                                </div>
                            </div>
                        </div>
                 </cfloop>
                </div>
            </div>
            <cfelse>                    

      

  <p class="alert alert-info">
    This iterator doesn't have any items.
  </p>
</cfif>
      
