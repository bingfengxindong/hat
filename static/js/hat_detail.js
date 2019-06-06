jq164(function ($) {
    $("#materials").change(function () {
        var matrial = $("#materials option:selected").text();
        var matrial_id_tmp = $('#materials option:selected').attr("name");
        $("input[name=hat_materials_id]").val(matrial_id_tmp);
        $("input[name=hat_change_materials]").val(matrial.split('+')[0]);
        if (matrial.split('+')[1] == null) {
            $("input[name=hat_change_prices_tmp]").val(0);
            $("#back_c").hide()
        } else {
            $("input[name=hat_change_prices_tmp]").val(parseFloat(matrial.split('+')[1]));
            $("#back_c").show()
        }
        var total = '';
        if (this.length == 1) {
            total = 0;
            this.checked()
        }
        var hat_total_price = $("#hat_total_price").val();
        total = parseFloat(matrial.split('+')[1]) + parseFloat(hat_total_price);

        var c_price = $('#c_price').text();
        var c_plus_price = $("input[name=hat_change_prices_tmp]").val();
        if (c_plus_price == "") {
            c_plus_price = 0;
        } else {
            c_plus_price = parseFloat(c_plus_price);
        }

        $("#new_total_price").val(parseFloat(c_price) + c_plus_price);
        var number = parseFloat($('#hat_nums').val());
        var new_hat_total_price = (parseFloat(c_price) + c_plus_price) * number;
        $("#hat_total_price").val(new_hat_total_price);
        if( number >= 2000){
            $("#price_show").show();
            $("#hat_total_price").val(parseFloat((new_hat_total_price) * 0.8)) //条件判断

        }else {
        }
    });


    $("#hat_nums").change(function(){
        var c_price = $('#c_price').text();
        var c_plus_price = $("input[name=hat_change_prices_tmp]").val();
        if (c_plus_price == "") {
            c_plus_price = 0;
        } else {
            c_plus_price = parseFloat(c_plus_price);
        }
        $("#hat_total_price").val(((parseFloat(c_price) + c_plus_price) * this.value).toFixed(2));
        if( this.value  >= 2000){
            $("#price_show").show();
            $("#hat_total_price").val(parseFloat(((parseFloat(c_price) + c_plus_price) * this.value) * 0.8).toFixed(2)) //条件判断
        }
    });

    $("#hat_nums").keyup(function(){
        var c_price = $('#c_price').text();
        var c_plus_price = $("input[name=hat_change_prices_tmp]").val();
        if (c_plus_price == "") {
            c_plus_price = 0;
        } else {
            c_plus_price = parseFloat(c_plus_price);
        }
        $("#hat_total_price").val(((parseFloat(c_price) + c_plus_price) * this.value).toFixed(2));
        if( this.value  >= 2000){
            $("#price_show").show();
            $("#hat_total_price").val(parseFloat(((parseFloat(c_price) + c_plus_price) * this.value) * 0.8).toFixed(2)) //条件判断
        }
    });

    $("#btn01").click(function () {
         html2canvas($("#div1"),{
            // allowTaint:true,
            onrendered: function (canvas) {
                var img = canvas.toDataURL();
                var $src1 = $("#new_image1").attr('src');
                var $src2 = $("#new_image2").attr('src');
                var $src3 = $("#new_image3").attr('src');
                var $src4 = $("#new_image4").attr('src');
                if ($src1 == ""){
                     $("#new_image1").attr('src', img).show();
                }
                if ($src1 != "" && $src2 == ""){
                    $("#new_image2").attr('src', img).show();
                }
                if ($src1 != "" && $src2 != "" && $src3 == ""){
                    $("#new_image3").attr('src', img).show();
                }
                if ($src1 != "" && $src2 != "" && $src3 != "" && $src4 == ""){
                    $("#new_image4").attr('src', img).show();
                }
            }
        })
    })

    $("#new_image1").click(function () {
        $(this).attr('src', "").hide();
    })
    $("#new_image2").click(function () {
        $(this).attr('src', "").hide();
    })
    $("#new_image3").click(function () {
        $(this).attr('src', "").hide();
    })
    $("#new_image4").click(function () {
        $(this).attr('src', "").hide();
    })


    $("#image_num img").hover(function () {
        // $(this).next().show()
        $(this).css("border","1px solid #0f0f0f")

    },function (){
        $(this).css("border","white")
        // $(this).next().hide()
    })


    $("#color_img img").click(function(){
        $(this).css({"border": "1px solid #545353"});
        $(this).parent().siblings().find('.image_07').css({"border": "1px solid #f9f9f9"});
        var name=$(this).prop('name');
        $("#hat_change_color").html(name);

        var image_06=$(this).parent().next().children().attr('src');
        var image_061=$(this).parent().next().children().attr('id');
        $(".hat_change_image").attr('src', image_06).show();
        $(".hat_change_image").attr('id', image_061);
        $(".new_image5").attr('src', image_06);

        var image_01=$(this).parent().next().next().children().attr('src');
        $("#hat_small01").attr('src',image_01).show();

        var image_02=$(this).parent().next().next().next().children().attr('src');
        $("#hat_small02").attr('src',image_02).show();

        var image_03=$(this).parent().next().next().next().next().children().attr('src');
        $("#hat_small03").attr('src',image_03).show();

        var image_04=$(this).parent().next().next().next().next().next().children().attr('src');
        $("#hat_small04").attr('src',image_04).show();
        $("#img-big").hide();
        $("#hat_back").hide();
        $("#hat_back_small").hide();
        // $(".img1").hide()
        
        var image_07=$(this).parent().next().next().next().next().next().next().children().attr('src');
        $("#hat_back_buttom").attr('src',image_07).hide()
    });

     $("#back_img a img").click(function () {
        $(this).css({"border": "1px solid #545353"});
        $(this).parent().siblings().find('.back_image').css({"border": "1px solid #f9f9f9"});


        $("#hat_back_buttom").show();
        $("#hat_back").attr('src', this.src);
        $("#hat_back_small").attr('src', this.src);
        $("#hat_back_small").show();
        $("#hat_back").show();
        $("#hat_meter_id").val(this.getAttribute('name'))
    });


    $(".up_logo a img").click(function () {
       var img1 = $(".img1").attr('src');
       var img2 = $(".img2").attr('src');
       var img3 = $(".img3").attr('src');
       var img4 = $(".img4").attr('src');
        if (img1 == ""){
            $(".img1").attr('src', this.src).show();
            $(".img1").attr('width', this.width);
            $(".img1").attr('height', this.height)

        }
        else if (img2 == ""){
            $(".img2").attr('src', this.src).show();
            $(".img2").attr('width', this.width);
            $(".img2").attr('height', this.height);
        }
        else if (img3 == ""){
            $(".img3").attr('src', this.src).show();
            $(".img3").attr('width', this.width);
            $(".img3").attr('height', this.height);
        }
        else if (img4 == ""){
            $(".img4").attr('src', this.src).show();
            $(".img4").attr('width', this.width);
            $(".img4").attr('height', this.height);
        }
        else {}
        $("#hat_back").hide();
        $("#hat_back_small").hide();
        $("#hat_back_buttom").hide();
        $("#new_image5").attr('src', '');
        $("#jtu").show();
    })

    $(function() {
        $(".product").bind("contextmenu", function(){
            return false;
        });
        $("#logos img").mousedown(function(e) {
            if (3 == e.which) {
               $(this).attr('src', "").hide()
            }
        })
    });


    $(".smallImg img").click(function () {
        $(".hat_change_image").attr('src', this.src);
        $("#hat_back_buttom").hide();
        $("#hat_back_small").hide();
        $("#hat_back").hide();
    });

    $('input[name=mylogo]').on('change', function (e) {
        $('button[name=ajaxsubmit]').on('click', function (e) {
            var formData = new FormData();
            formData.append('mylogo', $('input[name=mylogo]')[0].files[0]);
            $.ajax({
                url: '/logo/',
                method: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                cache: false,
                success: function (data) {
                    console.log(JSON.stringify(data));
                    if (data) {
                        $("#new_logo").show();
                        $("#new_logo").attr("src", "/" + data.img_name);
                    }
                }, error: function (jqXHR) {
                    console.log(JSON.stringify(jqXHR));
                }
            }).done(function (data) {
                console.log('done');
            }).fail(function (data) {
                console.log('fail', data);
            }).always(function (data) {
                console.log('always', data);
            });
        });
    });
})


jq101(function ($) {
    var offX = 0,
        offY = 0;

    if (document.addEventListener) {
        document.addEventListener('DOMMouseScroll', scrollFunc, false);
    } //W3C
    window.onmousewheel = document.onmousewheel = scrollFunc; //IE/Opera/Chrome
    function scrollFunc(e) {
        if (e.target == document.getElementById("pic")) {
            var div1 = document.getElementById("pic");
            // var direct = 0;
            e = e || window.event;
            if (e.wheelDelta) { //IE/Opera/Chrome
                if (e.wheelDelta > 0) {
                    div1.width = div1.width * 1.1;
                    div1.height = div1.height * 1.1;
                } else {
                    div1.width = div1.width / 1.1;
                    div1.height = div1.height / 1.1;
                }
            } else if (e.detail) { //Firefox
                if (e.detail > 0) {
                    div1.width = div1.width * 1.1;
                    div1.height = div1.height * 1.1;
                } else {
                    div1.width = div1.width / 1.1;
                    div1.height = div1.height / 1.1;
                }
            }
            if (e.preventDefault) {
                e.preventDefault();
                e.stopPropagation();
            } else {
                e.returnValue = false;
                e.cancelBubble = true;
            }

            //拖拽
            　　
            div1.onmousedown = function(ev) {
                ev.preventDefault();　　　　
                var oevent = ev || event;　　　　
                var distanceX = oevent.clientX; 　　　
                var distanceY = oevent.clientY;　　　　
                document.onmousemove = function(ev) {
                    　　　　　　
                    var oevent = ev || event;
                    x1 = oevent.clientX - distanceX;
                    y1 = oevent.clientY - distanceY;
                    distanceX = oevent.clientX;
                    distanceY = oevent.clientY;
                    //左移
                    div1.style.marginLeft = (x1 + offX) + "px";
                    div1.style.marginTop = (y1 + offY) + "px";
                    offX = x1 + offX;
                    offY = y1 + offY;　　　　
                };
        　　　
                document.onmouseup = function() {
                    document.onmousemove = null;　
                };
                }

            // 旋转　
            var iRotate = 0;
            div1.ondblclick = function(ev) {
                var ml = div1.style.marginLeft;
                    ml0 = ml.split("p")[0];
                var mt = div1.style.marginTop;
                    mt0 = mt.split("p")[0];

                document.onmousemove = function (ev) {
                    var ev = ev || event;
                    var disX = div1.offsetLeft;
                    var disY = div1.offsetTop;
                    var a = ev.clientX - disX - ml0;
                    var b = ev.clientY - disY - mt0;
                    var c = Math.sqrt(a * a + b * b);
                    if (a > 0 && b > 0) {
                        iRotate = Math.asin(b / c) + 90 * Math.PI / 180;
                    } else if (a > 0) {
                        iRotate = Math.asin(a / c);
                    }
                    if (a < 0 && b > 0) {
                        iRotate = -(Math.asin(b / c) + 90 * Math.PI / 180);
                    } else if (a < 0) {
                        iRotate = Math.asin(a / c);
                    }
                    div1.style.WebkitTransform = 'rotate(' + iRotate + 'rad)';
                };

                 document.onclick = function(){
                    div1.style.WebkitTransform = 'rotate('+iRotate+'rad)';
                }

            }
        } else if (e.target == document.getElementById("pic2")){
            var div1 = document.getElementById("pic2");
            // var direct = 0;
            e = e || window.event;
            if (e.wheelDelta) { //IE/Opera/Chrome
                if (e.wheelDelta > 0) {
                    div1.width = div1.width * 1.1;
                    div1.height = div1.height * 1.1;
                } else {
                    div1.width = div1.width / 1.1;
                    div1.height = div1.height / 1.1;
                }
            } else if (e.detail) { //Firefox
                if (e.detail > 0) {
                    div1.width = div1.width * 1.1;
                    div1.height = div1.height * 1.1;
                } else {
                    div1.width = div1.width / 1.1;
                    div1.height = div1.height / 1.1;
                }
            }
            if (e.preventDefault) {
                e.preventDefault();
                e.stopPropagation();
            } else {
                e.returnValue = false;
                e.cancelBubble = true;
            }

            //拖拽
            // var div1 = document.getElementById("pic");
            　　
            div1.onmousedown = function(ev) {
                ev.preventDefault();　　　　
                var oevent = ev || event;　　　　
                var distanceX = oevent.clientX; 　　　
                var distanceY = oevent.clientY;　　　　
                document.onmousemove = function(ev) {
                    　　　　　　
                    var oevent = ev || event;
                    x1 = oevent.clientX - distanceX;
                    y1 = oevent.clientY - distanceY;
                    distanceX = oevent.clientX;
                    distanceY = oevent.clientY;
                    //左移
                    div1.style.marginLeft = (x1 + offX) + "px";
                    div1.style.marginTop = (y1 + offY) + "px";
                    offX = x1 + offX;
                    offY = y1 + offY;　　　　
                };
        　　　
                document.onmouseup = function() {
                    document.onmousemove = null;　
                };
                }

            // 旋转　
            var iRotate = 0;
            div1.ondblclick = function(ev) {
                var ml = div1.style.marginLeft;
                    ml0 = ml.split("p")[0];
                var mt = div1.style.marginTop;
                    mt0 = mt.split("p")[0];

                document.onmousemove = function (ev) {
                    var ev = ev || event;
                    var disX = div1.offsetLeft;
                    var disY = div1.offsetTop;
                    var a = ev.clientX - disX - ml0;
                    var b = ev.clientY - disY - mt0;
                    var c = Math.sqrt(a * a + b * b);
                    if (a > 0 && b > 0) {
                        iRotate = Math.asin(b / c) + 90 * Math.PI / 180;
                    } else if (a > 0) {
                        iRotate = Math.asin(a / c);
                    }
                    if (a < 0 && b > 0) {
                        iRotate = -(Math.asin(b / c) + 90 * Math.PI / 180);
                    } else if (a < 0) {
                        iRotate = Math.asin(a / c);
                    }
                    div1.style.WebkitTransform = 'rotate(' + iRotate + 'rad)';
                }

                 document.onclick = function(){
                    div1.style.WebkitTransform = 'rotate('+iRotate+'rad)';
                }

            }
        }
        else if (e.target == document.getElementById("pic3")) {
            var div1 = document.getElementById("pic3");
            // var direct = 0;
            e = e || window.event;
            if (e.wheelDelta) { //IE/Opera/Chrome
                if (e.wheelDelta > 0) {
                    div1.width = div1.width * 1.1;
                    div1.height = div1.height * 1.1;
                } else {
                    div1.width = div1.width / 1.1;
                    div1.height = div1.height / 1.1;
                }
            } else if (e.detail) { //Firefox
                if (e.detail > 0) {
                    div1.width = div1.width * 1.1;
                    div1.height = div1.height * 1.1;
                } else {
                    div1.width = div1.width / 1.1;
                    div1.height = div1.height / 1.1;
                }
            }
            if (e.preventDefault) {
                e.preventDefault();
                e.stopPropagation();
            } else {
                e.returnValue = false;
                e.cancelBubble = true;
            }

            //拖拽

            div1.onmousedown = function (ev) {
                ev.preventDefault();
                var oevent = ev || event;
                var distanceX = oevent.clientX;
                var distanceY = oevent.clientY;
                document.onmousemove = function (ev) {

                    var oevent = ev || event;
                    x1 = oevent.clientX - distanceX;
                    y1 = oevent.clientY - distanceY;
                    distanceX = oevent.clientX;
                    distanceY = oevent.clientY;
                    //左移
                    div1.style.marginLeft = (x1 + offX) + "px";
                    div1.style.marginTop = (y1 + offY) + "px";
                    offX = x1 + offX;
                    offY = y1 + offY;
                };

                document.onmouseup = function () {
                    document.onmousemove = null;
                };
            }

            // 旋转　
            var iRotate = 0;
            div1.ondblclick = function (ev) {
                var ml = div1.style.marginLeft;
                ml0 = ml.split("p")[0];
                var mt = div1.style.marginTop;
                mt0 = mt.split("p")[0];

                document.onmousemove = function (ev) {
                    var ev = ev || event;
                    var disX = div1.offsetLeft;
                    var disY = div1.offsetTop;
                    var a = ev.clientX - disX - ml0;
                    var b = ev.clientY - disY - mt0;
                    var c = Math.sqrt(a * a + b * b);
                    if (a > 0 && b > 0) {
                        iRotate = Math.asin(b / c) + 90 * Math.PI / 180;
                    } else if (a > 0) {
                        iRotate = Math.asin(a / c);
                    }
                    if (a < 0 && b > 0) {
                        iRotate = -(Math.asin(b / c) + 90 * Math.PI / 180);
                    } else if (a < 0) {
                        iRotate = Math.asin(a / c);
                    }
                    div1.style.WebkitTransform = 'rotate(' + iRotate + 'rad)';
                }

                document.onclick = function () {
                    div1.style.WebkitTransform = 'rotate(' + iRotate + 'rad)';
                }

            }
        }
        else if (e.target == document.getElementById("pic4")){
            var div1 = document.getElementById("pic4");
            // var direct = 0;
            e = e || window.event;
            if (e.wheelDelta) { //IE/Opera/Chrome
                if (e.wheelDelta > 0) {
                    div1.width = div1.width * 1.1;
                    div1.height = div1.height * 1.1;
                } else {
                    div1.width = div1.width / 1.1;
                    div1.height = div1.height / 1.1;
                }
            } else if (e.detail) { //Firefox
                if (e.detail > 0) {
                    div1.width = div1.width * 1.1;
                    div1.height = div1.height * 1.1;
                } else {
                    div1.width = div1.width / 1.1;
                    div1.height = div1.height / 1.1;
                }
            }
            if (e.preventDefault) {
                e.preventDefault();
                e.stopPropagation();
            } else {
                e.returnValue = false;
                e.cancelBubble = true;
            }

            //拖拽
            　　
            div1.onmousedown = function(ev) {
                ev.preventDefault();　　　　
                var oevent = ev || event;　　　　
                var distanceX = oevent.clientX; 　　　
                var distanceY = oevent.clientY;　　　　
                document.onmousemove = function(ev) {
                    　　　　　　
                    var oevent = ev || event;
                    x1 = oevent.clientX - distanceX;
                    y1 = oevent.clientY - distanceY;
                    distanceX = oevent.clientX;
                    distanceY = oevent.clientY;
                    //左移
                    div1.style.marginLeft = (x1 + offX) + "px";
                    div1.style.marginTop = (y1 + offY) + "px";
                    offX = x1 + offX;
                    offY = y1 + offY;　　　　
                };
        　　　
                document.onmouseup = function() {
                    document.onmousemove = null;　
                };
                }

            // 旋转　
            var iRotate = 0;
            div1.ondblclick = function(ev) {
                var ml = div1.style.marginLeft;
                    ml0 = ml.split("p")[0];
                var mt = div1.style.marginTop;
                    mt0 = mt.split("p")[0];

                document.onmousemove = function (ev) {
                    var ev = ev || event;
                    var disX = div1.offsetLeft;
                    var disY = div1.offsetTop;
                    var a = ev.clientX - disX - ml0;
                    var b = ev.clientY - disY - mt0;
                    var c = Math.sqrt(a * a + b * b);
                    if (a > 0 && b > 0) {
                        iRotate = Math.asin(b / c) + 90 * Math.PI / 180;
                    } else if (a > 0) {
                        iRotate = Math.asin(a / c);
                    }
                    if (a < 0 && b > 0) {
                        iRotate = -(Math.asin(b / c) + 90 * Math.PI / 180);
                    } else if (a < 0) {
                        iRotate = Math.asin(a / c);
                    }
                    div1.style.WebkitTransform = 'rotate(' + iRotate + 'rad)';
                };

                 document.onclick = function(){
                    div1.style.WebkitTransform = 'rotate('+iRotate+'rad)';
                }

            }
        }else {}
    }
});
