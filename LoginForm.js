function checkForm() {
    var msg = "";


    // user name check
    {
        var uName = document.getElementById("uName").value;
        var msg = "";
        if (uName.length < 2)
            msg = "User Name too short";
        if (uName.length > 30)
            msg = "User Name too long";
        if (containsHebrew(uName))
            msg = "User Name can't contain Hebrew"
        if (containBadChars(uName))
            msg = "User name contains forbidden chars"
        if (msg != "") {
            document.getElementById("muName").value = msg;
            document.getElementById("muname").style.display = "inLine";
            return false;
        }
        else
            document.getElementById("muName").style.display = "none";
    }


    // first name check
    {
        if (fName.length < 2) {
            document.getElementById("mfName").value = "First Name too short or not exist";
            document.getElementById("mfName").style.display = "inLine";
            return false;
        }
        elsedocument.getElementById("mfName").style.display = "none";
    }




    // Last name check
    {
        if (lName.length < 2) {
            document.getElementById("mlName").value = "Last Name too short or not exist";
            document.getElementById("mlName").style.display = "inLine";
            return false;
        }
        elsedocument.getElementById("mlName").style.display = "none";

    }



    // email check
    {
        if (email == "") {
            document.getElementById("memail").value = "Enter email";
            document.getElementById("memail").style.display = "inLine";
            return false;
        }
        elsedocument.getElementById("memail").style.display = "none";
    }


    // gender check
    {
        var ans = document.getElementsByName("gender");
        {
            if (!ans[0].checked && !ans[1].checked) {
                document.getElementById("mgender").value = "Choose gender";
                document.getElementById("mgender").style.display = "inLine";
                return false;
            }
            elsedocument.getElementById("mgender").style.display = "none";
        }
    }





    // phone number check
    {
        msg = "";
        var phone = document.getElementById("phone").value;
        if (isNaN(phone))
            msg = "Phone number have to contains onli nums";
        else if (phone > 9999999 || phone < 1000000)
            msg = "Phone mumber have to contain 7 numbers";

        if (msg != "") {
            document.getElementById("mphone").value = msg;
            document.getElementById("mphone").style.display = "inLine";
            return false;
        }
        else
            document.getElementById("mphone").style.display = "none";

    }

    // city check
    {
        var city = document.getElementById("city").value;
        if (city == "other") {
            document.getElementById("mcity").value = msg;
            document.getElementById("mcity").style.display = "inLine";
            return false;
        }
        else
            document.getElementById("mcity").style.display = "none";
    }
    // hobies check
    {
        var hobies = document.getElementsByName("hobies");
        var hobcheck = false;
        for (var i = 0; i < hobies.length; i++) {
            if (hobies[i].checked)
                hobcheck = true;
        }

        if (!hobcheck) {
            document.getElementById("mhobies").value = msg;
            document.getElementById("mhobies").style.display = "inLine";
            return false;
        }
        else
            document.getElementById("mhobies").style.display = "none";
    }
    // password check
    {
        var pass = document.getElementById("password").value;
        if (pass.length < 6 || pass.length > 8) {
            msg = "password must be betweeb 6-8 digits";
            document.getElementById("mpassword").value = msg;
            document.getElementById("mpassword").style.display = "inLine";
            return false;
        }
        else
            document.getElementById("mpassword").style.display = "none";
    }


    alert("Form is fine")
    return true;
}
function containsHebrew(word) {
    for (var i = 0; i < word.length; i++)
        if (word.chatAt(i) >= 'א' && word.charAt(i) <= 'ת')
            return true;
    return false;
}

function containsBadChars(word) {
    var sign = "><\|/?.[]{}!@#$%^&*()-_+=~`;";
    for (var i = o; i < word.length; i++)
        if (sign.indexOf(word.charAt(i)) != -1)
            return true;
    return false;
}

function isQuot(word) {
    var qout = "'";
    var qout1 = "'";
    if (word.indexOf(qout) != -1 || word.indexOf(qout1) != -1)
        return true;
    return false;
}

function isValidString(mail) {
    var sign = "><\|/?.[]{}!@#$%^&*()-_+=~`;";
    for (var i = o; i < word.length; i++)
        if (sign.indexOf(word.charAt(i)) != -1)
            return true;
    return false;
}