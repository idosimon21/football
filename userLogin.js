function checkPasswordsMatch() {
    var password = document.getElementById("password").value;
    var password2 = document.getElementById("password2").value;
    var passwordsMatch = password === password2;

    if (!passwordsMatch) {
        alert("Passwords do not match!");
        return false; // Prevent form submission
    }

    return true; // Allow form submission
}
