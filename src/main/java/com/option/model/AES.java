package com.option.model;

import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.encoders.Base64;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.security.Security;

public class AES {

    private AESEngine engine;
    private CBCBlockCipher blockCipher;
    private PaddedBufferedBlockCipher cipher;
    private KeyParameter keyParam;

    public AES() {
        engine = new AESEngine();
        blockCipher = new CBCBlockCipher(engine);
        cipher = new PaddedBufferedBlockCipher(blockCipher);
    }

    public String doCipher(String input) throws NoSuchAlgorithmException {
        Security.setProperty("crypto.policy", "unlimited");

        int maxKeySize = javax.crypto.Cipher.getMaxAllowedKeyLength("AES");
        System.out.println("Max Key Size for AES : " + maxKeySize);
        System.out.println("==========================================");
        //String keyString = "Olmy9iqs1LwWblwe";
        String keyString = "Blmw9iqs2Lwgblwe";

        return test(input, keyString);
    }

    private String test(String input, String keyString)
    {
        String encryptedInput = "";
        try
        {

            byte[] inputBytes = input.getBytes();
            String xiv = "1234567891234567";
            byte[] iv = xiv.getBytes("UTF-8");
            int length;
            //Set up

            //CBCBlockCipher blockCipher = new CBCBlockCipher(engine);
            //PaddedBufferedBlockCipher cipher = new PaddedBufferedBlockCipher(blockCipher);
            KeyParameter keyParam = new KeyParameter(keyString.getBytes());
            ParametersWithIV keyParamWithIV = new ParametersWithIV(keyParam, iv, 0, 16);
            // Encrypt
            cipher.init(true, keyParamWithIV);
            byte[] outputBytes = new byte[cipher.getOutputSize(inputBytes.length)];
            length = cipher.processBytes(inputBytes,0,inputBytes.length, outputBytes, 0);
            cipher.doFinal(outputBytes, length);
            encryptedInput = new String(Base64.encode(outputBytes));
            System.out.println("Encrypted String:" +encryptedInput);

            //Decrypt
            cipher.init(false, keyParamWithIV);
            byte[] out2 = Base64.decode(encryptedInput);
            byte[] comparisonBytes = new byte[cipher.getOutputSize(out2.length)];
            length = cipher.processBytes(out2, 0, out2.length, comparisonBytes, 0);
            cipher.doFinal(comparisonBytes, length); //Do the final block
            String s2 = new String(comparisonBytes);
            System.out.println("Decrypted String:"+s2);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return encryptedInput;
    }



}
