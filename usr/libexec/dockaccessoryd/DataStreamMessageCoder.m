@interface DataStreamMessageCoder
+ (BOOL)_decodeOPACKFrame:(id)a3 receivedHeader:(id *)a4 receivedPayload:(id *)a5 error:(id *)a6;
+ (BOOL)_decryptEncryptedOPACKFrame:(id)a3 sessionEncryption:(id)a4 receivedHeader:(id *)a5 receivedPayload:(id *)a6 error:(id *)a7;
+ (BOOL)_unpackUnencryptedOPACKFrame:(id)a3 receivedHeader:(id *)a4 receivedPayload:(id *)a5 error:(id *)a6;
+ (BOOL)readHeaderFromPartialData:(const char *)a3 length:(unint64_t)a4 frameType:(unsigned __int8 *)a5 payloadLength:(unint64_t *)a6;
+ (BOOL)readHeaderFromPartialData:(id)a3 frameType:(unsigned __int8 *)a4 payloadLength:(unint64_t *)a5;
+ (id)_buildUnencryptedOPACKHeader:(id)a3 payload:(id)a4 error:(id *)a5;
+ (id)_encodeOPACKHeader:(id)a3 payload:(id)a4 error:(id *)a5;
+ (id)_encryptEncryptedOPACKHeader:(id)a3 payload:(id)a4 sessionEncryption:(id)a5 error:(id *)a6;
+ (id)eventHeaderForProtocol:(id)a3 topic:(id)a4;
+ (id)requestHeaderForProtocol:(id)a3 topic:(id)a4 identifier:(id)a5;
@end

@implementation DataStreamMessageCoder

+ (BOOL)_decryptEncryptedOPACKFrame:(id)a3 sessionEncryption:(id)a4 receivedHeader:(id *)a5 receivedPayload:(id *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  if ([v11 length] > 0x13)
  {
    v14 = [v11 bytes];
    v15 = [v11 length];
    v21 = 0;
    v16 = [v12 decrypt:v14 + 4 length:v15 - 28 additionalAuthData:v14 additionalAuthDataLength:4 authTagData:&v15[v14 - 24] authTagDataLength:16 counterData:&v15[v14 - 8] counterDataLength:8 error:&v21];
    v17 = v21;
    v18 = v17;
    if (v17)
    {
      if (a7)
      {
        v19 = v17;
        v13 = 0;
        *a7 = v18;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = [DataStreamMessageCoder _decodeOPACKFrame:v16 receivedHeader:a5 receivedPayload:a6 error:a7];
    }
  }

  else if (a7)
  {
    [NSError errorWithDomain:@"DKErrorDomain" code:26 userInfo:0];
    *a7 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)_decodeOPACKFrame:(id)a3 receivedHeader:(id *)a4 receivedPayload:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [v9 bytes];
  v11 = [v9 length];

  if (v11 && (v11 - 1) >= *v10)
  {
    v13 = *v10;
    v14 = OPACKDecodeBytes();
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = OPACKDecodeBytes();
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (a4)
        {
          v16 = v14;
          *a4 = v14;
        }

        if (a5)
        {
          v17 = v15;
          *a5 = v15;
        }

        v12 = 1;
      }

      else if (a6)
      {
        [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
        *a6 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else if (a6)
    {
      [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
      *a6 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (a6)
  {
    [NSError errorWithDomain:@"DKErrorDomain" code:26 userInfo:0];
    *a6 = v12 = 0;
  }

  else
  {
    return 0;
  }

  return v12;
}

+ (BOOL)_unpackUnencryptedOPACKFrame:(id)a3 receivedHeader:(id *)a4 receivedPayload:(id *)a5 error:(id *)a6
{
  v9 = a3;
  if ([v9 length] > 3)
  {
    v11 = [v9 subdataWithRange:{4, objc_msgSend(v9, "length") - 4}];
    v10 = [DataStreamMessageCoder _decodeOPACKFrame:v11 receivedHeader:a4 receivedPayload:a5 error:a6];
  }

  else if (a6)
  {
    [NSError errorWithDomain:@"DKErrorDomain" code:26 userInfo:0];
    *a6 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_encodeOPACKHeader:(id)a3 payload:(id)a4 error:(id *)a5
{
  v6 = a4;
  v16 = 0;
  Data = OPACKEncoderCreateData();
  if (Data)
  {
    v9 = OPACKEncoderCreateData();
    v10 = v9;
    if (v9)
    {
      v11 = [Data length];
      v12 = [v10 length];
      if (v11 < 0x100)
      {
        v15 = v11;
        v8 = [NSMutableData dataWithCapacity:&v12[v11 + 1]];
        [v8 appendBytes:&v15 length:1];
        [v8 appendData:Data];
        [v8 appendData:v10];
        goto LABEL_15;
      }

      if (a5)
      {
        v13 = [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
LABEL_11:
        v8 = 0;
        *a5 = v13;
LABEL_15:

        goto LABEL_16;
      }
    }

    else if (a5)
    {
      v13 = sub_100041618(v16);
      goto LABEL_11;
    }

    v8 = 0;
    goto LABEL_15;
  }

  if (a5)
  {
    sub_100041618(0);
    *a5 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_16:

  return v8;
}

+ (id)_encryptEncryptedOPACKHeader:(id)a3 payload:(id)a4 sessionEncryption:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = [DataStreamMessageCoder _encodeOPACKHeader:a3 payload:a4 error:a6];
  v11 = v10;
  if (!v10)
  {
LABEL_5:
    v14 = 0;
    goto LABEL_7;
  }

  v12 = [v10 length];
  v13 = v12 + 20;
  if ((v12 + 20) >= 0x100000)
  {
    if (a6)
    {
      [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
      *a6 = v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v18[0] = 1;
  v18[1] = BYTE2(v12);
  v18[2] = BYTE1(v12);
  v18[3] = v12;
  v15 = [NSData dataWithBytes:v18 length:4];
  v16 = [v9 encrypt:v11 additionalAuthenticatedData:v15];

  v14 = [NSMutableData dataWithCapacity:v13];
  [v14 appendBytes:v18 length:4];
  [v14 appendData:v16];

LABEL_7:

  return v14;
}

+ (id)_buildUnencryptedOPACKHeader:(id)a3 payload:(id)a4 error:(id *)a5
{
  v6 = [DataStreamMessageCoder _encodeOPACKHeader:a3 payload:a4 error:?];
  v7 = v6;
  if (!v6)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = [v6 length];
  if (v8 + 4 >= 0x100000)
  {
    if (a5)
    {
      [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
      *a5 = v9 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v11[0] = 3;
  v11[1] = BYTE2(v8);
  v11[2] = BYTE1(v8);
  v11[3] = v8;
  v9 = [NSMutableData dataWithCapacity:?];
  [v9 appendBytes:v11 length:4];
  [v9 appendData:v7];
LABEL_7:

  return v9;
}

+ (BOOL)readHeaderFromPartialData:(id)a3 frameType:(unsigned __int8 *)a4 payloadLength:(unint64_t *)a5
{
  if (dispatch_data_get_size(a3) < 4)
  {
    return 0;
  }

  subrange = dispatch_data_create_subrange(a3, 0, 4uLL);
  v12 = 0;
  buffer_ptr = 0;
  v10 = dispatch_data_create_map(subrange, &buffer_ptr, &v12);

  v8 = v10 != 0;
  if (v10)
  {
    if (a4)
    {
      *a4 = *buffer_ptr;
    }

    if (a5)
    {
      *a5 = (*(buffer_ptr + 1) << 16) | (*(buffer_ptr + 2) << 8) | *(buffer_ptr + 3);
    }
  }

  return v8;
}

+ (BOOL)readHeaderFromPartialData:(const char *)a3 length:(unint64_t)a4 frameType:(unsigned __int8 *)a5 payloadLength:(unint64_t *)a6
{
  if (a4 >= 4)
  {
    if (a5)
    {
      *a5 = *a3;
    }

    if (a6)
    {
      *a6 = (*(a3 + 1) << 16) | (*(a3 + 2) << 8) | *(a3 + 3);
    }
  }

  return a4 > 3;
}

+ (id)eventHeaderForProtocol:(id)a3 topic:(id)a4
{
  v9[0] = @"protocol";
  v9[1] = @"event";
  v10[0] = a3;
  v10[1] = a4;
  v5 = a4;
  v6 = a3;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)requestHeaderForProtocol:(id)a3 topic:(id)a4 identifier:(id)a5
{
  v12[0] = @"protocol";
  v12[1] = @"request";
  v13[0] = a3;
  v13[1] = a4;
  v12[2] = @"id";
  v13[2] = a5;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

@end