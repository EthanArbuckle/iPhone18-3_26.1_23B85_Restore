@interface APProtobufSerialization
+ (id)deserializeProtobufferData:(id)a3 ofClass:(Class)a4 error:(id *)a5;
+ (id)serializeProtobuffer:(id)a3;
@end

@implementation APProtobufSerialization

+ (id)serializeProtobuffer:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() options];
  v5 = [v4 objectForKeyedSubscript:@"messageIndex"];

  v6 = objc_alloc_init(PBDataWriter);
  [v3 writeTo:v6];

  v7 = [v6 data];
  v11 = bswap32([v5 integerValue]);
  v10 = bswap32([v7 length]);
  v8 = +[NSMutableData data];
  [v8 appendBytes:&v11 length:4];
  [v8 appendBytes:&v10 length:4];
  [v8 appendData:v7];

  return v8;
}

+ (id)deserializeProtobufferData:(id)a3 ofClass:(Class)a4 error:(id *)a5
{
  v7 = a3;
  v8 = v7;
  if (!v7 || [v7 length] <= 7)
  {
    if (a5)
    {
      v9 = [NSString stringWithFormat:@"Protobuffer is nil or less than %u bytes.", 8];
      *a5 = [APLegacyInterfaceError validationErrorWithCode:4500 andReason:v9];
    }

    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v21 = 8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Protobuffer is nil or less than %u bytes.", buf, 8u);
    }

    goto LABEL_8;
  }

  v19 = 0;
  *buf = 0;
  [v8 getBytes:buf range:{0, 4}];
  *buf = bswap32(*buf);
  [v8 getBytes:&v19 range:{4, 4}];
  v13 = bswap32(v19);
  v19 = v13;
  if (v13 + 8 <= [v8 length])
  {
    v14 = [PBDataReader alloc];
    v15 = [v8 subdataWithRange:{8, v13}];
    v16 = [v14 initWithData:v15];

    v17 = objc_alloc_init(a4);
    if ([v17 readFrom:v16])
    {
      v11 = v17;
    }

    else
    {
      if (a5)
      {
        v18 = [NSString stringWithFormat:@"Protocol buffer invalid or of the incorrect type '%@'", a4];
        *a5 = [APLegacyInterfaceError validationErrorWithCode:4501 andReason:v18];
      }

      v11 = 0;
    }
  }

  else
  {
    if (!a5)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }

    [APLegacyInterfaceError validationErrorWithCode:4500 andReason:@"Bad protocol response header for content %@; is the server up-to-date?"];
    *a5 = v11 = 0;
  }

LABEL_9:

  return v11;
}

@end