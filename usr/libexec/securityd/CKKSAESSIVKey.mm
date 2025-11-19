@interface CKKSAESSIVKey
+ (id)randomKey:(id *)a3;
- (BOOL)doSIV:(const ccmode_siv *)a3 nonce:(id)a4 text:(id)a5 buffer:(char *)a6 bufferLength:(unint64_t)a7 authenticatedData:(id)a8 error:(id *)a9;
- (CKKSAESSIVKey)init;
- (CKKSAESSIVKey)initWithBase64:(id)a3;
- (CKKSAESSIVKey)initWithBytes:(char *)a3 len:(unint64_t)a4;
- (id)decryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5;
- (id)encryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5;
- (id)keyMaterial;
- (id)unwrapAESKey:(id)a3 error:(id *)a4;
- (id)wrapAESKey:(id)a3 error:(id *)a4;
@end

@implementation CKKSAESSIVKey

- (id)keyMaterial
{
  v2 = [NSData _newZeroingDataWithBytes:self->super.key length:self->super.size];

  return v2;
}

- (BOOL)doSIV:(const ccmode_siv *)a3 nonce:(id)a4 text:(id)a5 buffer:(char *)a6 bufferLength:(unint64_t)a7 authenticatedData:(id)a8 error:(id *)a9
{
  v14 = a9;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = a3->var0 + 15;
  v19 = v18 & 0xFFFFFFFFFFFFFFF0;
  if (v18 >= 0x10)
  {
    v20 = (v45 - (v18 & 0xFFFFFFFFFFFFFFF0));
    do
    {
      *v20 = 0xAAAAAAAAAAAAAAAALL;
      v20[1] = 0xAAAAAAAAAAAAAAAALL;
      v20 += 2;
      v19 -= 16;
    }

    while (v19);
  }

  size = self->super.size;
  v22 = ccsiv_init();
  v49 = v45;
  if (v22)
  {
    v41 = v22;
    v61 = NSLocalizedDescriptionKey;
    v62 = @"could not ccsiv_init";
    v42 = &v62;
    v43 = &v61;
LABEL_26:
    v37 = [NSDictionary dictionaryWithObjects:v42 forKeys:v43 count:1];
    v34 = [NSError errorWithDomain:@"corecrypto" code:v41 userInfo:v37];
    v26 = 0;
    goto LABEL_19;
  }

  if (v15)
  {
    [v15 length];
    [v15 bytes];
    v23 = ccsiv_set_nonce();
    if (v23)
    {
      v41 = v23;
      v59 = NSLocalizedDescriptionKey;
      v60 = @"could not ccsiv_set_nonce";
      v42 = &v60;
      v43 = &v59;
      goto LABEL_26;
    }
  }

  v45[1] = a6;
  v46 = a9;
  v47 = v16;
  v48 = v15;
  v24 = [v17 allKeys];
  v25 = [v24 sortedArrayUsingSelector:"compare:"];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v51;
    while (2)
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [v17 objectForKey:*(*(&v50 + 1) + 8 * i)];
        [v31 length];
        [v31 bytes];
        v32 = ccsiv_aad();
        if (v32)
        {
          v35 = v32;
          v56 = NSLocalizedDescriptionKey;
          v57 = @"could not ccsiv_aad";
          v36 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v34 = [NSError errorWithDomain:@"corecrypto" code:v35 userInfo:v36];

          v37 = v26;
          v16 = v47;
          v15 = v48;
          goto LABEL_18;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v16 = v47;
  [v47 length];
  [v16 bytes];
  v33 = ccsiv_crypt();
  if (!v33)
  {
    v34 = 0;
    v15 = v48;
    v14 = v46;
    goto LABEL_20;
  }

  v44 = v33;
  v54 = NSLocalizedDescriptionKey;
  v55 = @"could not ccsiv_crypt";
  v37 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v34 = [NSError errorWithDomain:@"corecrypto" code:v44 userInfo:v37];
  v15 = v48;
LABEL_18:
  v14 = v46;
LABEL_19:

LABEL_20:
  var0 = a3->var0;
  cc_clear();
  if (v14)
  {
    v39 = v34;
    *v14 = v34;
  }

  return v34 == 0;
}

- (id)decryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = ccaes_siv_decrypt_mode();
  if ([v8 length] > 0x10)
  {
    v15 = [v8 length] - 16;
    v13 = [[NSData alloc] initWithBytesNoCopy:objc_msgSend(v8 length:"bytes") freeWhenDone:{16, 0}];
    v14 = [[NSData alloc] initWithBytesNoCopy:objc_msgSend(v8 length:"bytes") + 16 freeWhenDone:{v15, 0}];
    v12 = [[NSMutableData alloc] initWithLength:ccsiv_plaintext_size()];
    if (-[CKKSAESSIVKey doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:](self, "doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:", v10, v13, v14, [v12 mutableBytes], objc_msgSend(v12, "length"), v9, a5))
    {
      v12 = v12;
      a5 = v12;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a5)
  {
    v17 = NSLocalizedDescriptionKey;
    v18 = @"ciphertext too short";
    v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *a5 = [NSError errorWithDomain:NSOSStatusErrorDomain code:4 userInfo:v11];

    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_6:
    a5 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_8:

  return a5;
}

- (id)encryptData:(id)a3 authenticatedData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = ccaes_siv_encrypt_mode();
  v11 = [[NSMutableData alloc] initWithLength:16];
  Bytes = CCRandomGenerateBytes([v11 mutableBytes], objc_msgSend(v11, "length"));
  if (!Bytes)
  {
    [v8 length];
    v15 = [[NSMutableData alloc] initWithLength:ccsiv_ciphertext_size()];
    if (-[CKKSAESSIVKey doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:](self, "doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:", v10, v11, v8, [v15 mutableBytes], objc_msgSend(v15, "length"), v9, a5))
    {
      a5 = objc_alloc_init(NSMutableData);
      [a5 appendData:v11];
      [a5 appendData:v15];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a5)
  {
    v13 = Bytes;
    v17 = NSLocalizedDescriptionKey;
    v18 = @"IV generation failed";
    v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *a5 = [NSError errorWithDomain:@"CommonCrypto" code:v13 userInfo:v14];

    v15 = 0;
LABEL_6:
    a5 = 0;
    goto LABEL_8;
  }

  v15 = 0;
LABEL_8:

  return a5;
}

- (id)unwrapAESKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  memset(__s, 0, sizeof(__s));
  ccaes_siv_decrypt_mode();
  if (ccsiv_plaintext_size() == 64)
  {
    v7 = ccaes_siv_decrypt_mode();
    v8 = [[NSData alloc] initWithBytesNoCopy:v6 + 1 length:v6[11] freeWhenDone:0];
    v9 = [(CKKSAESSIVKey *)self doSIV:v7 nonce:0 text:v8 buffer:__s bufferLength:64 authenticatedData:0 error:a4];

    if (v9)
    {
      v10 = [[CKKSAESSIVKey alloc] initWithBytes:__s len:64];
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
  }

  else
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"unwrapped key size does not match key size";
    v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v14];

    v10 = 0;
  }

  memset_s(__s, 0x40uLL, 0, 0x40uLL);
  if (a4 && v11)
  {
    v12 = v11;
    *a4 = v11;
  }

  return v10;
}

- (id)wrapAESKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    memset(__s, 0, sizeof(__s));
    ccaes_siv_encrypt_mode();
    if (ccsiv_ciphertext_size() == 80)
    {
      v7 = ccaes_siv_encrypt_mode();
      v8 = [NSData _newZeroingDataWithBytes:v6 + 1 length:v6[11]];
      v9 = [(CKKSAESSIVKey *)self doSIV:v7 nonce:0 text:v8 buffer:__s bufferLength:80 authenticatedData:0 error:a4];

      if (v9)
      {
        v10 = [[CKKSWrappedAESSIVKey alloc] initWithBytes:__s len:80];
        v11 = 0;
LABEL_5:
        memset_s(__s, 0x50uLL, 0, 0x40uLL);
        if (a4 && v11)
        {
          v12 = v11;
LABEL_10:
          *a4 = v11;
          goto LABEL_12;
        }

        goto LABEL_12;
      }

      v11 = 0;
    }

    else
    {
      v17 = NSLocalizedDescriptionKey;
      v18 = @"wrapped key size does not match key size";
      v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v16];
    }

    v10 = 0;
    goto LABEL_5;
  }

  v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 description:@"No key given"];
  v11 = v13;
  if (a4)
  {
    v14 = v13;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (CKKSAESSIVKey)initWithBase64:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKKSAESSIVKey;
  v5 = [(CKKSBaseAESSIVKey *)&v11 initWithBase64:v4];
  v6 = v5;
  if (v5 && v5->super.size != 64)
  {
    v8 = [NSString stringWithFormat:@"length (%lu) was not %d", v5->super.size, 64];
    v9 = [NSException exceptionWithName:@"WrongKeySizeException" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  return v6;
}

- (CKKSAESSIVKey)initWithBytes:(char *)a3 len:(unint64_t)a4
{
  if (a4 != 64)
  {
    v5 = [NSString stringWithFormat:@"length (%lu) was not %d", a4, 64];
    v6 = [NSException exceptionWithName:@"WrongKeySizeException" reason:v5 userInfo:0];
    v7 = v6;

    objc_exception_throw(v6);
  }

  v8.receiver = self;
  v8.super_class = CKKSAESSIVKey;
  return [(CKKSBaseAESSIVKey *)&v8 initWithBytes:a3 len:?];
}

- (CKKSAESSIVKey)init
{
  v3.receiver = self;
  v3.super_class = CKKSAESSIVKey;
  result = [(CKKSBaseAESSIVKey *)&v3 init];
  if (result)
  {
    result->super.size = 64;
  }

  return result;
}

+ (id)randomKey:(id *)a3
{
  v4 = objc_alloc_init(CKKSAESSIVKey);
  Bytes = CCRandomGenerateBytes(v4->super.key, v4->super.size);
  if (Bytes)
  {
    if (a3)
    {
      v6 = Bytes;
      v7 = [NSString stringWithFormat:@"CCRandomGenerateBytes failed with %d", Bytes];
      *a3 = [NSError errorWithDomain:@"corecrypto" code:v6 description:v7];

      a3 = 0;
    }
  }

  else
  {
    a3 = v4;
  }

  return a3;
}

@end