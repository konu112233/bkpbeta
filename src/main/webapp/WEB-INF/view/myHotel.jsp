<%-- 
    Document   : newjsp
    Created on : Jul 28, 2019, 4:37:09 PM
    Author     : omerfarukoner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bookingpetz.com</title>

        <!-- Bootstrap -->
        <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- Custom Theme Style -->
        <link href="static/vendors/build/css/custom.min.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="static/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

        <!-- SLIDE -->
        <link rel="stylesheet" href="static/vendors/responsive-slides/responsiveslides.css">
        <link rel="stylesheet" href="static/vendors/responsive-slides/demo.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
        <script src="static/vendors/responsive-slides/responsiveslides.min.js"></script>

        <link href="static/vendors/cropper/dist/cropper.min.css" rel="stylesheet">

    </head>
    <style>
        .bs-glyphicons li:hover {
            background-color: #f9f9f9;
            color:#73879C;
        }

        .bs-glyphicons li {
            float: left;
            width: 25%;
            height: 115px;
            padding: 10px;
            font-size: 10px;
            line-height: 1.4;
            text-align: center;

            border: 1px solid #fff;
        }
        #picButton {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            background-color: #555;
            color: white;
            font-size: 16px;
            padding: 12px 24px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .container1 {
            display: block;
            position: relative;
            padding-left: 35px;
            margin-bottom: 12px;
            cursor: pointer;
            font-size: 22px;
            border-radius: 10px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        /* Hide the browser's default checkbox */
        .container1 input {
            position: absolute;
            opacity: 0;
            cursor: pointer;
            height: 0;
            width: 0;
            border-radius: 10px;
        }

        /* Create a custom checkbox */
        .checkmark {
            position: absolute;
            top: 0;
            left: 0;
            height: 25px;
            width: 25px;
            background-color: #eee;
            border-radius: 10px;
        }

        /* On mouse-over, add a grey background color */
        .container1:hover input ~ .checkmark {
            background-color: #ccc;
            border-radius: 10px;

        }

        /* When the checkbox is checked, add a blue background */
        .container1 input:checked ~ .checkmark {
            background-color: #0eb25a;
            border-radius: 10px;
        }

        /* Create the checkmark/indicator (hidden when not checked) */
        .checkmark:after {
            content: "";
            position: absolute;
            display: none;
        }

        /* Show the checkmark when checked */
        .container1 input:checked ~ .checkmark:after {
            display: block;
        }

        /* Style the checkmark/indicator */
        .container1 .checkmark:after {
            left: 9px;
            top: 5px;
            width: 5px;
            height: 10px;
            border: solid white;
            border-width: 0 3px 3px 0;
            -webkit-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            transform: rotate(45deg);
        }




        #cact1,#cact2,#cact3,#cact4,#cact5,#cact6,#cact7,#cact8,
        #cact9,#cact10,#cact11,#cact12{
            zoom: 1.5;



        </style>
        <script>
            // getCrop



            //
            var services = [];
            var images = [];
            function chosenService(serviceId) {
                if (services.includes(serviceId)) {
                    const index = services.indexOf(serviceId);
                    services[index] = 0;
                    var serviceIdClone = serviceId;
                    document.getElementById(serviceIdClone).style.background = "#f9f9f9";
                    var children = document.getElementById(serviceIdClone).children;
                    children[0].removeAttribute("style");
                    children[1].removeAttribute("style");
                    //              var iconHover = document.getElementById("iconHover");
                    //                iconHover.setAttribute("class", "bs-glyphicons col-md-8 col-sm-12 col-xs-12");

                } else
                    services.push(serviceId);
                for (i = 0; i < services.length; i++) {

                    var serviceIdClone = services[i];
                    if (serviceIdClone == 0) {
                    } else {
                        document.getElementById(serviceIdClone).style.background = "#1ABB9C";
                        var children = document.getElementById(serviceIdClone).children;
                        children[0].style.color = "#fff";
                        children[1].style.color = "#fff";
                    }

                }
            }
            //Slider script
            $(function () {


                // Slideshow 1
                //            $("#slider1").responsiveSlides({
                //                maxwidth: 800,
                //                speed: 800
                //            });
                //            // Slideshow 2
                //            $("#slider2").responsiveSlides({
                //                auto: false,
                //                pager: true,
                //                speed: 300,
                //                maxwidth: 540
                //            });
                // Slideshow 3
                //            $("#slider3").responsiveSlides({
                //                manualControls: '#slider3-pager',
                //                maxwidth: 540
                //            });
                //            // Slideshow 4
                //            $("#slider4").responsiveSlides({
                //                auto: false,
                //                pager: false,
                //                nav: true,
                //                speed: 500,
                //                namespace: "callbacks",
                //                before: function () {
                //                    $('.events').append("<li>before event fired.</li>");
                //                },
                //                after: function () {
                //                    $('.events').append("<li>after event fired.</li>");
                //                }
                //            });
                $(".rslides").responsiveSlides({
                    auto: false, // Boolean: Animate automatically, true or false
                    speed: 500, // Integer: Speed of the transition, in milliseconds
                    timeout: 7000, // Integer: Time between slide transitions, in milliseconds
                    pager: false, // Boolean: Show pager, true or false
                    nav: false, // Boolean: Show navigation, true or false
                    random: false, // Boolean: Randomize the order of the slides, true or false
                    pause: false, // Boolean: Pause on hover, true or false
                    pauseControls: true, // Boolean: Pause when hovering controls, true or false
                    prevText: "Previous", // String: Text for the "previous" button
                    nextText: "Next", // String: Text for the "next" button
                    maxwidth: "1700px", // Integer: Max-width of the slideshow, in pixels
                    navContainer: "", // Selector: Where controls should be appended to, default is after the 'ul'
                    manualControls: "#slider3-pager", // Selector: Declare custom pager navigation
                    namespace: "rslides", // String: Change the default namespace used
                    before: function () {}, // Function: Before callback
                    after: function () {}     // Function: After callback
                });
            });
            function visibleUpdate(id) {

                //    document.getElementById(id).style.visibility="invisible";
                //alert(id);
                //document.getElementById(id).disabled=true;
                document.getElementById(id).removeAttribute('disabled');
            }

            window.onload = () => {
                console.log("hd" + void(0).toString());
                const hotel_info = document.querySelector('#hotel_info');
                const hotel_name = document.querySelector('#hotel_name');
                const pet_capacity = document.querySelector('#pet_capacity');
                const address = document.querySelector('#address');
                const post_code = document.querySelector('#post_code');
                hotel_info.addEventListener('submit', (e) => {

                    localStorage.clear();
                    localStorage.setItem('hotel_infos', JSON.stringify({
                        hotel_name: hotel_name.textContent.trim(),
                        pet_capacity: pet_capacity.textContent.trim(),
                        address: address.textContent.trim(),
                        post_code: post_code.textContent.trim()
                    }));
                });
            };
            $(function () {


                // display if image has a src
                $('#image').load(function () {
                    var imageObj = $(this);
                    if (!(imageObj.width() == 1 && imageObj.height() == 1)) {
                        console.log('Image source changed');
                        $('#cropper').css("display", "block");
                        $('#imgContainer').css("display", "block");
                    }


                });
                $('#imgThumb-0').load(function () {
                    console.log("oldu mu");
                    var imageObj = $(this);
                    if (!(imageObj.width() == 1 && imageObj.height() == 1)) {
                        $('#mySlider').css("display", "block");
                        $('#noImage').css("display", "none");
                        $('#yesImage').css("display", "block");
                    }




                });
                // Get the modal
                var modal = document.getElementById("cropper");
                // Get the button that opens the modal
                var btn = document.getElementById("btnAddNewImage");
                // Get the <span> element that closes the modal
                var span = document.getElementsByClassName("close")[0];
                // When the user clicks on the button, open the modal 
                btn.onclick = function () {

                    $('#btnUploadClick').trigger('click');
                };
                // When the user clicks on <span> (x), close the modal
                span.onclick = function () {
                    modal.style.display = "none";
                };
                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function (event) {
                    if (event.target === modal) {
                        modal.style.display = "none";
                    }
                };
            });
            //chosen image
            var chosenImg = "img-0";
            function chosenImage(imgId) {
                chosenImg = "img-" + imgId.substr(imgId.length - 1);
                console.log("casd" + chosenImg);
            }


            //Delete image
            function deleteImage() {
                $('#imgThumb-0').trigger('click');
                var lastChar = chosenImg.substr(chosenImg.length - 1);
                var imgPut = "#" + chosenImg;
                var imgThumb = "#imgThumb-" + lastChar;
                console.log("delete  " + imgPut + " " + lastChar);
                // get  index of src at issue
                var src = $(imgPut).attr('src');
                const index = images.indexOf(src);
                images[index] = 0;
                //            $(imgPut).attr("src", "");
                //            $(imgPut).css("display", "none");
                //
                //            $(imgThumb).attr("src", "");
                //            $(imgThumb).css("display", "none");
                updateImage();
            }

            //Convert data from 64b to Blob and upload
            function b64toBlob(dataURI) {

                var byteString = atob(dataURI.split(',')[1]);
                var ab = new ArrayBuffer(byteString.length);
                var ia = new Uint8Array(ab);
                for (var i = 0; i < byteString.length; i++) {
                    ia[i] = byteString.charCodeAt(i);
                }
                return new Blob([ab], {type: 'image/jpeg'});
            }
            //
            function clearSrc() {

                var imgPut;
                var imgThumb;
                for (var i = 0; i < 11; i++) {
                    imgPut = "#img-" + i;
                    imgThumb = "#imgThumb-" + i;
                    $(imgPut).attr("src", "");
                    $(imgPut).css("display", "none");
                    $(imgThumb).attr("src", "");
                    $(imgThumb).css("display", "none");
                }
            }

            // update images
            function updateImage() {
                clearSrc();
                var whichImg = 0;
                var imgPut;
                var imgThumb;
                for (var i = 0; i < images.length; i++) {
                    imgPut = "#img-" + whichImg;
                    imgThumb = "#imgThumb-" + whichImg;
                    console.log("put  " + imgPut);
                    if (images[i] != 0) {

                        $(imgPut).attr("src", images[i]);
                        $(imgPut).css("display", "block");
                        $(imgThumb).attr("src", images[i]);
                        $(imgThumb).attr("width", "50");
                        $(imgThumb).attr("height", "50");
                        $(imgThumb).css("display", "block");
                        whichImg++;
                    } else {
                        // $(imgPut).attr("src", "");
                        //   $(imgPut).css("display", "none");

                        //   $(imgThumb).attr("src", "");
                        //    $(imgThumb).css("display", "none");

                    }

                }
                // console.log($('imgThumb-0').attr('src')+"heytbe");
                // console.log("testtet"+document.getElementById("imgThumb-0").src);
                // there is no image, then, make add image button visible
                if (!$('imgThumb-0').attr('src')) {

                    //  console.log($('imgThumb-0').attr('src')+"heytbe");
                    $('#mySlider').css("display", "none");
                    $('#noImage').css("display", "block");
                    $('#yesImage').css("display", "none");
                }


            }
            // add a image to list

            function addImage() {


                var dataURI = document.getElementById("download").href;
                images.push(dataURI);
                console.log("img::::::::::::::::::::::::" + images[0]);
                console.log("dataUri::" + dataURI);
                updateImage();
                //   console.log("src::"+img.src);

                //  javascript:location.reload(true)


                //  var blob = b64toBlob(dataURI);
                // reader.readAsDataURL(blob);
            }


            //Read blob and conver to b64 to put image view
            var reader = new FileReader();
            reader.onload = function () {

                var b64Image = reader.result;
                console.log("img was put to img-1" + b64Image);
            };
            // Upload button listener

            $(function () {
                $('#image').load(function () {
                    var imageObj = $(this);
                    if (!(imageObj.width() == 1 && imageObj.height() == 1)) {
                        console.log('Image source changed');
                        $('#imgContainer').css("display", "block");
                        $('#imgButtons').css("display", "flex");
                    }


                });
            });
        </script>

        <body class="nav-md">
            <div class="container body">

                <div class="main_container">
                    <jsp:include page="dashboardHeader.jsp"></jsp:include>

                        <div class="right_col" role="main">

                            <div class="page-title">
                                <div class="title_left">
                                    <h3>My Hotel<small> </small></h3>
                                    <a  href="previewHotel" type="submit" class="buttonNext btn btn-success btn-sm">Preview</a><small> your hotel </small>

                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <br>    
                            <div id="step-1">
                                <div class="x_panel">         
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>Photos</h2>
                                            <div class="clearfix"></div>
                                        </div> 
                                        <br>
                                        <br>
                                        <div id="noImage" style="text-align:center;">
                                            <h4 style="margin-bottom:15px;">You have no image to display</h4>

                                            <button onClick="$('#btnUploadClick').trigger('click');"  type="button" data-toggle="modal"  data-target="#modalAddPet" style="" class="btn btn-primary">
                                                <i style="" class="fa fa-plus-circle fa-2x" aria-hidden="true"> </i></button>
                                        </div> 
                                        <br>

                                        <div class="row" id="mySlider" style="display:none;">
                                            <div class="container">
                                                <div id="wrapper">
                                                    <!-- Slideshow 3 -->
                                                    <ul class="rslides" id="imgSlider">
                                                        <li><img id="img-0"   src="" alt=""></li>
                                                        <li><img id="img-1"   src="" alt=""></li>
                                                        <li><img id="img-2"   src="" alt=""></li>
                                                        <li><img id="img-3"   src="" alt=""></li>
                                                        <li><img id="img-4"   src="" alt=""></li>
                                                        <li><img id="img-5"   src="" alt=""></li>
                                                        <li><img id="img-6"   src="" alt=""></li>
                                                        <li><img id="img-7"   src="" alt=""></li>
                                                        <li><img id="img-8"   src="" alt=""></li>
                                                        <li><img id="img-9"   src="" alt=""></li>
                                                        <li><img id="img-10"  src="" alt=""></li>


                                                    </ul>
                                                    <!-- Slideshow 3 Pager -->
                                                    <ul id="slider3-pager">
                                                        <li><a href="#"><img  id="imgThumb-0" onClick="chosenImage(this.id);" src="" alt=""></a></li>
                                                        <li><a href="#"><img  id="imgThumb-1" onClick="chosenImage(this.id)" src="" alt=""></a></li>
                                                        <li><a href="#"><img  id="imgThumb-2" onClick="chosenImage(this.id)" src="" alt=""></a></li>
                                                        <li><a href="#"><img  id="imgThumb-3" onClick="chosenImage(this.id)" src="" alt=""></a></li>
                                                        <li><a href="#"><img  id="imgThumb-4" onClick="chosenImage(this.id)" src="" alt=""></a></li>
                                                        <li><a href="#"><img  id="imgThumb-5" onClick="chosenImage(this.id)" src="" alt=""></a></li>
                                                        <li><a href="#"><img  id="imgThumb-6" onClick="chosenImage(this.id)" src="" alt=""></a></li>
                                                        <li><a href="#"><img  id="imgThumb-7" onClick="chosenImage(this.id)" src="" alt=""></a></li>
                                                        <li><a href="#"><img  id="imgThumb-8" onClick="chosenImage(this.id)" src="" alt=""></a></li>
                                                        <li><a href="#"><img  id="imgThumb-9" onClick="chosenImage(this.id)" src="" alt=""></a></li>
                                                        <li><a href="#"><img  id="imgThumb-10"onClick="chosenImage(this.id)" src="" alt=""></a></li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="container cropper modal" id="cropper">
                                            <div class="modal-content">
                                                <div class="modal-header"><span class="close">&times;</span></div>
                                                <div class="modal-body">


                                                    <div class="row">
                                                        <div id="imgContainer" class="img-container" style="display:none;">
                                                            <img id="image"  alt="Picture">
                                                        </div>


                                                    </div>
                                                    <div class="row" id="imgButtons" style="display: none; justify-content: flex-end">
                                                            <div class="docs-buttons">
                                                                <div class="btn-group">
                                                                    <button type="button" class="btn btn-primary" data-method="zoom" data-option="0.1" title="Zoom In">
                                                                        <span class="docs-tooltip" data-toggle="tooltip" title="Zoom In">
                                                                            <span class="fa fa-search-plus"></span>
                                                                        </span>
                                                                    </button>
                                                                    <button type="button" class="btn btn-primary" data-method="zoom" data-option="-0.1" title="Zoom Out">
                                                                        <span class="docs-tooltip" data-toggle="tooltip" title="Zoom Out">
                                                                            <span class="fa fa-search-minus"></span>
                                                                        </span>
                                                                    </button>
                                                                </div>
                                                                <div class="btn-group">
                                                                    <button type="button" class="btn btn-primary" data-method="move" data-option="-10" data-second-option="0" title="Move Left">
                                                                        <span class="docs-tooltip" data-toggle="tooltip" title="Move Left">
                                                                            <span class="fa fa-arrow-left"></span>
                                                                        </span>
                                                                    </button>
                                                                    <button type="button" class="btn btn-primary" data-method="move" data-option="10" data-second-option="0" title="Move Right">
                                                                        <span class="docs-tooltip" data-toggle="tooltip" title="Move Right">
                                                                            <span class="fa fa-arrow-right"></span>
                                                                        </span>
                                                                    </button>
                                                                    <button type="button" class="btn btn-primary" data-method="move" data-option="0" data-second-option="-10" title="Move Up">
                                                                        <span class="docs-tooltip" data-toggle="tooltip" title="Move Up">
                                                                            <span class="fa fa-arrow-up"></span>
                                                                        </span>
                                                                    </button>
                                                                    <button type="button" class="btn btn-primary" data-method="move" data-option="0" data-second-option="10" title="Move Down">
                                                                        <span class="docs-tooltip" data-toggle="tooltip" title="Move Down">
                                                                            <span class="fa fa-arrow-down"></span>
                                                                        </span>
                                                                    </button>
                                                                </div>
                                                                <div class="btn-group">
                                                                    <button type="button" class="btn btn-primary" data-method="rotate" data-option="-45" title="Rotate Left">
                                                                        <span class="docs-tooltip" data-toggle="tooltip" title="Rotate Left">
                                                                            <span class="fa fa-rotate-left"></span>
                                                                        </span>
                                                                    </button>
                                                                    <button type="button" class="btn btn-primary" data-method="rotate" data-option="45" title="Rotate Right">
                                                                        <span class="docs-tooltip" data-toggle="tooltip" title="Rotate Right">
                                                                            <span class="fa fa-rotate-right"></span>
                                                                        </span>
                                                                    </button>
                                                                </div>
                                                                <div class="btn-group">
                                                                    <button type="button" class="btn btn-primary" data-method="reset" title="Reset">
                                                                        <span class="docs-tooltip" data-toggle="tooltip" title="Reset">
                                                                            <span class="fa fa-refresh"></span>
                                                                        </span>
                                                                    </button>
                                                                    <label id="btnUploadClick" class="btn btn-primary btn-upload" for="inputImage" title="Upload image file">
                                                                        <input type="file" class="sr-only" id="inputImage" name="file" accept="image/*">
                                                                        <span class="docs-tooltip" data-toggle="tooltip" title="Upload image file">
                                                                            <span class="fa fa-upload"></span>
                                                                        </span>
                                                                    </label>

                                                                </div>
                                                                <div class="btn-group">

                                                                    <button type="button"   class="btn btn-success" data-method="getCroppedCanvas" data-option="{ &quot;maxWidth&quot;: 150, &quot;maxHeight&quot;: 150 }">
                                                                        <span  class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="cropper.getCroppedCanvas({ maxWidth: 150, maxHeight: 150 })">
                                                                            Crop
                                                                        </span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div class="modal fade docs-cropped" id="getCroppedCanvasModal" aria-hidden="true" aria-labelledby="getCroppedCanvasTitle" role="dialog" tabindex="-1">
                                                                <div class="modal-dialog">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                            <h4 class="modal-title" id="getCroppedCanvasTitle">Cropped</h4>
                                                                        </div>
                                                                        <div class="modal-body"></div>
                                                                        <div class="modal-footer">
                                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                                            <a class="btn btn-primary" onclick="addImage();" id="download" href="javascript:void(0);"data-dismiss="modal" >Upload</a>


                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div><!-- /.modal -->

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="yesImage" style="display:none;text-align: right;">
                                        <a data-toggle="modal" data-target=".bs-example-modal-lg"  class="buttonFinish btn btn-danger" id="btnDelete">Delete Selected Photo</a>

                                        <a class="buttonPrevious btn btn-primary" id="btnAddNewImage">Add New Photo</a> 

                                    </div>
                                    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">�</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabel" >Cancel Reservation</h4>
                                                </div>
                                                <div class="">
                                                    <div class="x_content">
                                                        <br />
                                                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                                                            <div class="row">
                                                                <div class="col-md-4 col-xs-12 col-sm-12">
                                                                    <span style="margin-top:15%;padding-left: 40%;font-size: 90px;text-align: center" class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>

                                                                    </div>
                                                                    <div class="col-md-8 col-xs-12 col-sm-12">
                                                                        <h1 ><strong>Are you sure?</strong></h1>
                                                                        <h3>You're about to delete this photo</h3>
                                                                    </div>

                                                                </div>



                                                                <div class="ln_solid"></div>

                                                            </form>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        <button type="button" onClick="deleteImage()" class="btn btn-primary"  data-dismiss="modal">Delete the photo</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div id="step-2">
                                    <div class="x_panel">         
                                        <div class="x_content">
                                            <div class="x_title">
                                                <h2>Property</h2>
                                                <div class="clearfix"></div>
                                            </div>
                                            <form action="previewHotel" class="form-horizontal form-label-left" id="hotel_info">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Property Name <span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input onClick="visibleUpdate('btnUpdateProperty')" type="text" id="hotel_name"  class="form-control col-md-7 col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Pet Capacity of Property<span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input type="text" id="pet_capacity"  class="form-control col-md-7 col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Address <span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input type="text" id="address"  class="form-control col-md-7 col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-12" for="first-name">Post code <span></span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <input type="text" id="post_code"  class="form-control col-md-7 col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="form-group" >
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-12" for="first-name">Country <span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12" style="margin-top:8px">
                                                        <select name="country" class="countries" id="countryId">
                                                            <option value="">Select Country</option>
                                                        </select>  </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-12" for="first-name">State<span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12" style="margin-top:8px">
                                                        <select name="state" class="states" id="stateId">
                                                            <option value="">Select State</option>
                                                        </select>

                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label  col-md-3 col-sm-3 col-xs-12" for="first-name">City <span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 col-xs-12" style="margin-top:8px">
                                                        <select name="city" class="cities" id="cityId">
                                                            <option value="">Select City</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </form>
                                            <div  style="text-align:right;" >
                                            <a id="btnUpdateProperty" href="#" class="buttonNext btn btn-success" disabled>Update Information</a>          
                                        </div>
                                        <div class="x_title">
                                            <h2>Contact Details</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <form class="form-horizontal form-label-left">
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Contact Name <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input data-validate-length-range="6" data-validate-words="2" type="text" id="first-name2" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Manager Email Address<span ></span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name2" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Booking Email Address<span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name2" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label  col-md-3 col-sm-3 col-xs-12" for="first-name">Website Address<span></span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name2" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label  col-md-3 col-sm-3 col-xs-12" for="first-name">Phone Number <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="first-name2" required="required" class="form-control col-md-7 col-xs-12">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div style="text-align: right;">
                                        <a  href="#" class="buttonNext btn btn-success">Update Information</a>          
                                    </div>
                                </div>
                            </div>
                            <div id="step-3">
                                <div class="x_panel">         
                                    <div class="x_content">
                                        <div class="form-group" style="margin-bottom:100px">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Description<span class="required">*</span>
                                                </label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <textarea class="form-control" rows="3" placeholder="First impressions are everything. A good description will let the guests know what to expect when they stay. Provide details on how your property differs from others, what it offers your customers and how unique it is. This description will appear on the main property page."></textarea>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Directions<span class="required">*</span>
                                                </label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <textarea class="form-control" rows="3" placeholder="Tell your customers how to get to your property from the bus station, train station, airport, city centre etc. Remember they may never have been to your city before."></textarea>
                                                </div>
                                            </div>
                                            <br>
                                        </div>
                                        <div style="text-align: right;">
                                        <a style="margin-top:10px" href="#" class="buttonNext btn btn-success">Update Information</a>          
                                        </div>
                                    </div>
                                </div>
                                <div id="step-4">
                                    <div class="x_panel">         
                                        <div class="x_content">
                                            <div class="x_title">
                                                <h2>Services</h2>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div  class="col-md-4 col-sm-2 col-xs-0">
                                                <div  class="checkbox col-md-6 col-sm-12 col-xs-12">




                                                    <label  class="container1">
                                                        <input  name="cact1" id="cact1" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact1()" >
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px">Dog Boarding </i>
                                                    </label>

                                                </div>
                                                <div style="margin-top: 10px;" class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact1" name="tboxact1" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>

                                        <div  class="col-md-4 col-sm-2 col-xs-0">
                                            <div class="checkbox col-md-6 col-sm-12 col-xs-12">
                                                <label  class="container1">

                                                    <input  name="cact2" id="cact2" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact2()" >
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px">Dog Washing </i>

                                                    </label>
                                                </div>
                                                <div style="margin-top: 10px;"  class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact2" name="tboxact2" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>







                                        <div  class="col-md-4 col-sm-2 col-xs-0">
                                            <div class="checkbox col-md-6 col-sm-12 col-xs-12">
                                                <label  class="container1">
                                                    <input  name="cact3" id="cact3" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact3()" >                                                                      
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px">Dog Groomming and Trimming</i>
                                                    </label>
                                                </div>
                                                <div style="margin-top: 10px;"  class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact3" name="tboxact3" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>


                                        <div  class="col-md-4 col-sm-2 col-xs-0">
                                            <div class="checkbox col-md-6 col-sm-12 col-xs-12">
                                                <label  class="container1">
                                                    <input  name="cact4" id="cact4" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact4()" >                                                                      
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px"> Dog Medication</i>
                                                    </label>
                                                </div>
                                                <div style="margin-top: 10px;"  class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact4" name="tboxact4" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>
                                        <div  class="col-md-4 col-sm-2 col-xs-0">
                                            <div class="checkbox col-md-6 col-sm-12 col-xs-12">
                                                <label  class="container1">
                                                    <input  name="cact5" id="cact5" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact5()" >                                                                       
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px"> Dog Day Care</i>
                                                    </label>
                                                </div>
                                                <div style="margin-top: 10px;"  class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact5" name="tboxact5" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>
                                        <div  class="col-md-4 col-sm-2 col-xs-0">
                                            <div class="checkbox col-md-6 col-sm-12 col-xs-12">
                                                <label  class="container1">
                                                    <input  name="cact6" id="cact6" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact6()" >                                                            
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px"> Dog Nail Clipping</i>
                                                    </label>
                                                </div>
                                                <div style="margin-top: 10px;" class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact6" name="tboxact6" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>
                                        <div  class="col-md-4 col-sm-2 col-xs-0">
                                            <div class="checkbox col-md-6 col-sm-12 col-xs-12">
                                                <label  class="container1">
                                                    <input  name="cact7" id="cact7" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact7()" >                                                                     
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px"> Cat Boarding </i>
                                                    </label>
                                                </div>
                                                <div style="margin-top: 10px;" class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact7" name="tboxact7" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>

                                        <div  class="col-md-4 col-sm-2 col-xs-0">
                                            <div class="checkbox col-md-6 col-sm-12 col-xs-12">
                                                <label  class="container1">
                                                    <input  name="cact8" id="cact8" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact8()" >                                                                  
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px">Cat Washing </i>
                                                    </label>
                                                </div>
                                                <div style="margin-top: 10px;" class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact8" name="tboxact8" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>
                                        <div  class="col-md-4 col-sm-2 col-xs-0">
                                            <div class="checkbox col-md-6 col-sm-12 col-xs-12">
                                                <label  class="container1">
                                                    <input  name="cact9" id="cact9" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact9()" >                                                                      
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px">Cat Groomming and Trimming </i>
                                                    </label>
                                                </div>
                                                <div style="margin-top: 10px;" class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact9" name="tboxact9" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>
                                        <div  class="col-md-4 col-sm-2 col-xs-0">
                                            <div class="checkbox col-md-6 col-sm-12 col-xs-12">
                                                <label  class="container1">
                                                    <input  name="cact10" id="cact10" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact10()" >                                                                    
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px">Cat Medication </i>
                                                    </label>
                                                </div>
                                                <div style="margin-top: 10px;" class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact10" name="tboxact10" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>
                                        <div  class="col-md-4 col-sm-2 col-xs-0">
                                            <div class="checkbox col-md-6 col-sm-12 col-xs-12">
                                                <label  class="container1">
                                                    <input  name="cact11" id="cact11" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact11()" >                                                                   
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px">Cat Day Care </i>
                                                    </label>
                                                </div>
                                                <div style="margin-top: 10px;" class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact11" name="tboxact11" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>
                                        <div  class="col-md-4 col-sm-2 col-xs-0">
                                            <div class="checkbox col-md-6 col-sm-12 col-xs-12">
                                                <label  class="container1">
                                                    <input  name="cact12" id="cact12" style="margin-left: 0px;margin-top: 0px" type="checkbox" value="Y" onclick="checkact12()" >                                                                      
                                                        <span class="checkmark"></span>
                                                        <i style="margin-left: 20px">Cat Nail Clipping </i>
                                                    </label>
                                                </div>
                                                <div style="margin-top: 10px;"  class="col-md-4 col-sm-12 col-xs-12" >

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                                                    <input disabled id="tboxact12" name="tboxact12" type="text" class="form-control"  placeholder="45">
                                                </div>
                                            </div>
                                            <div class="col-md-4  col-sm-0 col-xs-0" >
                                            </div>
                                        </div>


                                    </div>





                                    <div class="x_title">
                                        <h2>Working Hours</h2>
                                        <div class="clearfix"></div>
                                    </div>



                                    <form class="form-horizontal form-label-left">
                                        <div class="form-group">
                                            <label class="control-label col-md-5 col-sm-3 col-xs-12" for="first-name">Start Hour <span class="required">*</span>
                                            </label>
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <select id="" name="" class="form-control">
                                                    <option>06:00</option>
                                                    <option>07:00</option>
                                                    <option>08:00</option>
                                                    <option>09:00</option>
                                                    <option>10:00</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-5 col-sm-3 col-xs-12" for="first-name">End Hour <span class="required">*</span>
                                            </label>
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <select id="" name="" class="form-control">
                                                    <option>06:00</option>
                                                    <option>07:00</option>
                                                    <option>08:00</option>
                                                    <option>09:00</option>
                                                    <option>10:00</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4 col-sm-12 col-xs-12 ">

                                            </div>
                                            <div  class="col-md-5 col-sm-12 col-xs-12 ">
                                                <div class="checkbox" >


                                                    <label class="col-md-1">
                                                        <div class="container1" style="position: relative;">
                                                            <input  name="" id="" style="margin-left: 0px;margin-top: 0px" type="checkbox" checked="checked" value="Y" onclick="checkactss()" >                                                                      
                                                                <span class="checkmark"></span>
                                                            </div> <br>Sun</br>
                                                        </label>



                                                        <label class="col-md-1">
                                                            <div class="container1" style="position: relative;">
                                                            <input  name="" id="" style="margin-left: 0px;margin-top: 0px" type="checkbox" checked="checked" value="" onclick="" >                                                                      
                                                                <span class="checkmark"></span>
                                                            </div> <br>Mon</br>
                                                        </label>


                                                        <label class="col-md-1">
                                                            <div class="container1" style="position: relative;">
                                                            <input  name="" id="" style="margin-left: 0px;margin-top: 0px" type="checkbox" checked="checked" value="" onclick="" >                                                                      
                                                                <span class="checkmark"></span>
                                                            </div> <br>Tue</br>
                                                        </label>

                                                        <label class="col-md-1">
                                                            <div class="container1" style="position: relative;">
                                                            <input  name="" id="" style="margin-left: 0px;margin-top: 0px" type="checkbox" checked="checked" value="" onclick="" >                                                                      
                                                                <span class="checkmark"></span>
                                                            </div> <br>Wed</br>
                                                        </label>

                                                        <label class="col-md-1">
                                                            <div class="container1" style="position: relative;">
                                                            <input   name="" id="" style="margin-left: 0px;margin-top: 0px" type="checkbox"  checked="checked" value="" onclick="" >                                                                      
                                                                <span class="checkmark"></span>
                                                            </div> <br>Thu</br>
                                                        </label>


                                                        <label class="col-md-1">
                                                            <div class="container1" style="position: relative;">
                                                            <input name="" id="" style="margin-left: 0px;margin-top: 0px" type="checkbox" checked="checked" value="" onclick="" >                                                                      
                                                                <span class="checkmark"></span>
                                                            </div> <br>Fri</br>
                                                        </label>

                                                        <label class="col-md-1">
                                                            <div class="container1" style="position: relative;">
                                                            <input  name="" id="" style="margin-left: 0px;margin-top: 0px" type="checkbox" checked="checked" value="" onclick="" >                                                                      
                                                                <span class="checkmark"></span>
                                                            </div> <br>Sat</br>
                                                        </label>

                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-sm-12 col-xs-12 ">

                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <jsp:include page="dashboardFooter.jsp"></jsp:include>

                <!-- Geodate-->
                <script src="//geodata.solutions/includes/countrystatecity.js"></script>
                <!-- jQuery -->
                <script src="static/vendors/jquery/dist/jquery.min.js"></script>
                <!-- Bootstrap -->
                <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
                <!-- FastClick -->
                <script src="static/vendors/fastclick/lib/fastclick.js"></script>
                <!-- NProgress -->
                <script src="static/vendors/nprogress/nprogress.js"></script>
                <!-- validator -->
                <script src="static/vendors/validator/validator.js"></script>
                <!-- jQuery Smart Wizard -->
                <script src="static/vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
                <!-- Custom Theme Scripts -->
                <script src="static/vendors/build/js/custom.js"></script>
                <!-- iCheck -->
                <script src="static/vendors/iCheck/icheck.min.js"></script>
                <!-- FullCalendar -->
                <script src="static/vendors/moment/min/moment.min.js"></script>
                <script src="static/vendors/fullcalendar/dist/fullcalendar.min.js"></script>
                <!--Slider-->
                <script src="static/vendors/responsive-slides/responsiveslides.min.js"></script>
                <script src="static/vendors/cropper/dist/cropper.min.js" type="text/javascript"></script>
                <script src="https://kit.fontawesome.com/3135afb4f3.js"></script>
            </body>
        </html>
