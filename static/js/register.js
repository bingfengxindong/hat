$(function () {

    var error_name = false;
    var error_password = false;
    var error_check_password = false;
    var error_email = false;

    $('#user_name').blur(function () {
        check_user_name();
    });

    $('#pwd').blur(function () {
        check_pwd();
    });

    $('#cpwd').blur(function () {
        check_cpwd();
    });

   $('#email').blur(function () {
        check_email();
    });

    function check_user_name() {
        var len = $('#user_name').val().length;
        if (len < 5 || len > 20) {
            $('#user_name').next().html('请输入5-20个字符的用户名').show();
            // $('#user_name').css({"background":"red"}).show();
            error_name = true;
            return
        }
        else {
            //验证用户名是否存在
            $.get('/user_name', {'uname': $('#user_name').val()}, function (data) {//{result:***}
                if (data.result == 1) {
                    $('#user_name').next().html('用户名已存在').show();
                    error_name = true;
                } else {
                    $('#user_name').next().hide();

                    error_name = false;
                }
            });
        }
    }

    function check_pwd() {
        var len = $('#pwd').val().length;
        if (len < 8 || len > 20) {
            $('#pwd').next().html('密码最少8位，最长20位')
            $('#pwd').next().show();
            error_password = true;
        }
        else {
            $('#pwd').next().hide();
            error_password = false;
        }
    }


    function check_cpwd() {
        var pass = $('#pwd').val();
        var cpass = $('#cpwd').val();

        if (pass != cpass) {
            $('#cpwd').next().html('两次输入的密码不一致')
            $('#cpwd').next().show();
            error_check_password = true;
        }
        else {
            $('#cpwd').next().hide();
            error_check_password = false;
        }
    }

        function check_email() {
        var re = /^[a-z0-9][\w\.\-]*@[a-z0-9\-]+(\.[a-z]{2,5}){1,2}$/;

        if (re.test($('#email').val())) {
            $('#email').next().hide();
            error_email = false;
        }
        else {
            $('#email').next().html('你输入的邮箱格式不正确')
            $('#email').next().show();
            error_check_password = true;
        }

    }


    $('#reg_form').submit(function () {
        check_user_name();
        check_pwd();
        check_cpwd();

        if (error_name == false && error_password == false && error_check_password == false) {
            return true;
        }
        else {
            return false;
        }
    });
});