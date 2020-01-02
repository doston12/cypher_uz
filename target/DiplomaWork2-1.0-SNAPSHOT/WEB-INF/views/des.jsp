<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Tech Mag template project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<c:url value="/resources/styles/bootstrap-4.1.2/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"/>" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/single.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/single_responsive.css"/>">
</head>
<body>

<div class="super_container">

    <!-- Header -->

    <!-- Menu -->

    <!-- Home -->


    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll"
             data-image-src="<c:url value="/resources/images/footer.jpg"/>" data-speed="0.8"></div>
        <div class="home_content_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content">
                            <div class="home_title">Article</div>
                            <div class="breadcrumbs">
                                <ul class="d-flex flex-row align-items-start justify-content-start">
                                    <li><a href="/">Home</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Content Container -->

    <div class="content_container">
        <div class="container">
            <div class="row">

                <!-- Single Post -->

                <div class="col-lg-9">

                    <div class="single_post">
                        <div class="post_image"><img src="<c:url value="/resources/images/cyber-security-18.png"/>"
                                                     alt="https://unsplash.com/@cgower"></div>
                        <div class="post_content">
                            <div class="post_title"><a href="single.html">The Data Encryption Standard (DES) </a></div>

                            <div class="post_text">
                                <p>The Data Encryption Standard (DES) is a symmetric-key block cipher published by the
                                    National Institute of Standards and Technology (NIST). DES is an implementation of a
                                    Feistel Cipher. It uses 16 round Feistel structure. The block size is 64-bit.
                                    Though, key length is 64-bit, DES has an effective key length of 56 bits, since 8 of
                                    the 64 bits of the key are not used by the encryption algorithm (function as check
                                    bits only). General Structure of DES is depicted in the following illustration: </p>
                                <img src="<c:url value="/resources/images/des_structure.jpg"/>" width="500" height="360"
                                     style="margin-left: 150px;"><br/>
                                <p>Since DES is based on the Feistel Cipher, all that is required to specify DES is:
                                <ul style="list-style-type: circle; margin-left: 100px; margin-top: -20px;">
                                    <li>Round function.</li>
                                    <li>Key schedule.</li>
                                    <li>Any additional processing − Initial and final permutation.</li>
                                </ul>
                                </p>
                                <p><strong>Initial and Final Permutation.</strong> The initial and final permutations
                                    are straight Permutation boxes (P-boxes) that are inverses of each other. They have
                                    no cryptography significance in DES. The initial and final permutations are shown as
                                    follows:</p>
                            </div>
                            <img src="<c:url value="/resources/images/initial_and_final_permutation.jpg"/>" width=" 500"
                            height="330" style="margin-left: 150px;"><br/>
                            <p><strong>Round Function.</strong> The heart of this cipher is the DES function, f. The DES
                                function applies a 48-bit key to the rightmost 32 bits to produce a 32-bit output.</p>
                            <img src="<c:url value="/resources/images/round_function.jpg"/>" width="500" height="250"
                                 style="margin-left: 150px;"><br/>
                            <p><strong>Expansion Permutation Box.</strong> Since right input is 32-bit and round key is
                                a 48-bit, we first need to expand right input to 48 bits. Permutation logic is
                                graphically depicted in the following illustration:</p>
                            <img src="<c:url value="/resources/images/permutation_logic.jpg"/>" width="500" height="80"
                                 style="margin-left: 150px;"><br/>
                            <p>The graphically depicted permutation logic is generally described as table in DES
                                specification illustrated as shown:</p>
                            <img src="<c:url value="/resources/images/des_specification.jpg"/>" width="500" height="260"
                                 style="margin-left: 150px;"><br/>
                            <p><strong>XOR (Whitener)..</strong> Since right input is 32-bit and round key is a 48-bit,
                                we first need to expand right input to 48 bits. Permutation logic is graphically
                                depicted in the following illustration:</p>
                            <p><strong>Substitution Boxes.</strong> The S-boxes carry out the real mixing (confusion).
                                DES uses 8 S-boxes, each with a 6-bit input and a 4-bit output. Refer the following
                                illustration:</p>
                            <img src="<c:url value="/resources/images/s-boxes.jpg"/>" width="500" height="120"
                                 style="margin-left: 150px;"><br/>
                            <p>The S-box rule is illustrated below:</p>
                            <img src="<c:url value="/resources/images/s_box_rule.jpg"/>" width="500" height="360"
                                 style="margin-left: 150px;"><br/>
                            <p>There are a total of eight S-box tables. The output of all eight s-boxes is then combined
                                in to 32 bit section. Straight Permutation − The 32 bit output of S-boxes is then
                                subjected to the straight permutation with rule shown in the following illustration:</p>
                            <img src="<c:url value="/resources/images/straight_permutation.jpg"/>" width="500"
                            height="200" style="margin-left: 150px;"><br/>
                            <p><strong>XOR (Whitener)..</strong> Since right input is 32-bit and round key is a 48-bit,
                                we first need to expand right input to 48 bits. Permutation logic is graphically
                                depicted in the following illustration:</p>
                            <p><strong>Key Generation.</strong> The round-key generator creates sixteen 48-bit keys out
                                of a 56-bit cipher key. The process of key generation is depicted in the following
                                illustration:</p>
                            <img src="<c:url value="/resources/images/key_generation.jpg"/>" width="500" height="360"
                                 style="margin-left: 150px;"><br/>
                            <p>The logic for Parity drop, shifting, and Compression P-box is given in the DES
                                description.</p>
                        </div>
                    </div>

                </div>
                <form>
            <textarea id="cipher" name="plain_text" rows="14" cols="60" style="margin-top: 20px;"
                      placeholder="Input here plaint text to cipher">
            </textarea><br/>
                    <input type="submit" onclick="callAJAX()" value="Encrypt"/>
                </form>

                <textarea id="decipher" rows="14" cols="60" style="margin-left: 50px;margin-top: 20px;"
                          placeholder="Here encrypted message will be shown">
        </textarea>
            </div>

        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer">

    <div class="footer_content" style="">
        <img src="<c:url value="/resources/images/footer.jpg"/>" style="margin-bottom: -35px;">
        <!-- Image credit: https://unsplash.com/@badashphotos
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="<c:url value="/resources/images/footer.jpg"/>"
             data-speed="0.8"></div>
             -->
    </div>
</footer>


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

<script>
    $(document).ready();

    function callAJAX() {
        $.ajax({
            url: "/des_encryption",
            data: {
                plain_text: document.getElementById('cipher').value
            },
            type: 'GET',
            beforeSend: function(){},
            success: function (data) {
                document.getElementById("decipher").value = data;
            }
        });
    }
</script>

</body>
</html>
