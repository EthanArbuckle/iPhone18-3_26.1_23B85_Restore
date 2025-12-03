@interface HAPSecuritySessionEncryption
- (HAPSecuritySessionEncryption)init;
- (HAPSecuritySessionEncryption)initWithInputKey:(id)key outputKey:(id)outputKey enhancedEncryption:(BOOL)encryption;
- (id)decrypt:(const void *)decrypt length:(unint64_t)length additionalAuthData:(const void *)data additionalAuthDataLength:(unint64_t)dataLength authTagData:(const void *)tagData authTagDataLength:(unint64_t)tagDataLength counterData:(const void *)counterData counterDataLength:(unint64_t)self0 error:(id *)self1;
- (id)decrypt:(id)decrypt additionalAuthenticatedData:(id)data error:(id *)error;
- (id)encrypt:(id)encrypt additionalAuthenticatedData:(id)data;
@end

@implementation HAPSecuritySessionEncryption

- (HAPSecuritySessionEncryption)init
{
  v3.receiver = self;
  v3.super_class = HAPSecuritySessionEncryption;
  return [(HAPSecuritySessionEncryption *)&v3 init];
}

- (HAPSecuritySessionEncryption)initWithInputKey:(id)key outputKey:(id)outputKey enhancedEncryption:(BOOL)encryption
{
  keyCopy = key;
  outputKeyCopy = outputKey;
  v18.receiver = self;
  v18.super_class = HAPSecuritySessionEncryption;
  v11 = [(HAPSecuritySessionEncryption *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_enhancedEncryption = encryption;
    objc_storeStrong(&v11->_inputKey, key);
    objc_storeStrong(&v12->_outputKey, outputKey);
    memset_s(__s, 8uLL, 0, 8uLL);
    v13 = [NSMutableData dataWithBytes:__s length:8];
    inputNonce = v12->_inputNonce;
    v12->_inputNonce = v13;

    v15 = [NSMutableData dataWithBytes:__s length:8];
    outputNonce = v12->_outputNonce;
    v12->_outputNonce = v15;
  }

  return v12;
}

- (id)encrypt:(id)encrypt additionalAuthenticatedData:(id)data
{
  encryptCopy = encrypt;
  dataCopy = data;
  v8 = [[NSMutableData alloc] initWithLength:{objc_msgSend(encryptCopy, "length")}];
  outputKey = [(HAPSecuritySessionEncryption *)self outputKey];
  [outputKey bytes];
  outputNonce = [(HAPSecuritySessionEncryption *)self outputNonce];
  [outputNonce bytes];
  [dataCopy bytes];
  [dataCopy length];
  [encryptCopy bytes];
  [encryptCopy length];
  [v8 mutableBytes];
  chacha20_poly1305_encrypt_all_64x64();

  [v8 appendBytes:v19 length:16];
  if (self->_enhancedEncryption)
  {
    [v8 appendData:self->_outputNonce];
  }

  outputNonce2 = [(HAPSecuritySessionEncryption *)self outputNonce];
  mutableBytes = [outputNonce2 mutableBytes];
  outputNonce3 = [(HAPSecuritySessionEncryption *)self outputNonce];
  v14 = [outputNonce3 length];
  if (v14)
  {
    v15 = v14 - 1;
    do
    {
      if (++*mutableBytes++)
      {
        v17 = 1;
      }

      else
      {
        v17 = v15 == 0;
      }

      --v15;
    }

    while (!v17);
  }

  return v8;
}

- (id)decrypt:(id)decrypt additionalAuthenticatedData:(id)data error:(id *)error
{
  decryptCopy = decrypt;
  dataCopy = data;
  if (error)
  {
    *error = 0;
  }

  enhancedEncryption = self->_enhancedEncryption;
  v11 = [decryptCopy length];
  if (enhancedEncryption)
  {
    v12 = -8;
  }

  else
  {
    v12 = 0;
  }

  v13 = [decryptCopy subdataWithRange:{&v11[v12 - 16], 16}];
  v14 = [decryptCopy subdataWithRange:{0, objc_msgSend(decryptCopy, "length") + v12 - 16}];
  if (self->_enhancedEncryption)
  {
    v15 = [decryptCopy subdataWithRange:{objc_msgSend(decryptCopy, "length") - 8, 8}];
    v39 = 0;
    v40 = 0;
    [v15 getBytes:&v40 length:8];
    [(NSMutableData *)self->_inputNonce getBytes:&v39 length:8];
    if (v40 < v39)
    {
      selfCopy = self;
      v17 = sub_10007FAA0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_10007FAFC(selfCopy);
        *buf = 138543618;
        v42 = v18;
        v43 = 2048;
        v44 = v40;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Ignoring out of sequence packet: %llu", buf, 0x16u);
      }

      v19 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6764 userInfo:0];
      if (error)
      {
        v19 = v19;
        *error = v19;
      }

      v20 = 0;
      goto LABEL_31;
    }

    if (v40 > v39)
    {
      selfCopy2 = self;
      v22 = sub_10007FAA0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_10007FAFC(selfCopy2);
        *buf = 138543874;
        v42 = v23;
        v43 = 2048;
        v44 = v39;
        v45 = 2048;
        v46 = v40;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Detected potential packet drop while decrypting message: %llu != %llu", buf, 0x20u);
      }

      [(NSMutableData *)self->_inputNonce setData:v15];
    }
  }

  v24 = v14;
  v25 = [[NSMutableData alloc] initWithLength:{objc_msgSend(v14, "length")}];
  inputKey = [(HAPSecuritySessionEncryption *)self inputKey];
  [inputKey bytes];
  inputNonce = [(HAPSecuritySessionEncryption *)self inputNonce];
  [inputNonce bytes];
  [dataCopy bytes];
  [dataCopy length];
  [v24 bytes];
  v38 = v24;
  [v24 length];
  [v25 mutableBytes];
  [v13 bytes];
  v28 = chacha20_poly1305_decrypt_all_64x64();

  inputNonce2 = [(HAPSecuritySessionEncryption *)self inputNonce];
  mutableBytes = [inputNonce2 mutableBytes];
  inputNonce3 = [(HAPSecuritySessionEncryption *)self inputNonce];
  v32 = [inputNonce3 length];
  if (v32)
  {
    v33 = v32 - 1;
    do
    {
      if (++*mutableBytes++)
      {
        v35 = 1;
      }

      else
      {
        v35 = v33 == 0;
      }

      --v33;
    }

    while (!v35);
  }

  if (v28)
  {
    v36 = [NSError errorWithDomain:@"HAPErrorDomain" code:v28 userInfo:0];
    v15 = v25;
    if (error)
    {
      v36 = v36;
      *error = v36;
    }

    v20 = 0;
  }

  else
  {
    v15 = v25;
    v20 = v15;
  }

  v14 = v38;
LABEL_31:

  return v20;
}

- (id)decrypt:(const void *)decrypt length:(unint64_t)length additionalAuthData:(const void *)data additionalAuthDataLength:(unint64_t)dataLength authTagData:(const void *)tagData authTagDataLength:(unint64_t)tagDataLength counterData:(const void *)counterData counterDataLength:(unint64_t)self0 error:(id *)self1
{
  if (error)
  {
    *error = 0;
    if (tagDataLength != 16 || counterDataLength != 8)
    {
      [NSError hmfErrorWithCode:3 userInfo:0, data];
      *error = v13 = 0;
      goto LABEL_27;
    }

LABEL_7:
    v35 = 0;
    v14 = *counterData;
    [(NSMutableData *)self->_inputNonce getBytes:&v35 length:8, data];
    if (v14 >= v35)
    {
      v18 = &_s11DockKitCore6ErrorsO11AlreadyDoneyACSS_tcACmFWC_ptr;
      if (v14 > v35)
      {
        selfCopy = self;
        v20 = sub_10007FAA0();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = sub_10007FAFC(selfCopy);
          *buf = 138543874;
          v37 = v21;
          v38 = 2048;
          v39 = v35;
          v40 = 2048;
          v41 = v14;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@Detected potential packet drop while decrypting message: %llu != %llu", buf, 0x20u);

          v18 = &_s11DockKitCore6ErrorsO11AlreadyDoneyACSS_tcACmFWC_ptr;
        }

        v22 = [v18[117] dataWithBytes:counterData length:8];
        inputNonce = self->_inputNonce;
        self->_inputNonce = v22;
      }

      v16 = [objc_alloc(v18[117]) initWithLength:length];
      inputKey = [(HAPSecuritySessionEncryption *)self inputKey];
      [inputKey bytes];
      inputNonce = [(HAPSecuritySessionEncryption *)self inputNonce];
      [inputNonce bytes];
      [v16 mutableBytes];
      v26 = chacha20_poly1305_decrypt_all_64x64();

      inputNonce2 = [(HAPSecuritySessionEncryption *)self inputNonce];
      mutableBytes = [inputNonce2 mutableBytes];
      inputNonce3 = [(HAPSecuritySessionEncryption *)self inputNonce];
      v30 = [inputNonce3 length];
      if (v30)
      {
        v31 = v30 - 1;
        do
        {
          if (++*mutableBytes++)
          {
            v33 = 1;
          }

          else
          {
            v33 = v31 == 0;
          }

          --v31;
        }

        while (!v33);
      }

      if (!v26)
      {
        v16 = v16;
        v13 = v16;
        goto LABEL_26;
      }

      if (error)
      {
        sub_100041618(v26);
        *error = v13 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v15 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6754 userInfo:0];
      v16 = v15;
      if (error)
      {
        v17 = v15;
        v13 = 0;
        *error = v16;
LABEL_26:

        goto LABEL_27;
      }
    }

    v13 = 0;
    goto LABEL_26;
  }

  v13 = 0;
  if (tagDataLength == 16 && counterDataLength == 8)
  {
    goto LABEL_7;
  }

LABEL_27:

  return v13;
}

@end