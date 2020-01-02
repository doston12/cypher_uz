package com.option.controllers;

import com.option.model.EncryptionEngine;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.option.model.AES;

import java.security.NoSuchAlgorithmException;

@RequestMapping("")
@Controller
public class MainController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String indexPage() {
        return "index";
    }

    @RequestMapping(value = "/aes")
    public String showAES() {
        return "aes";
    }

    @RequestMapping(value = "/gost")
    public String showMagma() {
        return "gost";
    }

    @RequestMapping(value = "/kuznyechik")
    public String showKuznyechik() {
        return "kuznyechik";
    }

    @RequestMapping(value = "/aes_encryption")
    @ResponseBody
    public String encrypteInAES(@RequestParam("plain_text") String i_plain_text) throws NoSuchAlgorithmException {
        AES aes = new AES();
        String encrypted_text = aes.doCipher(i_plain_text);

        return encrypted_text;
    }


    @RequestMapping(value = "/des")
    public String showDES() {
        return "des";
    }

    @RequestMapping(value = "/des_encryption")
    @ResponseBody
    public String encrypteInDES(@RequestParam("plain_text") String i_plain_text) throws NoSuchAlgorithmException {
        EncryptionEngine des = new EncryptionEngine();
        String encrypted_text = des.encryptAES(i_plain_text);
        return encrypted_text;
    }



}
