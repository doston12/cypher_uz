<%--
  Created by IntelliJ IDEA.
  User: DMatyakubov
  Date: 28.05.2019
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>Title</title>
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
                        <div class="post_image"><img src="<c:url value="/resources/images/safety.jpg"/>"></div>
                        <div class="post_content">
                            <div class="post_title"><a href="single.html">The Advanced Encryption Standard (AES)</a></div>

                            <div class="post_text">
                                <p>AES is an iterative rather than Feistel cipher. It is based on ‘substitution–permutation network’. It comprises of a series of linked operations, some of which involve replacing inputs by specific outputs (substitutions) and others involve shuffling bits around (permutations). Interestingly, AES performs all its computations on bytes rather than bits. Hence, AES treats the 128 bits of a plaintext block as 16 bytes. These 16 bytes are arranged in four columns and four rows for processing as a matrix. Unlike DES, the number of rounds in AES is variable and depends on the length of the key. AES uses 10 rounds for 128-bit keys, 12 rounds for 192-bit keys and 14 rounds for 256-bit keys. Each of these rounds uses a different 128-bit round key, which is calculated from the original AES key. The schematic of AES structure is given in the following illustration</p>
                                <img src="<c:url value="/resources/images/aes_structure.jpg"/>" width="500" height="360" style="margin-left: 150px;"><br/>
                                <p><strong>Encryption Process.</strong> Here, we restrict to description of a typical round of AES encryption. Each round comprise of four sub-processes. The first round process is depicted below </p>
                                <img src="<c:url value="/resources/images/first_round_process.jpg"/>" width="500" height="360" style="margin-left: 150px;"><br/>
                                <p><strong>Byte Substitution (SubBytes)</strong>. The 16 input bytes are substituted by looking up a fixed table (S-box) given in design. The result is in a matrix of four rows and four columns.</p>
                                <p style="margin-top: -30px;"><strong>Shiftrows.</strong> Each of the four rows of the matrix is shifted to the left. Any entries that ‘fall off’ are re-inserted on the right side of row. Shift is carried out as follows:
                                <ul style="list-style-type: circle; margin-left: 100px; margin-top: -20px;" >
                                    <li>First row is not shifted.</li>
                                    <li>Second row is shifted one (byte) position to the left.</li>
                                    <li>Third row is shifted two positions to the left.</li>
                                    <li>Fourth row is shifted three positions to the left.</li>
                                    <li>The result is a new matrix consisting of the same 16 bytes but shifted with respect to each other.</li>
                                </ul>
                                </p>
                                <p><strong>Addroundkey.</strong> The 16 bytes of the matrix are now considered as 128 bits and are XORed to the 128 bits of the round key. If this is the last round then the output is the ciphertext. Otherwise, the resulting 128 bits are interpreted as 16 bytes and we begin another similar round. </p>
                                <p><strong>MixColumns.</strong> Each column of four bytes is now transformed using a special mathematical function. This function takes as input the four bytes of one column and outputs four completely new bytes, which replace the original column. The result is another new matrix consisting of 16 new bytes. It should be noted that this step is not performed in the last round. </p>
                                <p style="margin-top: -30px;"><strong>Decryption Process.</strong> The process of decryption of an AES ciphertext is similar to the encryption process in the reverse order. Since sub-processes in each round are in reverse manner, unlike for a Feistel Cipher, the encryption and decryption algorithms needs to be separately implemented, although they are very closely related. Each round consists of the four processes conducted in the reverse order:
                                <ul style="list-style-type: circle; margin-left: 100px; margin-top: -20px;" >
                                    <li>Add round key.</li>
                                    <li>Mix columns.</li>
                                    <li>Shift rows.</li>
                                    <li>Byte substitution.</li>
                                </ul>

                                </p>
                            </div>
                        </div>


                        <!-- Reply  -->

                    </div>

                </div>
                <!-- Sidebar -->

                <form>
            <textarea id="cipher" name="plain_text" rows="14" cols="60" style="margin-top: 20px;" placeholder="Input here plaint text to cipher">
            </textarea><br/>
                    <input type="button" onclick="callAJAX()" value="Encrypt"/>
                </form>

                <textarea id="decipher" name="" rows="14" cols="60" style="margin-left: 50px;margin-top: 20px;" placeholder="Here encrypted message will be shown">
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
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="<c:url value="/resources/images/footer.jpg"/>" data-speed="0.8"></div>
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
