<%--
  Created by IntelliJ IDEA.
  User: DMatyakubov
  Date: 08.06.2019
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>Kuznyechik cipher</title>
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
                                    <li><a href="<c:url value="index.jsp"/>">Home</a></li>
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
                        <div class="post_image"><img src="<c:url value="/resources/images/crypto.jpg"/>" alt="https://unsplash.com/@cgower"></div>
                        <div class="post_content">
                            <div class="post_title"><a href="single.html">The GOST block cipher (Kuznyechik)</a></div>

                            <div class="post_text">
                                <p><strong>Kuznyechik.</strong> The second is a new block cipher based on the substitution-permutation network with a block size of 128 bits, though for generating the round keys Feistel netowork is used. This type of cipher is well studied and relatively simple in terms of cryptographic analysis and justification of the required properties. The new block cipher in the draft standard is described under the name "Kuznyechik".</p>
                                <p><strong>The work of the Kuznyechik algorithm</strong> is as follows. A 128-bit plaintext block is sent to the encryption input. Initially, this text is folded modulo 2 with the first round subkey. After this, nine rounds of conversion are performed. Each round consists of three operations: S transformation, L transformation, addition with the next round subkey. </p>
                                <p>The output of the ninth round forms a ciphertext block with a length of 128 bits. The decryption algorithm uses inverse operations. In addition, changing the order of the use of round subkey. The input to the Kuznyechik decryption algorithm is a 128-bit ciphertext block. Initially, this text is folded modulo 2 with the last round subkey K K). After this, nine rounds of conversion are performed. Each round consists of three operations: inverse transform S, inverse transform L, addition with the next round subkey. The output of the ninth round forms a block of recovered plaintext 128 bits long. </p>
                                <p>The Kuznyechik algorithm uses the following mathematical transformations. Nonlinear bijective transformation is a tabular substitute. Each input value determines the index of the array l, and the element standing in this position forms the output value. </p>
                                <p><strong>Conversions</strong> S conversion is analogous to S-block replacement. The input of the S transform is a 128-bit value, which is divided into sixteen elements of 8 bits a | 5, ..., ao. Each element is replaced by a nonlinear bijective transformation of l. The second basic transformation of the new cipher is operation R.</p>
                                <p>Data encryption / decryption scheme using the Kuznyechik cipher.</p>
                                <img src="<c:url value="/resources/images/kuz.jpg"/>" width="400" height="360" style="margin-left: 150px;"><br/>
                                <p>When generating the subkey, the original secret key is used. Its value forms the first two round sub keys. To calculate each next pair of subkeys, the classical Feistel scheme is used.</p>
                                <p>Processing takes place over 8 rounds. The function F consists in adding with the constant C and performing the formations S and L. In total, the operation of the encryption algorithm requires 10 round subkeys, so the circuit shown in Fig. 30, applied 4 times, producing 2 round sub-keys each time.</p>
                                <p>The element in the position specified by the index will be the output of the transformation. Schematically, the process of converting data using the S transformation can be done</p>
                                <img src="<c:url value="/resources/images/s_kuz.png"/>" width="400" height="220" style="margin-left: 150px;"><br/>
                                <p>Thus, at the output of the R conversion, the first element will be obtained using the C conversion, and the remaining elements will be overwritten unchanged from a15 to ai. Schematically, the data conversion process using the R conversion can be done.</p>
                                <img src="<c:url value="/resources/images/r_kuz.png"/>" width="400" height="220" style="margin-left: 150px;"><br/>

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
<!-- Footer -->
<footer class="footer">

    <div class="footer_content" style="">
        <!-- Image credit: https://unsplash.com/@badashphotos -->
        <img src="<c:url value="/resources/images/footer.jpg"/>" style="margin-bottom: -35px;">
        <!--
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
