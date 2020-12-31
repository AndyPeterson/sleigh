<!--- Inspired by --->
<!--- https://codepen.io/anjanasilva/pen/JmdOpb --->
<!--- https://w3bits.com/labs/css-image-hover-zoom/ --->
<style>
    $primary-color: #ccc;
$col-bg-color: #eee;
$col-footer-bg-color: #eee;
$col-header-bg-color: #027FA9;
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
  background-color: #027FA9;  
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

<div class="container">
  <div class="row">
    <div class="col-sm-12 col-md-4">
      <div class="custom-column">
        <div class="img-hover-zoom img-hover-zoom--colorize">
                    <a href="/chiropractic/pregnancy-chiropractors-in-arlington-heights-il-sleigh-family-chiropractic/"><img class="card-img-top img-fluid" src="/themes/Sleigh2020Theme/images/prego-heart-360.jpg" alt="Card image cap"></a>
                    </div>
          <div class="custom-column-footer">
            <a class="btn btn-primary btn-lg" href="chiropractic/pregnancy-chiropractors-in-arlington-heights-il-sleigh-family-chiropractic/">Chiropractic for Pregnancy</a>
          </div>
      </div>
       <!--- <div class="custom-column-header">--->
            <!---<button class="btn btn-primary btn-lg">Click here</button>
            
            <a class="btn btn-large btn-outline-success" href="/chiropractic/pregnancy-chiropractors-in-arlington-heights-il-sleigh-family-chiropractic/" role="button">Pregnancy Chiropractic</a>--->
            
            <!---<a href="/chiropractic/pregnancy-chiropractors-in-arlington-heights-il-sleigh-family-chiropractic/">Pregnancy Chiropractic</a>
          
          </div>--->
         <!--- <div class="custom-column-content">
          <ul class="list-group">
            <li class="list-group-item"><i class="fa fa-check"></i> Decrease discomfort</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Reduced labor time</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Experience healthy pregnancy</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Lower risk pregnancy</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Proper baby positioning</li>
          </ul>
        </div>
        <div class="custom-column-footer"><button class="btn btn-primary btn-lg">Click here</button></div> </div>--->
     
    </div>
    <div class="col-sm-12 col-md-4">
      <div class="custom-column">        
        <div class="img-hover-zoom img-hover-zoom--colorize">
                    <a href="/chiropractic/pediatric-chiropractors-in-arlington-heights-il-sleigh-family-chiropractic/"><img class="card-img-top img-fluid" src="/themes/Sleigh2020Theme/images/dr_katie_adjusts_baby_360.jpg" alt="Card image cap"></a>
                    </div>
        <!---<div class="custom-column-header">Pediatric Chiropractic</div>
        <div class="custom-column-content">
          <ul class="list-group">
            <li class="list-group-item"><i class="fa fa-check"></i> Kind, caring approach</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Safe for your child</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Sleep problems in newborns</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Allergies and athsma</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Digestive problems</li>
          </ul>
        </div>--->
        <div class="custom-column-footer">
            <a class="btn btn-primary btn-lg" href="/chiropractic/pediatric-chiropractors-in-arlington-heights-il-sleigh-family-chiropractic/">Pediatric Chiropractor</a>
          </div>
      </div>
    </div>
    <div class="col-sm-12 col-md-4">
       <div class="custom-column">        
        <div class="img-hover-zoom img-hover-zoom--colorize">
            <a href="/chiropractic/low-back-pain-relief-and-wellness-arlington-heights-il-sleigh-family-chiropractic/"><img class="card-img-top img-fluid" src="/themes/Sleigh2020Theme/images/spine.jpg" alt="Card image cap"></a>
        </div>
        <!---<div class="custom-column-header">Adult Chiropractic</div>
        <div class="custom-column-content">
          <ul class="list-group">
            <li class="list-group-item"><i class="fa fa-check"></i> Boost immune system</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Address wear and tear</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Safeguard your health</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Improve mood</li>
            <li class="list-group-item"><i class="fa fa-check"></i> Reduce inflammations</li>
          </ul>
        </div>--->
        <div class="custom-column-footer"> <a class="btn btn-primary btn-lg" href="/chiropractic/low-back-pain-relief-and-wellness-arlington-heights-il-sleigh-family-chiropractic/">Adult Pain Relief and Wellness</a></div>
      </div>
    </div>
  </div>
</div>