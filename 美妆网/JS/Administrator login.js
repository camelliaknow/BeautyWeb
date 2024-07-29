function showErrorPopup(message) {
    var errorPopup = document.querySelector('.error-popup');
    errorPopup.textContent = message;
    errorPopup.style.display = 'block';
    setTimeout(function () {
        errorPopup.style.display = 'none';
    }, 3000); // Hide the error popup after 3 seconds
}

function login() {
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;

    if (username === 'admin' && password === '123456') {
        // Redirect to the target link specified by you
        window.location.href = 'Product Management.aspx';
    } else {
        alert("账号或密码错误，请重新输入!");
    }
}