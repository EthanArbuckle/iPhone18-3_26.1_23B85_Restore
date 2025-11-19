@interface W5PeerGenericResponsePayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerGenericResponsePayload)initWithRequest:(id)a3;
- (id)__allowedClasses;
- (id)encode;
@end

@implementation W5PeerGenericResponsePayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (id)__allowedClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:10];

  return v2;
}

- (W5PeerGenericResponsePayload)initWithRequest:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = W5PeerGenericResponsePayload;
  v5 = [(W5PeerGenericResponsePayload *)&v16 init];
  if (!v5)
  {
    v10 = 0;
    v6 = 0;
LABEL_10:

    v14 = sub_100098A04();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = "[W5PeerGenericResponsePayload initWithRequest:]";
      v19 = 2080;
      v20 = "W5PeerGenericResponsePayload.m";
      v21 = 1024;
      v22 = 43;
      _os_log_send_and_compose_impl();
    }

    v5 = 0;
    goto LABEL_8;
  }

  v6 = [v4 objectForKey:@"payload"];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v7 = [(W5PeerGenericResponsePayload *)v5 __allowedClasses];
  v8 = [NSSet setWithArray:v7];
  v15 = 0;
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:&v15];
  v10 = v15;
  info = v5->_info;
  v5->_info = v9;

  if (!v5->_info)
  {
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = "[W5PeerGenericResponsePayload initWithRequest:]";
      v19 = 2080;
      v20 = "W5PeerGenericResponsePayload.m";
      v21 = 1024;
      v22 = 35;
      v23 = 2114;
      v24 = v10;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_10;
  }

LABEL_8:

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(W5PeerGenericResponsePayload *)self info];

  if (v4)
  {
    v5 = [(W5PeerGenericResponsePayload *)self info];
    v9 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v9];
    v7 = v9;

    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"payload"];
    }

    else
    {
      v6 = sub_100098A04();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = "[W5PeerGenericResponsePayload encode]";
        v12 = 2080;
        v13 = "W5PeerGenericResponsePayload.m";
        v14 = 1024;
        v15 = 55;
        v16 = 2114;
        v17 = v7;
        _os_log_send_and_compose_impl();
      }
    }
  }

  return v3;
}

@end