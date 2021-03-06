<%-- 
    Document   : loginModal
    Created on : Jul 7, 2019, 8:23:41 PM
    Author     : burakzengin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Modal -->
<div class="modal fade" id="signinForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <!--Content-->
        <div class="modal-content form-elegant">
            <!--Header-->
            <div class="modal-header text-center">
                <h3 class="modal-title w-100 dark-grey-text font-weight-bold my-3" id="myModalLabel" style="margin-left: 25px;"><strong>Sign in</strong></h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!--Body-->
            <div class="modal-body mx-4">
                <!--Body-->
                <form action="login" method="POST">
                    <div class="md-form mb-5">
                        <input placeholder="Your email" type="email" name="email" id="Form-email1" class="form-control validate">
                        <label data-error="wrong" data-success="right" for="Form-email1"></label>
                    </div>

                    <div class="md-form pb-3">
                        <input placeholder="Your Password" type="password" name="password" id="Form-pass1" class="form-control validate">
                        <label data-error="wrong" data-success="right" for="Form-pass1" ></label>
                        <p class="font-small blue-text d-flex justify-content-end"><a href="home" data-dismiss="modal" data-toggle="modal" data-target="#resetPasswordEmailForm" class="modelClose blue-text ml-1">Forgot Password?</a></p>
                    </div>

                    <div class="text-center mb-3">
                        <button type="submit" class="btn blue-gradient btn-block btn-rounded z-depth-1a" style="font-weight: 500; border-radius: 20px;">Sign in</button>
                    </div>
                    <p class="font-small dark-grey-text text-right d-flex justify-content-center mb-3 pt-2"> or Sign in
                        with:</p>

                    <div class="row my-3 d-flex justify-content-center">
                        <!--Facebook-->
                        <button type="button" class="btn btn-white btn-rounded mr-md-3 z-depth-1a"><i class="fab fa-facebook-f text-center"></i></button>
                        <!--Twitter-->
                        <button type="button" class="btn btn-white btn-rounded mr-md-3 z-depth-1a"><i class="fab fa-twitter"></i></button>
                        <!--Google +-->
                        <button type="button" class="btn btn-white btn-rounded z-depth-1a"><i class="fab fa-google-plus-g"></i></button>
                    </div>
                </form>

            </div>
            <!--Footer-->
            <div class="modal-footer mx-5 pt-3 mb-1">
                <p class="font-small grey-text d-flex justify-content-end">Not a member? <a href="home" data-dismiss="modal" data-toggle="modal" data-target="#signupForm" class="modelClose blue-text ml-1">
                        Sign Up</a></p>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
<!-- Modal -->
