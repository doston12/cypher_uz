<%--
  Created by IntelliJ IDEA.
  User: DMatyakubov
  Date: 28.05.2019
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Tech Mag template project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<c:url value="/resources/styles/main_styles.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/styles/bootstrap-4.1.2/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css"/>" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/animate.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/main_styles.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/responsive.css"/>">
</head>
<body>

<div class="super_container">

    <!-- Menu -->
    <!-- Home -->

    <div class="home">

        <!-- Home Slider -->
        <div class="home_slider_container">
            <div class="owl-carousel owl-theme home_slider">
                <!-- Slide -->
                <div class="owl-item home_slider_item">
                    <div class="background_image" style="background-image:url(<c:url value="/resources/images/anonymous.jpg"/>)"></div>
                    <div class="home_slider_content text-center">
                        <div class="home_slider_content_inner" data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">

                            <div class="home_title">Cryptography is the ultimate form of non-violent direct action.</div>
                            <div class="home_text" style="font-size: 30px;">Julian Assange</div>

                        </div>
                    </div>
                </div>
                <!-- Slide -->
                <div class="owl-item home_slider_item">
                    <div class="background_image" style="background-image:url(<c:url value="/resources/images/safety.jpg"/>)"></div>
                    <div class="home_slider_content text-center">
                        <div class="home_slider_content_inner" data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">

                            <div class="home_title"  style="font-size: 40px;">If you think technology can solve your security problems, then you don't understand the problems and you don't understand the technology.</div>
                            <div class="home_text" style="font-size: 30px;">Bruce Schneier</div>

                        </div>
                    </div>
                </div>
                <!-- Slide -->
                <div class="owl-item home_slider_item">
                    <div class="background_image" style="background-image:url(<c:url value="/resources/images/cyber.jpg"/>)"></div>
                    <div class="home_slider_content text-center">
                        <div class="home_slider_content_inner" data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">

                            <div class="home_title">Without strong encryption, you will be spied on systematically by lots of people.</div>
                            <div class="home_text" style="font-size: 30px;">Whitfield Diffie</div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Home Slider Navigation -->
            <div class="home_slider_nav home_slider_prev trans_200"><i class="fa fa-angle-left trans_200" aria-hidden="true"></i></div>
            <div class="home_slider_nav home_slider_next trans_200"><i class="fa fa-angle-right trans_200" aria-hidden="true"></i></div>
        </div>
    </div>

    <div class="content_container">


        <div class="container">
            <div class="row">

                <!-- Main Content -->

                <div class="col-lg-9">
                    <div class="main_content">

                        <!-- Featured -->

                        <div class="featured">


                            <!-- Technology -->

                            <div class="technology" style="margin-top: -100px;">
                                <div class="section_title_container d-flex flex-row align-items-start justify-content-start">
                                    <div>
                                        <div class="section_title">Cryptography</div>
                                        <div class="section_subtitle">Advanced Block Ciphers</div>
                                    </div>
                                    <div class="section_bar"></div>
                                </div>
                                <div class="technology_content">

                                    <!-- Post -->
                                    <div class="post_item post_h_large">
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <div class="post_image"><img src="<c:url value="/resources/images/safety.jpg"/>"/></div>
                                            </div>
                                            <div class="col-lg-7">
                                                <div class="post_content">

                                                    <div class="post_title"><a href="/aes">The Advanced Encryption Standard (AES)</a></div>

                                                    <div class="post_text">
                                                        <p>The Advanced Encryption Standard (AES), also known by its original name Rijndael a specification for the encryption of electronic data established by the U.S. National Institute of Standards and Technology (NIST) in 2001.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Post -->
                                    <div class="post_item post_h_large">
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <div class="post_image"><img src="<c:url value="/resources/images/cyber-security-18.png"/>"></div>
                                            </div>
                                            <div class="col-lg-7">
                                                <div class="post_content">

                                                    <div class="post_title"><a href="/des">The Data Encryption Standard </a></div>

                                                    <div class="post_text">
                                                        <p>The Data Encryption Standard (DES) is a symmetric-key algorithm for the encryption of electronic data. Although its short key length of 56 bits, criticized from the beginning, makes it too insecure for most current applications, it was highly influential in the advancement of modern cryptography.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Post -->
                                    <div class="post_item post_h_large">
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <div class="post_image"><img src="<c:url value="/resources/images/hacker.jpg"/>"></div>
                                            </div>
                                            <div class="col-lg-7">
                                                <div class="post_content">

                                                    <div class="post_title"><a href="/gost">The GOST block cipher (Magma)</a></div>

                                                    <div class="post_text">
                                                        <p>The GOST block cipher (Magma), defined in the standard GOST 28147-89 (RFC 5830), is a Soviet and Russian government standard symmetric key block cipher with a block size of 64 bits. The original standard, published in 1989, did not give the cipher any name, but the most recent revision of the standard, GOST R 34.12-2015, specifies that it may be referred to as Magma.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="post_item post_h_large">
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <div class="post_image"><img src="<c:url value="/resources/images/crypto.jpg"/>"></div>
                                            </div>
                                            <div class="col-lg-7">
                                                <div class="post_content">

                                                    <div class="post_title"><a href="/kuznyechik">The GOST block cipher (Kuznyechik)</a></div>

                                                    <div class="post_text">
                                                        <p>Kuznyechik is a symmetric block cipher. It has a block size of 128 bits and key length of 256 bits. It is defined in the National Standard of the Russian Federation GOST R 34.12-2015 in English[3] and also in RFC 7801.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <!-- World -->



                        </div>
                    </div>
                </div>
            </div>				<!-- Sidebar -->
        </div>

    </div>

    <!-- Footer -->

    <footer class="footer">

        <div class="footer_content" style="padding-top: -50px;">
            <img src="<c:url value="/resources/images/footer.jpg"/>" style="margin-bottom: -35px;">
            <!-- Image credit: https://unsplash.com/@badashphotos
            <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/analytics.jpg" data-speed="0.8"></div>
            -->
        </div>
    </footer>

</div>

<script src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/resources/styles/bootstrap-4.1.2/popper.js"/>"></script>
<script src="<c:url value="/resources/styles/bootstrap-4.1.2/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/TweenMax.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/TimelineMax.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/scrollmagic/ScrollMagic.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/animation.gsap.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/ScrollToPlugin.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"/>"></script>
<script src="<c:url value="/resources/plugins/easing/easing.js"/>"></script>
<script src="<c:url value="/resources/plugins/parallax-js-master/parallax.min.js"/>"></script>
<script src="<c:url value="/resources/js/custom.js"/>"></script>


</body>
</html>
