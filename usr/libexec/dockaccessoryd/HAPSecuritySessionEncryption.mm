@interface HAPSecuritySessionEncryption
- (HAPSecuritySessionEncryption)init;
- (HAPSecuritySessionEncryption)initWithInputKey:(id)a3 outputKey:(id)a4 enhancedEncryption:(BOOL)a5;
- (id)decrypt:(const void *)a3 length:(unint64_t)a4 additionalAuthData:(const void *)a5 additionalAuthDataLength:(unint64_t)a6 authTagData:(const void *)a7 authTagDataLength:(unint64_t)a8 counterData:(const void *)a9 counterDataLength:(unint64_t)a10 error:(id *)a11;
- (id)decrypt:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5;
- (id)encrypt:(id)a3 additionalAuthenticatedData:(id)a4;
@end

@implementation HAPSecuritySessionEncryption

- (HAPSecuritySessionEncryption)init
{
  v3.receiver = self;
  v3.super_class = HAPSecuritySessionEncryption;
  return [(HAPSecuritySessionEncryption *)&v3 init];
}

- (HAPSecuritySessionEncryption)initWithInputKey:(id)a3 outputKey:(id)a4 enhancedEncryption:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = HAPSecuritySessionEncryption;
  v11 = [(HAPSecuritySessionEncryption *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_enhancedEncryption = a5;
    objc_storeStrong(&v11->_inputKey, a3);
    objc_storeStrong(&v12->_outputKey, a4);
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

- (id)encrypt:(id)a3 additionalAuthenticatedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableData alloc] initWithLength:{objc_msgSend(v6, "length")}];
  v9 = [(HAPSecuritySessionEncryption *)self outputKey];
  [v9 bytes];
  v10 = [(HAPSecuritySessionEncryption *)self outputNonce];
  [v10 bytes];
  [v7 bytes];
  [v7 length];
  [v6 bytes];
  [v6 length];
  [v8 mutableBytes];
  chacha20_poly1305_encrypt_all_64x64();

  [v8 appendBytes:v19 length:16];
  if (self->_enhancedEncryption)
  {
    [v8 appendData:self->_outputNonce];
  }

  v11 = [(HAPSecuritySessionEncryption *)self outputNonce];
  v12 = [v11 mutableBytes];
  v13 = [(HAPSecuritySessionEncryption *)self outputNonce];
  v14 = [v13 length];
  if (v14)
  {
    v15 = v14 - 1;
    do
    {
      if (++*v12++)
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

- (id)decrypt:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  enhancedEncryption = self->_enhancedEncryption;
  v11 = [v8 length];
  if (enhancedEncryption)
  {
    v12 = -8;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v8 subdataWithRange:{&v11[v12 - 16], 16}];
  v14 = [v8 subdataWithRange:{0, objc_msgSend(v8, "length") + v12 - 16}];
  if (self->_enhancedEncryption)
  {
    v15 = [v8 subdataWithRange:{objc_msgSend(v8, "length") - 8, 8}];
    v39 = 0;
    v40 = 0;
    [v15 getBytes:&v40 length:8];
    [(NSMutableData *)self->_inputNonce getBytes:&v39 length:8];
    if (v40 < v39)
    {
      v16 = self;
      v17 = sub_10007FAA0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_10007FAFC(v16);
        *buf = 138543618;
        v42 = v18;
        v43 = 2048;
        v44 = v40;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Ignoring out of sequence packet: %llu", buf, 0x16u);
      }

      v19 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6764 userInfo:0];
      if (a5)
      {
        v19 = v19;
        *a5 = v19;
      }

      v20 = 0;
      goto LABEL_31;
    }

    if (v40 > v39)
    {
      v21 = self;
      v22 = sub_10007FAA0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_10007FAFC(v21);
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
  v26 = [(HAPSecuritySessionEncryption *)self inputKey];
  [v26 bytes];
  v27 = [(HAPSecuritySessionEncryption *)self inputNonce];
  [v27 bytes];
  [v9 bytes];
  [v9 length];
  [v24 bytes];
  v38 = v24;
  [v24 length];
  [v25 mutableBytes];
  [v13 bytes];
  v28 = chacha20_poly1305_decrypt_all_64x64();

  v29 = [(HAPSecuritySessionEncryption *)self inputNonce];
  v30 = [v29 mutableBytes];
  v31 = [(HAPSecuritySessionEncryption *)self inputNonce];
  v32 = [v31 length];
  if (v32)
  {
    v33 = v32 - 1;
    do
    {
      if (++*v30++)
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
    if (a5)
    {
      v36 = v36;
      *a5 = v36;
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

- (id)decrypt:(const void *)a3 length:(unint64_t)a4 additionalAuthData:(const void *)a5 additionalAuthDataLength:(unint64_t)a6 authTagData:(const void *)a7 authTagDataLength:(unint64_t)a8 counterData:(const void *)a9 counterDataLength:(unint64_t)a10 error:(id *)a11
{
  if (a11)
  {
    *a11 = 0;
    if (a8 != 16 || a10 != 8)
    {
      [NSError hmfErrorWithCode:3 userInfo:0, a5];
      *a11 = v13 = 0;
      goto LABEL_27;
    }

LABEL_7:
    v35 = 0;
    v14 = *a9;
    [(NSMutableData *)self->_inputNonce getBytes:&v35 length:8, a5];
    if (v14 >= v35)
    {
      v18 = &_s11DockKitCore6ErrorsO11AlreadyDoneyACSS_tcACmFWC_ptr;
      if (v14 > v35)
      {
        v19 = self;
        v20 = sub_10007FAA0();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = sub_10007FAFC(v19);
          *buf = 138543874;
          v37 = v21;
          v38 = 2048;
          v39 = v35;
          v40 = 2048;
          v41 = v14;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@Detected potential packet drop while decrypting message: %llu != %llu", buf, 0x20u);

          v18 = &_s11DockKitCore6ErrorsO11AlreadyDoneyACSS_tcACmFWC_ptr;
        }

        v22 = [v18[117] dataWithBytes:a9 length:8];
        inputNonce = self->_inputNonce;
        self->_inputNonce = v22;
      }

      v16 = [objc_alloc(v18[117]) initWithLength:a4];
      v24 = [(HAPSecuritySessionEncryption *)self inputKey];
      [v24 bytes];
      v25 = [(HAPSecuritySessionEncryption *)self inputNonce];
      [v25 bytes];
      [v16 mutableBytes];
      v26 = chacha20_poly1305_decrypt_all_64x64();

      v27 = [(HAPSecuritySessionEncryption *)self inputNonce];
      v28 = [v27 mutableBytes];
      v29 = [(HAPSecuritySessionEncryption *)self inputNonce];
      v30 = [v29 length];
      if (v30)
      {
        v31 = v30 - 1;
        do
        {
          if (++*v28++)
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

      if (a11)
      {
        sub_100041618(v26);
        *a11 = v13 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v15 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6754 userInfo:0];
      v16 = v15;
      if (a11)
      {
        v17 = v15;
        v13 = 0;
        *a11 = v16;
LABEL_26:

        goto LABEL_27;
      }
    }

    v13 = 0;
    goto LABEL_26;
  }

  v13 = 0;
  if (a8 == 16 && a10 == 8)
  {
    goto LABEL_7;
  }

LABEL_27:

  return v13;
}

@end