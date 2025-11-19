@interface MIBUDeserializer
- (BOOL)_deserializeError:(id *)a3 withErrorCodeTag:(id)a4 errorDomainTag:(id)a5 errorDescriptionTag:(id)a6 underlyingErrorTag:(id)a7;
- (BOOL)_deserializeNextTag:(id *)a3 withData:(id *)a4;
- (MIBUDeserializer)initWithData:(id)a3;
- (id)_valueForTag:(id)a3 withData:(id)a4;
- (id)deserialize;
@end

@implementation MIBUDeserializer

- (MIBUDeserializer)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MIBUDeserializer;
  v5 = [(MIBUDeserializer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MIBUDeserializer *)v5 setData:v4];
    [(MIBUDeserializer *)v6 setPos:0];
    [(MIBUDeserializer *)v6 setTagValDict:0];
  }

  return v6;
}

- (id)deserialize
{
  v3 = [(MIBUDeserializer *)self tagValDict];

  if (v3)
  {
    v4 = [(MIBUDeserializer *)self tagValDict];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v7;
      v9 = v6;
      v13 = v6;
      v14 = v7;
      v10 = [(MIBUDeserializer *)self _deserializeNextTag:&v14 withData:&v13];
      v7 = v14;

      v6 = v13;
      if (!v10)
      {

        v4 = 0;
        goto LABEL_14;
      }

      if (v6 && v7)
      {
        v11 = [(MIBUDeserializer *)self _valueForTag:v7 withData:v6];
        if (v11)
        {
          [v5 setObject:v11 forKey:v7];
        }
      }
    }

    while (v7);
    if ([v5 count])
    {
      [(MIBUDeserializer *)self setTagValDict:v5];
    }

    v4 = v5;
LABEL_14:
  }

  return v4;
}

- (BOOL)_deserializeNextTag:(id *)a3 withData:(id *)a4
{
  v46 = 0;
  v45 = 0;
  v7 = [(MIBUDeserializer *)self pos];
  v8 = [(MIBUDeserializer *)self data];
  v9 = [v8 length];

  if (v7 == v9)
  {
LABEL_19:
    v17 = 0;
    v15 = 0;
    v24 = 0;
    goto LABEL_10;
  }

  v10 = v7 + 5;
  v11 = [(MIBUDeserializer *)self data];
  v12 = [v11 length];

  if (v7 + 5 >= v12)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009B948);
    }

    v29 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      v31 = [(MIBUDeserializer *)self data];
      v32 = [(MIBUDeserializer *)self data];
      *buf = 138543874;
      *v48 = v31;
      *&v48[8] = 2048;
      *&v48[10] = v7;
      *&v48[18] = 2048;
      *&v48[20] = [v32 length];
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Warning: Data %{public}@ Terminating deserialization at %lu for data length: %lu", buf, 0x20u);
    }

    goto LABEL_19;
  }

  v13 = [(MIBUDeserializer *)self data];
  [v13 getBytes:&v46 range:{v7, 1}];

  v14 = [(MIBUDeserializer *)self data];
  [v14 getBytes:&v45 range:{v7 + 1, 4}];

  v15 = [NSNumber numberWithUnsignedChar:v46];
  v16 = [MIBUSerializationUtil maxLengthForTag:v15];
  if (v16)
  {
    v17 = v16;
    v18 = v45;
    if (v18 > [v16 unsignedIntValue])
    {
      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009B988);
      }

      v34 = qword_1000B84A0;
      if (sub_1000203B0())
      {
        v35 = v34;
        v36 = [v15 charValue];
        v37 = v45;
        v38 = [v17 unsignedIntValue];
        *buf = 67109632;
        *v48 = v36;
        *&v48[4] = 1024;
        *&v48[6] = v37;
        *&v48[10] = 1024;
        *&v48[12] = v38;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "0x%X field len: %u is > expected len: %u", buf, 0x14u);
      }
    }

    else
    {
      v19 = v10 + v45;
      v20 = [(MIBUDeserializer *)self data];
      v21 = [v20 length];

      if (v19 <= v21)
      {
        if (v45)
        {
          v22 = [(MIBUDeserializer *)self data];
          v23 = [v22 bytes];
          v24 = [NSData dataWithBytesNoCopy:&v23[v10] length:v45 freeWhenDone:0];

          v10 += v45;
        }

        else
        {
          v24 = 0;
        }

        [(MIBUDeserializer *)self setPos:v10];
LABEL_10:
        v25 = 1;
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009B9A8);
      }

      v39 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        v42 = v45;
        v43 = v39;
        v44 = [(MIBUDeserializer *)self data];
        *buf = 67109634;
        *v48 = v42;
        *&v48[4] = 2048;
        *&v48[6] = v10;
        *&v48[14] = 2114;
        *&v48[16] = v44;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to deserialize %u bytes data at %lu; data %{public}@ too short", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009B968);
    }

    v33 = qword_1000B84A0;
    if (sub_1000203C8())
    {
      v40 = v33;
      v41 = [v15 charValue];
      *buf = 67109120;
      *v48 = v41;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Tag 0x%X is not recognized", buf, 8u);
    }

    v17 = 0;
  }

  v24 = 0;
  v25 = 0;
  if (a3)
  {
LABEL_11:
    v26 = v15;
    *a3 = v15;
  }

LABEL_12:
  if (a4)
  {
    v27 = v24;
    *a4 = v24;
  }

  return v25;
}

- (id)_valueForTag:(id)a3 withData:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [MIBUSerializationUtil typeForTag:v6];
  v8 = [MIBUSerializationUtil maxLengthForTag:v6];

  v9 = 0;
  if (!v7 || !v8)
  {
    goto LABEL_27;
  }

  switch([v7 unsignedIntValue])
  {
    case 1u:
    case 3u:
    case 4u:
      v10 = [v8 unsignedIntValue];
      if (!v5 || (v11 = v10, ![v5 length]))
      {
        if (qword_1000B84A8[0] != -1)
        {
          dispatch_once(qword_1000B84A8, &stru_10009B9C8);
        }

        v44 = qword_1000B84A0;
        if (sub_1000203C8())
        {
          *v49 = 138543362;
          *&v49[4] = v5;
          v45 = "Cannot convert data %{public}@ to number";
          goto LABEL_50;
        }

        goto LABEL_18;
      }

      if (v11 - 9 <= 0xFFFFFFF7)
      {
        if (qword_1000B84A8[0] != -1)
        {
          dispatch_once(qword_1000B84A8, &stru_10009B9E8);
        }

        v46 = qword_1000B84A0;
        if (!sub_1000203B0())
        {
          goto LABEL_18;
        }

        goto LABEL_58;
      }

      v12 = [v5 length];
      if (v12 == v11)
      {
        sub_10002038C(v12, v13, v14, v15, v16, v17, v18, v19, *v49);
        v20 = [NSNumber numberWithLongLong:*v49];
        goto LABEL_26;
      }

      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009BA08);
      }

      v46 = qword_1000B84A0;
      if (!sub_1000203B0())
      {
        goto LABEL_18;
      }

      goto LABEL_66;
    case 2u:
      v21 = [v8 unsignedIntValue];
      if (!v5 || (v22 = v21, ![v5 length]))
      {
        if (qword_1000B84A8[0] != -1)
        {
          dispatch_once(qword_1000B84A8, &stru_10009BA28);
        }

        v44 = qword_1000B84A0;
        if (sub_1000203C8())
        {
          *v49 = 138543362;
          *&v49[4] = v5;
          v45 = "Cannot convert data %{public}@ to number";
          goto LABEL_50;
        }

        goto LABEL_18;
      }

      if (v22 - 9 <= 0xFFFFFFF7)
      {
        if (qword_1000B84A8[0] != -1)
        {
          dispatch_once(qword_1000B84A8, &stru_10009BA48);
        }

        v46 = qword_1000B84A0;
        if (!sub_1000203B0())
        {
          goto LABEL_18;
        }

        goto LABEL_58;
      }

      v23 = [v5 length];
      if (v23 == v22)
      {
        sub_10002038C(v23, v24, v25, v26, v27, v28, v29, v30, *v49);
        v20 = [NSNumber numberWithDouble:*v49];
        goto LABEL_26;
      }

      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009BA68);
      }

      v46 = qword_1000B84A0;
      if (!sub_1000203B0())
      {
        goto LABEL_18;
      }

      goto LABEL_66;
    case 5u:
      v20 = [[NSString alloc] initWithData:v5 encoding:4];
      goto LABEL_26;
    case 6u:
      v20 = v5;
      goto LABEL_26;
    case 7u:
      v32 = [v8 unsignedIntValue];
      if (!v5 || (v33 = v32, ![v5 length]))
      {
        if (qword_1000B84A8[0] != -1)
        {
          dispatch_once(qword_1000B84A8, &stru_10009BA88);
        }

        v44 = qword_1000B84A0;
        if (!sub_1000203C8())
        {
          goto LABEL_18;
        }

        *v49 = 138543362;
        *&v49[4] = v5;
        v45 = "Cannot convert data %{public}@ to number. Data is NULL or empty";
LABEL_50:
        v47 = v44;
        v48 = 12;
        goto LABEL_68;
      }

      if (v33 - 9 <= 0xFFFFFFF7)
      {
        if (qword_1000B84A8[0] != -1)
        {
          dispatch_once(qword_1000B84A8, &stru_10009BAA8);
        }

        v46 = qword_1000B84A0;
        if (!sub_1000203B0())
        {
          goto LABEL_18;
        }

LABEL_58:
        sub_100020340();
        v45 = "Len of num to convert %u cannot be greater than %lu";
LABEL_67:
        v47 = v46;
        v48 = 18;
LABEL_68:
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v45, v49, v48);
LABEL_18:
        v9 = 0;
        goto LABEL_27;
      }

      v34 = [v5 length];
      if (v34 != v33)
      {
        if (qword_1000B84A8[0] != -1)
        {
          dispatch_once(qword_1000B84A8, &stru_10009BAC8);
        }

        v46 = qword_1000B84A0;
        if (!sub_1000203B0())
        {
          goto LABEL_18;
        }

LABEL_66:
        sub_100020374();
        v45 = "Data %{public}@ does not have expected len %u";
        goto LABEL_67;
      }

      sub_10002038C(v34, v35, v36, v37, v38, v39, v40, v41, *v49);
      v20 = [NSNumber numberWithUnsignedLongLong:*v49];
LABEL_26:
      v9 = v20;
LABEL_27:

      return v9;
    default:
      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009BAE8);
      }

      v31 = qword_1000B84A0;
      if (sub_1000203C8())
      {
        v43 = v31;
        *v49 = 67109120;
        *&v49[4] = [v7 unsignedIntValue];
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Unrecognized deserialization data type: 0x%X", v49, 8u);
      }

      goto LABEL_18;
  }
}

- (BOOL)_deserializeError:(id *)a3 withErrorCodeTag:(id)a4 errorDomainTag:(id)a5 errorDescriptionTag:(id)a6 underlyingErrorTag:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_opt_new();
  v18 = [(MIBUDeserializer *)self tagValDict];

  v62 = v15;
  v63 = v13;
  v60 = v16;
  v61 = v14;
  if (!v18)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009BB08);
    }

    v32 = a3;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000203E0(&_mh_execute_header, v37, v38, "Data must be deserialized before deserializing error", v39, v40, v41, v42, v55, v56, v58, a3, v16, v14, v15, v13, 0);
    }

    goto LABEL_35;
  }

  v19 = [(MIBUDeserializer *)self tagValDict];
  v20 = [v19 objectForKey:v13];

  if (!v20)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009BB28);
    }

    v32 = a3;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000203E0(&_mh_execute_header, v43, v44, "Failed to convert error code data to number", v45, v46, v47, v48, v55, v56, v58, a3, v16, v14, v15, v13, 0);
    }

LABEL_35:
    sub_10002035C();
    v20 = 0;
LABEL_42:
    v34 = 0;
    v33 = 0;
    goto LABEL_24;
  }

  if (![v20 longValue])
  {
    sub_10002035C();
    v33 = 0;
    v34 = 1;
    v32 = a3;
    goto LABEL_24;
  }

  v21 = [(MIBUDeserializer *)self tagValDict];
  v7 = [v21 objectForKey:v14];

  if (!v7)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009BB48);
    }

    v32 = a3;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000203E0(&_mh_execute_header, v49, v50, "Failed to convert error domain data to string", v51, v52, v53, v54, v55, v56, v58, a3, v16, v14, v15, v13, 0);
    }

    sub_10002035C();
    goto LABEL_42;
  }

  v22 = [(MIBUDeserializer *)self tagValDict];
  v8 = [v22 objectForKey:v15];

  v23 = [(MIBUDeserializer *)self tagValDict];
  v16 = [v23 objectForKey:v16];

  v24 = &NSDataWithHex_ptr;
  if (v16)
  {
    v25 = [NSJSONSerialization JSONObjectWithData:v16 options:0 error:0];
    v13 = v25;
    if (v25)
    {
      v26 = [v25 objectForKeyedSubscript:v14];
      v27 = [v13 objectForKeyedSubscript:v63];
      v28 = v27;
      v14 = 0;
      v29 = &stru_1000A6A10;
      if (v26 && v27)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v30 = [v13 objectForKeyedSubscript:v62];

          if (v30)
          {
            v29 = [v13 objectForKeyedSubscript:v62];
          }

          else
          {
            v29 = &stru_1000A6A10;
          }

          v31 = [v28 integerValue];
          v64 = NSLocalizedDescriptionKey;
          v65 = v29;
          v57 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          v14 = [NSError errorWithDomain:v26 code:v31 userInfo:v57];
        }

        else
        {
          v14 = 0;
        }
      }

      v24 = &NSDataWithHex_ptr;
      goto LABEL_19;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
LABEL_19:
  v32 = a3;
  if (v8)
  {
    [v17 setObject:v8 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v14)
  {
    [v17 setObject:v14 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v33 = [v24[341] errorWithDomain:v7 code:objc_msgSend(v20 userInfo:{"longValue"), v17}];
  v34 = 1;
LABEL_24:
  if (v32)
  {
    v35 = v33;
    *v32 = v33;
  }

  return v34;
}

@end