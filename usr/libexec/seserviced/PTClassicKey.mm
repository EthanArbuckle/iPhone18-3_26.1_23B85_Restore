@interface PTClassicKey
+ (id)_withExportedBlob:(id)a3 error:(id *)a4;
+ (id)_withNativePTData:(id)a3 error:(id *)a4;
+ (id)withData:(id)a3 error:(id *)a4;
- ($BE749665CD263385F3F5ED554982D87D)accessControlConstraintsItem;
- ($BE749665CD263385F3F5ED554982D87D)assetACLAttestationItem;
- ($BE749665CD263385F3F5ED554982D87D)assetACLItem;
- ($BE749665CD263385F3F5ED554982D87D)encryptedWrappedKeyBlobItem;
- ($BE749665CD263385F3F5ED554982D87D)keyBlobItem;
- (NSData)keyIdentifier;
- (id)description;
@end

@implementation PTClassicKey

+ (id)withData:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [v5 u8:0];
    if (v6 == 230)
    {
      v7 = [PTClassicKey _withExportedBlob:v5 error:a4];
      goto LABEL_8;
    }

    if (v6 == 48)
    {
      v7 = [PTClassicKey _withNativePTData:v5 error:a4];
LABEL_8:
      a4 = v7;
      goto LABEL_9;
    }
  }

  if (a4)
  {
    v8 = SESDefaultLogObject();
    *a4 = SESCreateAndLogError();

    a4 = 0;
  }

LABEL_9:

  return a4;
}

+ (id)_withNativePTData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_opt_new();
    objc_storeStrong((v7 + 128), a3);
    *(v7 + 120) = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    if (DERParseSequenceSpec())
    {
      if (a4)
      {
        v8 = SESDefaultLogObject();
        v9 = [v6 base64];
        *a4 = SESCreateAndLogError();
LABEL_14:

        a4 = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (DERParseSequenceSpec())
    {
      if (!a4)
      {
        goto LABEL_15;
      }

      v8 = SESDefaultLogObject();
      v9 = [NSData dataWithDERItem:&v16];
      v11 = [v9 base64];
    }

    else
    {
      if (!DERParseSequenceSpec())
      {
        *(v7 + 168) = v14;
        v13 = v17;
        *(v7 + 184) = v15;
        *(v7 + 136) = v16;
        *(v7 + 152) = v13;
        *(v7 + 200) = 0u;
        a4 = v7;
        goto LABEL_15;
      }

      if (!a4)
      {
        goto LABEL_15;
      }

      v8 = SESDefaultLogObject();
      v9 = [NSData dataWithDERItem:&v14];
      v11 = [v9 base64];
    }

    *a4 = SESCreateAndLogError();

    goto LABEL_14;
  }

  if (a4)
  {
    v10 = SESDefaultLogObject();
    *a4 = SESCreateAndLogError();

    a4 = 0;
  }

LABEL_16:

  return a4;
}

+ (id)_withExportedBlob:(id)a3 error:(id *)a4
{
  v6 = a3;
  v29 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v28[0] = [v6 DERItem];
  v28[1] = v7;
  if (!DERDecodeItem(v28, &v29))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3010000000;
    v26 = 0;
    v27 = 0;
    v25 = "";
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000593E8;
    v21[3] = &unk_1004C2190;
    v21[4] = &v22;
    if (DERDecodeSequenceContentWithBlock(v30, v21) || !v23[5])
    {
      if (!a4)
      {
LABEL_10:
        _Block_object_dispose(&v22, 8);
        goto LABEL_11;
      }

      v9 = SESDefaultLogObject();
      v10 = [v6 base64];
      v11 = SESCreateAndLogError();
    }

    else
    {
      v9 = objc_opt_new();
      objc_storeStrong((v9 + 128), a3);
      *(v9 + 120) = 1;
      if (DERParseSequenceSpec())
      {
        if (!a4)
        {
          goto LABEL_9;
        }

        v10 = SESDefaultLogObject();
        v13 = [NSData dataWithDERItem:v23 + 4];
        v20 = [v13 base64];
        *a4 = SESCreateAndLogError();

        goto LABEL_8;
      }

      v14 = DERLengthOfEncodedSequence(0x2000000000000010, v9 + 8, 7, &unk_100408040) + 32;
      v15 = v23[5];
      v16 = v15 >= v14;
      v17 = v15 - v14;
      if (v16)
      {
        v18 = v23 + 4;
        v23[4] += v14;
        v18[1] = v17;
        DERParseSequenceSpec();
        *(v9 + 200) = 0u;
        a4 = v9;
        goto LABEL_9;
      }

      if (!a4)
      {
LABEL_9:

        goto LABEL_10;
      }

      v10 = SESDefaultLogObject();
      v11 = SESCreateAndLogError();
    }

    *a4 = v11;
LABEL_8:

    a4 = 0;
    goto LABEL_9;
  }

  if (a4)
  {
    v8 = SESDefaultLogObject();
    v19 = [v6 base64];
    *a4 = SESCreateAndLogError();

    a4 = 0;
  }

LABEL_11:

  return a4;
}

- (id)description
{
  v3 = [(PTClassicKey *)self keyNumber];
  v4 = [(PTClassicKey *)self keyIdentifier];
  v5 = [v4 asHexString];
  v6 = [NSString stringWithFormat:@"Key: keyNumber 0x%X keyIdentifier %@ isExported %d", v3, v5, self->_isExportedData];

  return v6;
}

- (NSData)keyIdentifier
{
  v3 = [NSMutableData dataWithLength:32];
  CC_SHA256(self->_ptKeyBlob.publicKey.data, self->_ptKeyBlob.publicKey.length, [v3 mutableBytes]);
  [v3 setLength:16];

  return v3;
}

- ($BE749665CD263385F3F5ED554982D87D)keyBlobItem
{
  objc_copyStruct(v4, &self->_keyBlobItem, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($BE749665CD263385F3F5ED554982D87D)encryptedWrappedKeyBlobItem
{
  objc_copyStruct(v4, &self->_encryptedWrappedKeyBlobItem, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($BE749665CD263385F3F5ED554982D87D)assetACLItem
{
  objc_copyStruct(v4, &self->_assetACLItem, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($BE749665CD263385F3F5ED554982D87D)assetACLAttestationItem
{
  objc_copyStruct(v4, &self->_assetACLAttestationItem, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($BE749665CD263385F3F5ED554982D87D)accessControlConstraintsItem
{
  objc_copyStruct(v4, &self->_accessControlConstraintsItem, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end