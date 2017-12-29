﻿var AesUtil=function(keySize,iterationCount){this.keySize=keySize/32;this.iterationCount=iterationCount};AesUtil.prototype.generateKey=function(dataDecryptionKey){var salt=dataDecryptionKey;return CryptoJS.PBKDF2(dataDecryptionKey,CryptoJS.enc.Hex.parse(salt),{keySize:this.keySize,iterations:this.iterationCount})};AesUtil.prototype.e=function(dataDecryptionKey,plainText){var key=this.generateKey(dataDecryptionKey);var initialVector=dataDecryptionKey;var encrypted=CryptoJS.AES.encrypt(plainText,key,{iv:CryptoJS.enc.Hex.parse(initialVector)});return encrypted.ciphertext.toString(CryptoJS.enc.Base64)};AesUtil.prototype.d=function(dataDecryptionKey,cipherText){var key=this.generateKey(dataDecryptionKey);var cipherParams=CryptoJS.lib.CipherParams.create({ciphertext:CryptoJS.enc.Base64.parse(cipherText)});var initialVector=dataDecryptionKey;var decrypted=CryptoJS.AES.decrypt(cipherParams,key,{iv:CryptoJS.enc.Hex.parse(initialVector)});return decrypted.toString(CryptoJS.enc.Utf8)};var k2="8deec885781c421794ceda8af70a5eaa";var KEY_SIZE=128,ITERATION_COUNT=100,au=new AesUtil(KEY_SIZE,ITERATION_COUNT);