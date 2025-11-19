@interface MIBUSerializer
- (BOOL)_serializeError:(id)a3 withErrorCodeTag:(id)a4 errorDomainTag:(id)a5 errorDescriptionTag:(id)a6 underlyingErrorTag:(id)a7;
- (BOOL)serialize:(id)a3 withValue:(id)a4;
- (MIBUSerializer)init;
- (id)_getInnermostNSError:(id)a3;
- (id)_serializeValue:(id)a3 forTag:(id)a4;
- (id)_toJsonData:(id)a3;
@end

@implementation MIBUSerializer

- (MIBUSerializer)init
{
  v5.receiver = self;
  v5.super_class = MIBUSerializer;
  v2 = [(MIBUSerializer *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(MIBUSerializer *)v2 setData:v3];
  }

  return v2;
}

- (BOOL)serialize:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100037ACC;
  v29 = sub_100037ADC;
  v30 = objc_opt_new();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_100037ACC;
  v23[4] = sub_100037ADC;
  v8 = v7;
  v24 = v8;
  objc_initWeak(&location, self);
  v9 = [v6 count];
  v10 = v9 == [v8 count];
  if (v10)
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100037B4C;
    v18 = &unk_10009DE48;
    objc_copyWeak(&v21, &location);
    v19 = v23;
    v20 = &v25;
    [v6 enumerateObjectsUsingBlock:&v15];
    objc_destroyWeak(&v21);
    v11 = v26[5];
    if (!v11 || ![v11 length])
    {
      v10 = 0;
      goto LABEL_7;
    }

    v12 = [(MIBUSerializer *)self data];
    [v12 appendData:v26[5]];
  }

  else
  {
    v14 = sub_1000601D4(buf);
    v12 = *buf;
    if (v14)
    {
      sub_10006023C(buf, [v8 count], objc_msgSend(v6, "count"), *buf);
    }
  }

LABEL_7:
  objc_destroyWeak(&location);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(&v25, 8);
  return v10;
}

- (id)_getInnermostNSError:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 userInfo];
    v6 = [v5 objectForKey:@"NSUnderlyingError"];

    if (v6)
    {
      do
      {
        v7 = v6;

        v8 = [v7 userInfo];
        v6 = [v8 objectForKey:@"NSUnderlyingError"];

        v4 = v7;
      }

      while (v6);
    }

    else
    {
      v7 = v4;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_toJsonData:(id)a3
{
  v3 = a3;
  if (v3 && [NSJSONSerialization isValidJSONObject:v3])
  {
    v15 = 0;
    v4 = [NSJSONSerialization dataWithJSONObject:v3 options:0 error:&v15];
    v5 = v15;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10006042C();
      }

      v7 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100060454(v5, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v4;
}

- (BOOL)_serializeError:(id)a3 withErrorCodeTag:(id)a4 errorDomainTag:(id)a5 errorDescriptionTag:(id)a6 underlyingErrorTag:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v61 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = [(MIBUSerializer *)self data];
  v18 = [v17 copy];

  v19 = [v12 description];
  v20 = &stru_1000A6A10;
  v60 = v16;
  if (v19)
  {
    v20 = [v12 description];
  }

  v63 = v15;
  v64 = v13;
  v62 = v14;
  if (!v12)
  {
    v72 = v13;
    v37 = [NSArray arrayWithObjects:&v72 count:1, v20];
    v38 = [(MIBUSerializer *)self serialize:v37 withValue:&off_1000A9C08];

    if (v38)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (qword_1000B84A8[0] != -1)
    {
      sub_10006057C();
    }

    v14 = v62;
    v39 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000605A4(v12, v39, v40, v41, v42, v43, v44, v45);
    }

    v29 = 0;
    v46 = 0;
    goto LABEL_32;
  }

  v21 = [v12 domain];

  if (!v21)
  {
    sub_1000604C0(v18, &v65, &v66, &v67);
    v29 = v65;
    v46 = v66;
    v18 = v67;
LABEL_32:
    [(MIBUSerializer *)self setData:v18];
    v47 = 0;
    v28 = v18;
    goto LABEL_30;
  }

  v71[0] = v13;
  v71[1] = v14;
  v71[2] = v15;
  v22 = [NSArray arrayWithObjects:v71 count:3];
  v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 code]);
  v70[0] = v23;
  v24 = [v12 domain];
  v70[1] = v24;
  v70[2] = v20;
  v25 = [NSArray arrayWithObjects:v70 count:3];
  v26 = [(MIBUSerializer *)self serialize:v22 withValue:v25];

  if ((v26 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v27 = [(MIBUSerializer *)self data];
  v28 = [v27 copy];

  v29 = [(MIBUSerializer *)self _getInnermostNSError:v12];
  if (!v29)
  {
    v46 = 0;
LABEL_28:
    v47 = 1;
    goto LABEL_29;
  }

  v30 = +[NSMutableDictionary dictionary];
  v31 = [v29 domain];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = &stru_1000A6A10;
  }

  [v30 setObject:v33 forKeyedSubscript:v62];

  v34 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v29 code]);
  [v30 setObject:v34 forKeyedSubscript:v64];

  v35 = [v29 description];
  if (v35)
  {
    v36 = [v29 description];
    [v30 setObject:v36 forKeyedSubscript:v63];
  }

  else
  {
    [v30 setObject:&stru_1000A6A10 forKeyedSubscript:v63];
  }

  v46 = [(MIBUSerializer *)self _toJsonData:v30];
  if (!v46)
  {

    goto LABEL_28;
  }

  v69 = v61;
  v47 = 1;
  v48 = [NSArray arrayWithObjects:&v69 count:1];
  v68 = v46;
  v49 = [NSArray arrayWithObjects:&v68 count:1];
  v50 = [(MIBUSerializer *)self serialize:v48 withValue:v49];

  if ((v50 & 1) == 0)
  {
    v14 = v62;
    if (qword_1000B84A8[0] != -1)
    {
      sub_100060610();
    }

    v51 = qword_1000B84A0;
    v16 = v60;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100060638(v29, v51, v52, v53, v54, v55, v56, v57);
    }

    v18 = v28;
    goto LABEL_32;
  }

LABEL_29:
  v14 = v62;
  v16 = v60;
LABEL_30:

  objc_autoreleasePoolPop(v16);
  return v47;
}

- (id)_serializeValue:(id)a3 forTag:(id)a4
{
  v5 = a3;
  v6 = a4;
  v30[4] = 0;
  *v30 = [v6 charValue];
  v7 = [MIBUSerializationUtil typeForTag:v6];
  if (v7)
  {
    v8 = [MIBUSerializationUtil maxLengthForTag:v6];
    if (v8)
    {
      switch([v7 unsignedIntValue])
      {
        case 1u:
        case 3u:
        case 4u:
          objc_opt_class();
          if (sub_100038918())
          {
            v9 = v5;
            v10 = [v9 longLongValue];
            goto LABEL_16;
          }

          if (qword_1000B84A8[0] != -1)
          {
            dispatch_once(qword_1000B84A8, &stru_10009DE68);
          }

          v24 = qword_1000B84A0;
          if (!sub_1000203B0())
          {
            break;
          }

          goto LABEL_53;
        case 2u:
          objc_opt_class();
          if (sub_100038918())
          {
            v9 = v5;
            [v9 doubleValue];
            v29 = v11;
            goto LABEL_17;
          }

          if (qword_1000B84A8[0] != -1)
          {
            dispatch_once(qword_1000B84A8, &stru_10009DE88);
          }

          v24 = qword_1000B84A0;
          if (sub_1000203B0())
          {
            goto LABEL_53;
          }

          break;
        case 5u:
          objc_opt_class();
          if (sub_100038918())
          {
            v15 = [v5 dataUsingEncoding:4];
            goto LABEL_20;
          }

          if (qword_1000B84A8[0] != -1)
          {
            dispatch_once(qword_1000B84A8, &stru_10009DEA8);
          }

          v24 = qword_1000B84A0;
          if (sub_1000203B0())
          {
            goto LABEL_53;
          }

          break;
        case 6u:
          objc_opt_class();
          if (sub_100038918())
          {
            v15 = v5;
LABEL_20:
            v13 = v15;
            goto LABEL_21;
          }

          if (qword_1000B84A8[0] != -1)
          {
            dispatch_once(qword_1000B84A8, &stru_10009DEC8);
          }

          v24 = qword_1000B84A0;
          if (!sub_1000203B0())
          {
            break;
          }

          goto LABEL_53;
        case 7u:
          objc_opt_class();
          if (sub_100038918())
          {
            v9 = v5;
            v10 = [v9 unsignedLongLongValue];
LABEL_16:
            v29 = v10;
LABEL_17:
            v13 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v29, [v8 unsignedIntValue]);

LABEL_21:
            *&v30[1] = [v13 length];
            if ([v8 unsignedIntValue] < *&v30[1])
            {
              if (qword_1000B84A8[0] != -1)
              {
                dispatch_once(qword_1000B84A8, &stru_10009DF28);
              }

              v16 = qword_1000B84A0;
              if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
              {
                v20 = v16;
                v21 = [v6 charValue];
                v22 = [v13 length];
                v23 = [v8 unsignedIntValue];
                *buf = 67109890;
                v32 = v21;
                v33 = 2114;
                v34 = v13;
                v35 = 2048;
                v36 = v22;
                v37 = 1024;
                v38 = v23;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Truncating tag 0x%X - %{public}@ with data length %ld to %d", buf, 0x22u);
              }

              v17 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v13 bytes], objc_msgSend(v8, "unsignedIntValue"));

              *&v30[1] = [v17 length];
              v13 = v17;
            }

            v14 = objc_opt_new();
            [v14 appendBytes:v30 length:1];
            [v14 appendBytes:&v30[1] length:4];
            [v14 appendData:v13];
            goto LABEL_28;
          }

          if (qword_1000B84A8[0] != -1)
          {
            dispatch_once(qword_1000B84A8, &stru_10009DEE8);
          }

          v24 = qword_1000B84A0;
          if (sub_1000203B0())
          {
LABEL_53:
            v25 = v24;
            sub_100038930();
            v26 = sub_100038900();
            v27 = sub_1000388E8();
            v28 = sub_1000388A0(v27);
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Tag 0x%X - class %{public}@ != %{public}@", buf, 0x1Cu);

LABEL_32:
          }

          break;
        default:
          if (qword_1000B84A8[0] != -1)
          {
            dispatch_once(qword_1000B84A8, &stru_10009DF08);
          }

          v12 = qword_1000B84A0;
          if (!sub_1000203B0())
          {
            break;
          }

          v24 = v12;
          *buf = 67109120;
          v32 = [v7 unsignedIntValue];
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unrecognized serialization data type: 0x%X", buf, 8u);
          goto LABEL_32;
      }
    }

    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v8 = 0;
  }

LABEL_28:
  v18 = v14;

  return v18;
}

@end