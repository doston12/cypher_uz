package com.option.model;

import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.engines.GOST3412_2015Engine;
import org.bouncycastle.crypto.modes.G3413CFBBlockCipher;
import org.bouncycastle.crypto.paddings.PKCS7Padding;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

import java.io.UnsupportedEncodingException;
import java.security.SecureRandom;
import java.util.Base64;

public class Kuznechik {
    private final BufferedBlockCipher cipher = new PaddedBufferedBlockCipher(new
            G3413CFBBlockCipher(new GOST3412_2015Engine()), new PKCS7Padding());
    private final SecureRandom random = new SecureRandom();
    private KeyParameter key;
    public Kuznechik(byte[] key) {
        this.key = new KeyParameter(key);
    }

    public static void main(String[] args) {

        Kuznechik kuznechik =
                new Kuznechik(Hex.decode("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"));

        try {
            byte []text = kuznechik.byteEncrypt(("Suitable clothing for travels about Uzbekistan differs as to the season." +
                    " Clothes made of cotton and other natural textiles will be the best choice in warm and hot weather. " +
                    "You will feel best in T-shirts, light and loose trousers, shorts, or sundresses. Remember that your" +
                    " footwear must be comfortable, light and strong, since you will have to walk over rough ground " +
                    "surfaces at times. Sunglasses, light headwear and sunblock lotion should also be kept handy.").getBytes(), null);
            String shifrMatn = Base64.getEncoder().encodeToString(text);
            System.out.println(shifrMatn);

            byte []ans = kuznechik.byteDecrypt(Base64.getDecoder().decode(shifrMatn), null);
            System.out.println(new String(ans,"UTF-8"));
        } catch (InvalidCipherTextException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

    }

    public byte[] byteEncrypt(byte[] plainText, byte[] key) throws
            InvalidCipherTextException {
        return processing(plainText, true);
    }
    public byte[] byteDecrypt(byte[] cipherText, byte[] key) throws
            InvalidCipherTextException {
        return processing(cipherText, false);
    }
    private byte[] processing(byte[] input, boolean encrypt) throws DataLengthException,
            InvalidCipherTextException {
        int blockSize = cipher.getBlockSize();
        int inputOffset = 0;
        int inputLength = input.length;
        int outputOffset = 0;
        byte[] iv = new byte[blockSize];
        if(encrypt) {
            random.nextBytes(iv);
            outputOffset += blockSize;
        } else {
            System.arraycopy(input, 0 , iv, 0, blockSize);
            inputOffset += blockSize;
            inputLength -= blockSize;
        }
        cipher.init(encrypt, new ParametersWithIV(key, iv));
        byte[] output = new byte[cipher.getOutputSize(inputLength) + outputOffset];
        if(encrypt) {
            System.arraycopy(iv, 0 , output, 0, blockSize);
        }
        int outputLength = outputOffset + cipher.processBytes(
                input, inputOffset, inputLength, output, outputOffset);
        outputLength += cipher.doFinal(output, outputLength);

        return Arrays.copyOf(output, outputLength);
    }

}
