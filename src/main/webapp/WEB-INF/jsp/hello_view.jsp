<html>
  <head>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id" content="588606067748-msh24h7gdmui3g9b7tn7n2hipnbs92cc.apps.googleusercontent.com">
    <script type="text/javascript">
      function onSignIn(googleUser) {
        profile = googleUser.getBasicProfile();
        setUserData(profile)
      }
      function signOut() {
          var auth2 = gapi.auth2.getAuthInstance();
          auth2.signOut().then(function () {
            console.log('User signed out.');
            var x = document.getElementById('login_block');
            x.style.display = 'block';
            x = document.getElementById('success_block');
            x.style.display = 'none';
          });
      }
      function setUserData(){
        var x = document.getElementById('login_block');
        x.style.display = 'none';
        x = document.getElementById('success_block');
        x.style.display = 'block';
        welcome_user.innerText = "Hello, "+profile.getName()+"!";
        profile_image.src = profile.getImageUrl();
        // console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        // console.log('Full Name: ' + profile.getName());
        // console.log('Given Name: ' + profile.getGivenName());
        // console.log('Family Name: ' + profile.getFamilyName());
        // console.log("Image URL: " + profile.getImageUrl());
        // console.log("Email: " + profile.getEmail());
      }
    </script>
  </head>

  <body bgcolor="white">
    <div id="login_block">
      <div style="font-size: 150%; color: #850F0F; text-align: center;">
        <h6 href="contact" style=" color: #999; font-size: 1.7rem; text-transform: uppercase; letter-spacing: .1em; font-weight: 300; margin: 0 0 10px;">Welcome to sample third party login application</h6>
        <span>Select how do you want to login </span><br />
        <div class="g-signin2" data-onsuccess="onSignIn" style="margin: 10 auto; width: 120px;"></div>
        <!-- <form method="post" action="hello">
          <input type=text size="15" name="user" >
          <input type=submit name="submit" value="Ok">
        </form> -->
      </div>
      <!-- <div>
        <%
            {
              java.lang.String answer = (java.lang.String)request.getAttribute("greeting");   
        %>
        <span><%=answer%></span>
        <%
            }
        %>
      </div> -->
    </div>
    <div id="success_block" style="font-size: 150%; color: #850F0F; text-align: center; display: none; margin: 20 auto;">
      <h6 id="welcome_user" style=" color: #999; font-size: 1.7rem;  letter-spacing: .1em; font-weight: 300; margin: 0 0 10px;">Hello, User!</h6>
      <div style="margin: 40px;">
        <img id="profile_image" src="" style=" border-radius: 50%;">  
      </div>
      <div style="margin: 40px;">
        <button type="button" onclick="signOut()" style="height: 40px; width: 100px; background: red; border: red; border-radius : 5px; color: white; font-family: monospace;">Sign out</button>  
      </div> 
    </div>
    <jsp:include page="/WEB-INF/jsp/footer.jsp"/>
  </body>
</html>
