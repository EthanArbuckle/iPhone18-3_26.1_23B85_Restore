@interface HAPProtocolMessages
+ (BOOL)_parseEmptyResponse:(id)a3 expectedTID:(unsigned __int8)a4 withHeader:(BOOL)a5;
+ (BOOL)parseTokenResponse:(id)a3 expectedTID:(unsigned __int8)a4 withHeader:(BOOL)a5 outToken:(id *)a6 outUUID:(id *)a7;
+ (id)constructInfoRequest:(id)a3 serviceUUID:(id)a4 outTID:(char *)a5;
+ (id)constructRequestHeaderFor:(unint64_t)a3 instanceID:(id)a4 outTID:(char *)a5;
+ (id)constructTokenUpdateRequest:(id)a3 token:(id)a4 outTID:(char *)a5;
+ (id)logCategory;
+ (id)parseInfoResponse:(id)a3 expectedTID:(unsigned __int8)a4 withHeader:(BOOL)a5;
@end

@implementation HAPProtocolMessages

+ (id)constructInfoRequest:(id)a3 serviceUUID:(id)a4 outTID:(char *)a5
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v7 = a4;
  v8 = [HAPProtocolMessages constructRequestHeaderFor:18 instanceID:a3 outTID:a5];
  v11 = 18;
  [v8 appendBytes:&v11 length:2];
  TLV8BufferInit();
  [v7 getUUIDBytes:v12];

  if (TLV8BufferAppend())
  {
    TLV8BufferFree();
    v9 = 0;
  }

  else
  {
    [v8 appendBytes:v13 length:?];
    TLV8BufferFree();
    v9 = v8;
  }

  return v9;
}

+ (id)constructTokenUpdateRequest:(id)a3 token:(id)a4 outTID:(char *)a5
{
  v8 = a3;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v32 = a4;
  v9 = [v32 length];
  v10 = v9 / 0xFFu;
  v11 = v9 % 0xFFu;
  if (v9 % 0xFFu)
  {
    LOBYTE(v10) = v10 + 1;
  }

  v12 = v10;
  v33 = v9 + 2 * v10;
  v31 = v8;
  v30 = [HAPProtocolMessages constructRequestHeaderFor:17 instanceID:v8 outTID:a5];
  [v30 appendBytes:&v33 length:2];
  TLV8BufferInit();
  if (v12)
  {
    v13 = 0;
    v14 = 255 * (v12 - 1);
    v15 = 255 * v12;
    while (1)
    {
      if (v11)
      {
        v16 = v14 == v13;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v17 = v11;
      }

      else
      {
        v17 = -1;
      }

      v18 = v17;
      [v32 getBytes:v38 range:{v13, v17}];
      v19 = a1;
      v20 = sub_10007FAA0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = sub_10007FAFC(v19);
        *buf = 138543618;
        v35 = v21;
        v36 = 1024;
        v37 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}@Adding token TLV length: %u", buf, 0x12u);
      }

      v22 = TLV8BufferAppend();
      if (v22)
      {
        break;
      }

      v13 += 255;
      if (v15 == v13)
      {
        goto LABEL_15;
      }
    }

    v25 = v22;
    TLV8BufferFree();
    v26 = v19;
    v27 = sub_10007FAA0();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = sub_10007FAFC(v26);
      *buf = 138543618;
      v35 = v28;
      v36 = 1024;
      v37 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to construct token update request status: %d", buf, 0x12u);
    }

    v24 = 0;
    v23 = v30;
  }

  else
  {
LABEL_15:
    v23 = v30;
    [v30 appendBytes:v39 length:?];
    TLV8BufferFree();
    v24 = v30;
  }

  return v24;
}

+ (id)constructRequestHeaderFor:(unint64_t)a3 instanceID:(id)a4 outTID:(char *)a5
{
  v15 = a3;
  v6 = a4;
  v7 = [NSMutableData dataWithCapacity:5];
  v14 = 0;
  [v7 appendBytes:&v14 length:1];
  [v7 appendBytes:&v15 length:1];
  v8 = +[HAPBTLETransactionIdentifier randomTransactionIdentifier];
  v9 = [v8 unsignedCharValue];

  v13 = v9;
  [v7 appendBytes:&v13 length:1];
  if (a5)
  {
    *a5 = v13;
  }

  v10 = [v6 unsignedShortValue];

  v12 = v10;
  [v7 appendBytes:&v12 length:2];

  return v7;
}

+ (BOOL)parseTokenResponse:(id)a3 expectedTID:(unsigned __int8)a4 withHeader:(BOOL)a5 outToken:(id *)a6 outUUID:(id *)a7
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v27 = 0;
  v26 = 0;
  v11 = [v10 length];
  v25 = v11;
  if (!v7)
  {
    v20 = v11;
    v12 = v10;
    goto LABEL_8;
  }

  v12 = sub_10001C9B4(v10, &v27 + 1, &v27, &v26);

  if (v12)
  {
    if (v27 != v8)
    {
      v13 = a1;
      v14 = sub_10007FAA0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sub_10007FAFC(v13);
        *buf = 138543874;
        v29 = v15;
        v30 = 1024;
        *v31 = v27;
        *&v31[4] = 1024;
        *&v31[6] = v8;
        v16 = "%{public}@Unexpected TID: 0x%02x expected: 0x%02x";
        v17 = v14;
        v18 = OS_LOG_TYPE_ERROR;
        v19 = 24;
        goto LABEL_18;
      }

LABEL_19:

      goto LABEL_20;
    }

    if (v26)
    {
      v13 = a1;
      v14 = sub_10007FAA0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sub_10007FAFC(v13);
        *buf = 138543618;
        v29 = v15;
        v30 = 1024;
        *v31 = v26;
        v16 = "%{public}@Unexpected Status: 0x%02x";
        v17 = v14;
        v18 = OS_LOG_TYPE_ERROR;
        v19 = 18;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, v19);

        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if ([v12 length] < 2)
    {
      v13 = a1;
      v14 = sub_10007FAA0();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v15 = sub_10007FAFC(v13);
      *buf = 138543362;
      v29 = v15;
      v16 = "%{public}@Insufficinet body length";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 12;
      goto LABEL_18;
    }

    [v12 getBytes:&v25 length:2];
    v24 = [v12 subdataWithRange:{2, objc_msgSend(v12, "length") - 2}];

    v20 = v25;
    v12 = v24;
LABEL_8:
    if ([v12 length] == v20)
    {
      [v12 bytes];
      [v12 length];
      v21 = TLV8GetOrCopyCoalesced();
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = -6743;
      }
    }

    else
    {
      v22 = -6742;
    }

    v13 = a1;
    v14 = sub_10007FAA0();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    v15 = sub_10007FAFC(v13);
    *buf = 138543618;
    v29 = v15;
    v30 = 2048;
    *v31 = v22;
    v16 = "%{public}@Auth response failed status: %ld";
    v17 = v14;
    v18 = OS_LOG_TYPE_DEBUG;
    v19 = 22;
    goto LABEL_18;
  }

  v12 = a1;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = sub_10007FAFC(v12);
    *buf = 138543362;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed parsing headers", buf, 0xCu);
    goto LABEL_19;
  }

LABEL_20:

  return 0;
}

+ (BOOL)_parseEmptyResponse:(id)a3 expectedTID:(unsigned __int8)a4 withHeader:(BOOL)a5
{
  v19 = 0;
  v18 = 0;
  if (a5)
  {
    v5 = a4;
    v7 = sub_10001C9B4(a3, &v19 + 1, &v19, &v18);
    if (!v7)
    {
      v13 = a1;
      v10 = sub_10007FAA0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_10007FAFC(v13);
        *buf = 138543362;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed parsing headers", buf, 0xCu);
      }

      v8 = 0;
      goto LABEL_14;
    }

    v8 = v7;
    if (v19 != v5)
    {
      v15 = a1;
      v10 = sub_10007FAA0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = sub_10007FAFC(v15);
        *buf = 138543874;
        v21 = v16;
        v22 = 1024;
        v23 = v19;
        v24 = 1024;
        v25 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Unexpected TID: 0x%02x expected: 0x%02x", buf, 0x18u);
      }

      goto LABEL_14;
    }

    if (v18)
    {
      v9 = a1;
      v10 = sub_10007FAA0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = sub_10007FAFC(v9);
        *buf = 138543618;
        v21 = v11;
        v22 = 1024;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Unexpected Status: 0x%02x", buf, 0x12u);
      }

LABEL_14:

      v12 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = 1;
LABEL_15:

  return v12;
}

+ (id)parseInfoResponse:(id)a3 expectedTID:(unsigned __int8)a4 withHeader:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v25 = 0;
  v24 = 0;
  v9 = [v8 length];
  v23 = v9;
  if (!v5)
  {
    v17 = v9;
    goto LABEL_8;
  }

  v10 = sub_10001C9B4(v8, &v25 + 1, &v25, &v24);

  if (!v10)
  {
    v10 = a1;
    v11 = sub_10007FAA0();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v12 = sub_10007FAFC(v10);
    *buf = 138543362;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed parsing headers", buf, 0xCu);
    goto LABEL_22;
  }

  if (v25 != v6)
  {
    v11 = a1;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_10007FAFC(v11);
      *buf = 138543874;
      v27 = v20;
      v28 = 1024;
      *v29 = v25;
      *&v29[4] = 1024;
      *&v29[6] = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Unexpected TID: 0x%02x expected: 0x%02x", buf, 0x18u);
    }

    goto LABEL_22;
  }

  if (!v24)
  {
    if ([v10 length] < 2)
    {
      v11 = a1;
      v12 = sub_10007FAA0();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v13 = sub_10007FAFC(v11);
      *buf = 138543362;
      v27 = v13;
      v14 = "%{public}@Insufficinet body length";
      v15 = v12;
      v16 = 12;
      goto LABEL_28;
    }

    [v10 getBytes:&v23 length:2];
    v8 = [v10 subdataWithRange:{2, objc_msgSend(v10, "length") - 2}];

    v17 = v23;
LABEL_8:
    v10 = v8;
    if ([v8 length] == v17)
    {
      [v8 bytes];
      [v8 length];
      v18 = TLV8GetOrCopyCoalesced();
      if (v18)
      {
        v19 = v18;
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v19 = -6743;
      }
    }

    else
    {
      v11 = 0;
      v19 = -6742;
    }

    v12 = a1;
    v13 = sub_10007FAA0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v21 = sub_10007FAFC(v12);
      *buf = 138543618;
      v27 = v21;
      v28 = 1024;
      *v29 = v19;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@Acc Info Response failed status: %d", buf, 0x12u);
    }

    goto LABEL_21;
  }

  v11 = a1;
  v12 = sub_10007FAA0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = sub_10007FAFC(v11);
    *buf = 138543618;
    v27 = v13;
    v28 = 1024;
    *v29 = v24;
    v14 = "%{public}@Unexpected Status: 0x%02x";
    v15 = v12;
    v16 = 18;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
LABEL_21:
  }

LABEL_22:

LABEL_23:

  return 0;
}

+ (id)logCategory
{
  if (qword_1002ACBA8 != -1)
  {
    sub_1001F7AAC();
  }

  v3 = qword_1002ACBB0;

  return v3;
}

@end