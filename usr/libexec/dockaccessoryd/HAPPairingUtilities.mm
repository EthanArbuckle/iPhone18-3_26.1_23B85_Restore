@interface HAPPairingUtilities
+ (BOOL)parseAddPairingResponse:(id)response error:(id *)error;
+ (BOOL)parseRemovePairingResponse:(id)response error:(id *)error;
+ (id)createAddPairingRequestForPairingIdentity:(id)identity error:(id *)error;
+ (id)createListPairingsRequest:(id *)request;
+ (id)createRemovePairingRequestForPairingIdentity:(id)identity error:(id *)error;
+ (id)parseListPairingsResponse:(id)response error:(id *)error;
@end

@implementation HAPPairingUtilities

+ (id)createAddPairingRequestForPairingIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  TLV8BufferInit();
  appended = sub_100021F5C();
  if (appended)
  {
    goto LABEL_2;
  }

  identifier = [identityCopy identifier];
  v9 = [identifier dataUsingEncoding:4];

  if (!v9)
  {
    v7 = 4294960568;
LABEL_17:

    goto LABEL_6;
  }

  [v9 bytes];
  [v9 length];
  v10 = TLV8BufferAppend();
  if (v10)
  {
    v7 = v10;
    goto LABEL_17;
  }

  publicKey = [identityCopy publicKey];
  data = [publicKey data];
  [data bytes];
  data2 = [publicKey data];
  [data2 length];
  v7 = TLV8BufferAppend();

  if (!v7)
  {
    [identityCopy permissions];
    appended = TLV8BufferAppendUInt64();
    if (appended)
    {
LABEL_2:
      v7 = appended;
      goto LABEL_6;
    }

    v16 = [NSData dataWithBytes:0 length:0];
    if (v16)
    {
      v14 = v16;
      TLV8BufferFree();
      goto LABEL_9;
    }

    v7 = 4294960568;
  }

LABEL_6:
  TLV8BufferFree();
  if (error)
  {
    [NSError errorWithOSStatus:v7];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_9:

  return v14;
}

+ (BOOL)parseAddPairingResponse:(id)response error:(id *)error
{
  v5 = sub_1001F7AD4(response);
  v6 = v5;
  if (error && v5)
  {
    *error = [NSError errorWithOSStatus:v5];
  }

  return v6 == 0;
}

+ (id)createRemovePairingRequestForPairingIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  TLV8BufferInit();
  v6 = sub_100021F5C();
  if (v6)
  {
    goto LABEL_2;
  }

  identifier = [identityCopy identifier];
  v9 = [identifier dataUsingEncoding:4];

  if (!v9)
  {
    v6 = 4294960568;
LABEL_14:

    goto LABEL_2;
  }

  [v9 bytes];
  [v9 length];
  v10 = TLV8BufferAppend();
  if (v10)
  {
    v6 = v10;
    goto LABEL_14;
  }

  v11 = [NSData dataWithBytes:0 length:0];
  if (v11)
  {
    v7 = v11;
    TLV8BufferFree();
    goto LABEL_9;
  }

  v6 = 4294960568;
LABEL_2:
  TLV8BufferFree();
  if (error)
  {
    [NSError errorWithOSStatus:v6];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

+ (id)createListPairingsRequest:(id *)request
{
  TLV8BufferInit();
  v4 = sub_100021F5C();
  if (!v4)
  {
    v6 = [NSData dataWithBytes:0 length:0];
    if (v6)
    {
      v5 = v6;
      TLV8BufferFree();
      goto LABEL_7;
    }

    v4 = 4294960568;
  }

  TLV8BufferFree();
  if (request)
  {
    [NSError errorWithOSStatus:v4];
    *request = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

LABEL_7:

  return v5;
}

+ (BOOL)parseRemovePairingResponse:(id)response error:(id *)error
{
  v5 = sub_1001F7AD4(response);
  v6 = v5;
  if (error && v5)
  {
    *error = [NSError errorWithOSStatus:v5];
  }

  return v6 == 0;
}

+ (id)parseListPairingsResponse:(id)response error:(id *)error
{
  responseCopy = response;
  bytes = [responseCopy bytes];
  [responseCopy length];
  v64 = 0;
  v68 = 0;
  v60 = 0;
  v6 = [NSMutableArray arrayWithCapacity:16];
  v7 = sub_1001F7AD4(responseCopy);
  v15 = v7;
  if (v7)
  {
    if (error)
    {
LABEL_3:
      [NSError errorWithOSStatus:v15];
      *error = v16 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    errorCopy = error;
    while (1)
    {
      sub_1000222D8(v7, v8, v9, v10, v11, v12, v13, v14, v54, errorCopy, v60, v64, v68, bytes);
      v17 = TLV8GetOrCopyCoalesced();
      if (v17)
      {
        v15 = v17;
        v32 = 0;
        v20 = 0;
        goto LABEL_21;
      }

      v18 = [NSString alloc];
      v19 = [NSData dataWithBytes:v69 length:v65];
      v20 = [v18 initWithData:v19 encoding:4];

      v28 = v61;
      if (v61)
      {
        free(v61);
        v61 = 0;
      }

      if (!v20)
      {
        v32 = 0;
        v15 = 4294960568;
        goto LABEL_21;
      }

      sub_1000222D8(v28, v21, v22, v23, v24, v25, v26, v27, v55, v59, v61, v65, v69, v73);
      v29 = TLV8GetOrCopyCoalesced();
      if (v29)
      {
        v15 = v29;
        v32 = 0;
        goto LABEL_21;
      }

      v30 = [HMFPairingKey alloc];
      v31 = [NSData dataWithBytes:v70 length:v66];
      v32 = [v30 initWithPairingKeyData:v31];

      v40 = v62;
      if (v62)
      {
        free(v62);
        v62 = 0;
      }

      if (!v32)
      {
LABEL_26:
        v15 = 4294960596;
        goto LABEL_21;
      }

      sub_1000222D8(v40, v33, v34, v35, v36, v37, v38, v39, v56, v59, v62, v66, v70, v74);
      v41 = TLV8Get();
      if (v41)
      {
        v15 = v41;
        goto LABEL_21;
      }

      if (!v67)
      {
        break;
      }

      v42 = [[HAPPairingIdentity alloc] initWithIdentifier:v20 publicKey:v32 privateKey:0 permissions:*v71 & 1];
      if (!v42)
      {
        goto LABEL_26;
      }

      v43 = v42;
      v44 = [v6 addObject:v42];
      sub_1000222D8(v44, v45, v46, v47, v48, v49, v50, v51, v57, v59, v63, v67, v71, v75);
      v52 = TLV8Get();

      if (v52)
      {
        v16 = [v6 copy];
        goto LABEL_23;
      }
    }

    v15 = 4294960553;
LABEL_21:

    error = v59;
    if (v59)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_23:

  return v16;
}

@end