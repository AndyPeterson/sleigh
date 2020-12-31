<style>
    #okCookie{
  background-color:#F2F2F2;
  color:#333333;
  position:absolute;
  bottom:0;
  left:0;
  width:100%;
  padding:10px;
  font-family:sans-serif;
  -moz-box-sizing: border-box; 
  -webkit-box-sizing: border-box; 
  box-sizing: border-box;
  border-top:1px solid #ccc;
  z-index:10;
}

#okCookie p{margin:0 0 10px 0; float:left; padding:5px 0px;}

#okCookie #okClose, #okCookie #okCprivacy{
  padding:5px 20px;
  float:right;
  margin-left:10px;
  text-decoration:none;
  border-radius:3px;
  color:white;
}

#okCookie #okClose{
  background-color:#39B54A;
  text-shadow:0px 1px 1px #507F2B;
  box-shadow:inset 0px -1px 1px #507F2B;
}

#okCookie #okClose:hover{background-color:#42ce55}

#okCookie #okCprivacy{
  background-color:#8D9499;
  text-shadow:0px 1px 1px #63666B;
  box-shadow:inset 0px -1px 1px #63666B;
}

#okCookie #okCprivacy:hover{background-color:#a0a8ae}

.okcBeginAnimate{
    -webkit-animation: myfirst 2s; 
    animation: myfirst 2s;
}

/* Chrome, Safari, Opera */
@-webkit-keyframes myfirst {
    from {opacity: 0;}
    to {opacity: 1;}
}

/* Standard syntax */
@keyframes myfirst {
    from {opacity: 0;}
    to {opacity: 1;}
} 
    </style>
<script language="javascript">
(function(){
  
  //Change these values
  var msg = "We use cookies to enhance your web browsing experience. By continuing to browse the site you agree to our policy on cookie usage.";
  var closeBtnMsg = "OK";
  var privacyBtnMsg = "Privacy Policy";
  var privacyLink = "https://www.google.com";
  
  //check cookies 
  if(document.cookie){
   var cookieString = document.cookie;
   var cookieList = cookieString.split(";");
   // if cookie named OKCookie is found, return
   for(x = 0; x < cookieList.length; x++){
     if (cookieList[x].indexOf("OKCookie") != -1){return}; 
   }
  }
  
  var docRoot = document.body;
  var okC = document.createElement("div");
  okC.setAttribute("id", "okCookie");
  var okCp = document.createElement("p");
  var okcText = document.createTextNode(msg); 
  
  //close button
  var okCclose = document.createElement("a");
  var okcCloseText = document.createTextNode(closeBtnMsg);
  okCclose.setAttribute("href", "#");
  okCclose.setAttribute("id", "okClose");
  okCclose.appendChild(okcCloseText);
  okCclose.addEventListener("click", closeCookie, false);
 
  //privacy button
  var okCprivacy = document.createElement("a");
  var okcPrivacyText = document.createTextNode(privacyBtnMsg);
  okCprivacy.setAttribute("href", privacyLink);
  okCprivacy.setAttribute("id", "okCprivacy");
  okCprivacy.appendChild(okcPrivacyText);
  
  //add to DOM
  okCp.appendChild(okcText);
  okC.appendChild(okCp);
  okC.appendChild(okCclose);
  okC.appendChild(okCprivacy);
  docRoot.appendChild(okC);
  
  okC.classList.add("okcBeginAnimate");
  
  function closeCookie(){
    var cookieExpire = new Date();
    cookieExpire.setFullYear(cookieExpire.getFullYear() +2);
    document.cookie="OKCookie=1; expires=" + cookieExpire.toGMTString() + ";";
    docRoot.removeChild(okC);
  }
  
})();
</script>