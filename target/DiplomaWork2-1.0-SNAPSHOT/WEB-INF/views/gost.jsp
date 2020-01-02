<%--
  Created by IntelliJ IDEA.
  User: DMatyakubov
  Date: 08.06.2019
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>Magma cipher</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Tech Mag template project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<c:url value="/resources/styles/bootstrap-4.1.2/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/single.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/single_responsive.css"/>">
</head>
<body>
<div class="super_container">

    <!-- Header -->

    <!-- Menu -->

    <!-- Home -->

    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="<c:url value="/resources/images/footer.jpg"/>" data-speed="0.8"></div>
        <div class="home_content_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content">
                            <div class="home_title">Article</div>
                            <div class="breadcrumbs">
                                <ul class="d-flex flex-row align-items-start justify-content-start">
                                    <li><a href="index.html">Home</a></li>
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
                        <div class="post_image"><img src="<c:url value="/resources/images/hacker.jpg"/>" alt="https://unsplash.com/@cgower"></div>
                        <div class="post_content">
                            <div class="post_title"><a href="single.html">The GOST block cipher (Magma)</a></div>

                            <div class="post_text">
                                <p><strong>GOST</strong> has a 64-bit block size and a key length of 256 bits. Its S-boxes can be secret, and they contain about 354 (log2(16!8)) bits of secret information, so the effective key size can be increased to 610 bits; however, a chosen-key attack can recover the contents of the S-Boxes in approximately 232 encryptions.</p>
                                <p><strong>GOST is a Feistel network of 32 rounds.</strong> Its round function is very simple: add a 32-bit subkey modulo 232, put the result through a layer of S-boxes, and rotate that result left by 11 bits. The result of that is the output of the round function. In the adjacent diagram, one line represents 32 bits.</p>
                                <p>The subkeys are chosen in a pre-specified order. The key schedule is very simple: break the 256-bit key into eight 32-bit subkeys, and each subkey is used four times in the algorithm; the first 24 rounds use the key words in order, the last 8 rounds use them in reverse order. </p>
                                <p>The subkeys are chosen in a pre-specified order. The key schedule is very simple: break the 256-bit key into eight 32-bit subkeys, and each subkey is used four times in the algorithm; the first 24 rounds use the key words in order, the last 8 rounds use them in reverse order. </p>
                                <p><strong>The S-boxes</strong> accept a four-bit input and produce a four-bit output. The S-box substitution in the round function consists of eight 4 × 4 S-boxes. The S-boxes are implementation-dependent – parties that want to secure their communications using GOST must be using the same S-boxes. For extra security, the S-boxes can be kept secret. In the original standard where GOST was specified, no S-boxes were given, but they were to be supplied somehow. This led to speculation that organizations the government wished to spy on were given weak S-boxes. One GOST chip manufacturer reported that he generated S-boxes himself using a pseudorandom number generator.</p>
                                <p>The most recent revision of the standard, GOST R 34.12-2015, adds the missing S-Box specification and defines it as follows.</p>
                                <img src="<c:url value="/resources/images/gostTable.PNG"/>" width="400" height="260" style="margin-left: 150px;"><br/>
                                <p>The symmetric encryption has the following requirements:
                                <ul style="list-style-type: circle; margin-left: 100px; margin-top: -26px;" >
                                    <li>the lack of linearity (i.e. f(a)xor f(b)=f(a xor b), otherwise facilitates the application of differential cryptanalysis of the cipher);</li>
                                    <li>complete loss of all statistical laws of amerista original message (cipher must have the “avalanche effect”).</li>
                                </ul>
                                </p>
                                <p>The algorithm GOST is a data encryption 64-bit blocks using a key consisting of 256 bits. In the process of encryption takes place 32 round of transformation
                                <ol style="margin-left: 100px; margin-top: -26px;">
                                    <li>One of the sub-blocks of data of 32-bit size is summed with the value of the 32-bit key encryption round (by │232│).</li>
                                    <li>The result is broken into eight 4-bit parts, which at the same time pass through eight of substitution tables .</li>
                                    <li>Parts again after the substitutions are combined into a 32-bit subunit. Then the value of subunit cyclically shifted by 11 bits.</li>
                                    <li>Next, after the operations described above, the subunit is superimposed on the raw by using the bitwise logical “exclusive or” (XOR).</li>
                                    <li>Ultimately, the subunits are swapped.</li>
                                </ol>
                                </p>
                                <img src="<c:url value="/resources/images/g1.png"/>" width="400" height="320" style="margin-left: 150px;"><br/>
                                <p style="margin-left: 200px;">The algorithm of generation interpretation for data array.</p>
                                <img src="<c:url value="/resources/images/g2.png"/>" width="400" height="320" style="margin-left: 150px;"><br/>
                                <p style="margin-left: 200px;">Round algorithm GOST 28147-89.</p>
                                <p>Unlike most of the encryption algorithms GOST can use any variations of the blocks, as it has no fixed block replacement.

                                    <strong>Classical block ciphers</strong>, including GOST, built on the principle of zero, that is, the secrecy of the key determines the secrecy of encrypted messages, so the resistance of such codes depends on the size of the used key. In the Guest uses 256-bit key and volume key space is 2^256. Secret 256-bit encryption key is represented as a sequence of eight 32-bit words (K1, K2, K3, K4, K5, K6, K7, K8). One of these eight words in each round of encryption is used as roundabo changed. Round key is defined as follows: 1 through 24 rounds are used sequentially K1, K2, K3, K4, K5, K6, K7, K8, K1, K2, etc., and from 25 to 32 rounds: K8, K7, K6, K5, K4, K3, K2, K1.</p>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- Sidebar -->
                <form>
            <textarea id="cipher" rows="14" cols="60" style="margin-top: 20px;" placeholder="Input here plaint text to cipher">
            </textarea><br/>
                    <input type="submit" value="Encrypt"/>
                </form>

                <textarea id="decipher" rows="14" cols="60" style="margin-left: 50px;margin-top: 20px;" placeholder="Here encrypted message will be shown">
        </textarea>

            </div>
        </div>
    </div>
</div>
</div>
<!-- Footer -->
<footer class="footer">

    <div class="footer_content" style="">
        <img src="<c:url value="/resources/images/footer.jpg"/>" style="margin-bottom: -35px;">
        <!-- Image credit: https://unsplash.com/@badashphotos
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="<c:url value="/resources/images/footer.jpg"/>" data-speed="0.8"></div>
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

<script>
    $(document).ready();

    function callAJAX() {
        $.ajax({
            url: "/aes_encryption",
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
