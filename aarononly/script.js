    function checkPswd() {
      var confirmPassword = "103323";
      var password = document.getElementById("pswd").value;
      if (password == confirmPassword) {
        window.location = "https://cdn.aww7.repl.co/adminserver";
      }
    }
