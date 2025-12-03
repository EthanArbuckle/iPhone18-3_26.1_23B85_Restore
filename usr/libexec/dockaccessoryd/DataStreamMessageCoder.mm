@interface DataStreamMessageCoder
+ (BOOL)_decodeOPACKFrame:(id)frame receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error;
+ (BOOL)_decryptEncryptedOPACKFrame:(id)frame sessionEncryption:(id)encryption receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error;
+ (BOOL)_unpackUnencryptedOPACKFrame:(id)frame receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error;
+ (BOOL)readHeaderFromPartialData:(const char *)data length:(unint64_t)length frameType:(unsigned __int8 *)type payloadLength:(unint64_t *)payloadLength;
+ (BOOL)readHeaderFromPartialData:(id)data frameType:(unsigned __int8 *)type payloadLength:(unint64_t *)length;
+ (id)_buildUnencryptedOPACKHeader:(id)header payload:(id)payload error:(id *)error;
+ (id)_encodeOPACKHeader:(id)header payload:(id)payload error:(id *)error;
+ (id)_encryptEncryptedOPACKHeader:(id)header payload:(id)payload sessionEncryption:(id)encryption error:(id *)error;
+ (id)eventHeaderForProtocol:(id)protocol topic:(id)topic;
+ (id)requestHeaderForProtocol:(id)protocol topic:(id)topic identifier:(id)identifier;
@end

@implementation DataStreamMessageCoder

+ (BOOL)_decryptEncryptedOPACKFrame:(id)frame sessionEncryption:(id)encryption receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error
{
  frameCopy = frame;
  encryptionCopy = encryption;
  if ([frameCopy length] > 0x13)
  {
    bytes = [frameCopy bytes];
    v15 = [frameCopy length];
    v21 = 0;
    v16 = [encryptionCopy decrypt:bytes + 4 length:v15 - 28 additionalAuthData:bytes additionalAuthDataLength:4 authTagData:&v15[bytes - 24] authTagDataLength:16 counterData:&v15[bytes - 8] counterDataLength:8 error:&v21];
    v17 = v21;
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        v13 = 0;
        *error = v18;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = [DataStreamMessageCoder _decodeOPACKFrame:v16 receivedHeader:header receivedPayload:payload error:error];
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:@"DKErrorDomain" code:26 userInfo:0];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)_decodeOPACKFrame:(id)frame receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error
{
  frameCopy = frame;
  bytes = [frameCopy bytes];
  v11 = [frameCopy length];

  if (v11 && (v11 - 1) >= *bytes)
  {
    v13 = *bytes;
    v14 = OPACKDecodeBytes();
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = OPACKDecodeBytes();
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (header)
        {
          v16 = v14;
          *header = v14;
        }

        if (payload)
        {
          v17 = v15;
          *payload = v15;
        }

        v12 = 1;
      }

      else if (error)
      {
        [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else if (error)
    {
      [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:@"DKErrorDomain" code:26 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
    return 0;
  }

  return v12;
}

+ (BOOL)_unpackUnencryptedOPACKFrame:(id)frame receivedHeader:(id *)header receivedPayload:(id *)payload error:(id *)error
{
  frameCopy = frame;
  if ([frameCopy length] > 3)
  {
    v11 = [frameCopy subdataWithRange:{4, objc_msgSend(frameCopy, "length") - 4}];
    v10 = [DataStreamMessageCoder _decodeOPACKFrame:v11 receivedHeader:header receivedPayload:payload error:error];
  }

  else if (error)
  {
    [NSError errorWithDomain:@"DKErrorDomain" code:26 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_encodeOPACKHeader:(id)header payload:(id)payload error:(id *)error
{
  payloadCopy = payload;
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

      if (error)
      {
        v13 = [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
LABEL_11:
        v8 = 0;
        *error = v13;
LABEL_15:

        goto LABEL_16;
      }
    }

    else if (error)
    {
      v13 = sub_100041618(v16);
      goto LABEL_11;
    }

    v8 = 0;
    goto LABEL_15;
  }

  if (error)
  {
    sub_100041618(0);
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_16:

  return v8;
}

+ (id)_encryptEncryptedOPACKHeader:(id)header payload:(id)payload sessionEncryption:(id)encryption error:(id *)error
{
  encryptionCopy = encryption;
  v10 = [DataStreamMessageCoder _encodeOPACKHeader:header payload:payload error:error];
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
    if (error)
    {
      [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
      *error = v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v18[0] = 1;
  v18[1] = BYTE2(v12);
  v18[2] = BYTE1(v12);
  v18[3] = v12;
  v15 = [NSData dataWithBytes:v18 length:4];
  v16 = [encryptionCopy encrypt:v11 additionalAuthenticatedData:v15];

  v14 = [NSMutableData dataWithCapacity:v13];
  [v14 appendBytes:v18 length:4];
  [v14 appendData:v16];

LABEL_7:

  return v14;
}

+ (id)_buildUnencryptedOPACKHeader:(id)header payload:(id)payload error:(id *)error
{
  v6 = [DataStreamMessageCoder _encodeOPACKHeader:header payload:payload error:?];
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
    if (error)
    {
      [NSError errorWithDomain:@"DKErrorDomain" code:27 userInfo:0];
      *error = v9 = 0;
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

+ (BOOL)readHeaderFromPartialData:(id)data frameType:(unsigned __int8 *)type payloadLength:(unint64_t *)length
{
  if (dispatch_data_get_size(data) < 4)
  {
    return 0;
  }

  subrange = dispatch_data_create_subrange(data, 0, 4uLL);
  v12 = 0;
  buffer_ptr = 0;
  v10 = dispatch_data_create_map(subrange, &buffer_ptr, &v12);

  v8 = v10 != 0;
  if (v10)
  {
    if (type)
    {
      *type = *buffer_ptr;
    }

    if (length)
    {
      *length = (*(buffer_ptr + 1) << 16) | (*(buffer_ptr + 2) << 8) | *(buffer_ptr + 3);
    }
  }

  return v8;
}

+ (BOOL)readHeaderFromPartialData:(const char *)data length:(unint64_t)length frameType:(unsigned __int8 *)type payloadLength:(unint64_t *)payloadLength
{
  if (length >= 4)
  {
    if (type)
    {
      *type = *data;
    }

    if (payloadLength)
    {
      *payloadLength = (*(data + 1) << 16) | (*(data + 2) << 8) | *(data + 3);
    }
  }

  return length > 3;
}

+ (id)eventHeaderForProtocol:(id)protocol topic:(id)topic
{
  v9[0] = @"protocol";
  v9[1] = @"event";
  v10[0] = protocol;
  v10[1] = topic;
  topicCopy = topic;
  protocolCopy = protocol;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)requestHeaderForProtocol:(id)protocol topic:(id)topic identifier:(id)identifier
{
  v12[0] = @"protocol";
  v12[1] = @"request";
  v13[0] = protocol;
  v13[1] = topic;
  v12[2] = @"id";
  v13[2] = identifier;
  identifierCopy = identifier;
  topicCopy = topic;
  protocolCopy = protocol;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

@end