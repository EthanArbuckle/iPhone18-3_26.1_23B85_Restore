@interface W5PeerSnifferRequestPayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerSnifferRequestPayload)initWithRequest:(id)a3;
- (id)encode;
@end

@implementation W5PeerSnifferRequestPayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (W5PeerSnifferRequestPayload)initWithRequest:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = W5PeerSnifferRequestPayload;
  v5 = [(W5PeerSnifferRequestPayload *)&v45 init];
  if (v5)
  {
    v6 = sub_100098A04();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v58 = 136315906;
      v59 = "[W5PeerSnifferRequestPayload initWithRequest:]";
      v60 = 2080;
      v61 = "W5PeerSnifferRequestPayload.m";
      v62 = 1024;
      v63 = 36;
      v64 = 2114;
      v65 = v4;
      _os_log_send_and_compose_impl();
    }

    v7 = [v4 objectForKey:@"version"];
    v5->_version = v7;
    if (v7)
    {
      v8 = [v4 objectForKey:@"type"];
      v9 = [NSSet setWithObjects:objc_opt_class(), 0];
      v44 = 0;
      v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v8 error:&v44];
      v11 = v44;
      v5->_type = [v10 integerValue];

      type = v5->_type;
      if (type != 1)
      {
        if (type != 2)
        {
          if (type)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
LABEL_16:
            v24 = [v4 objectForKey:@"noAutoStop"];
            v5->_noAutoStop = [v24 BOOLValue];

            if (!v5->_noAutoStop)
            {
              v26 = 0;
              goto LABEL_20;
            }

            v25 = [v4 objectForKey:@"rorationInterval"];
            if (v25)
            {
              v26 = v25;
              v5->_rotationInterval = [v25 intValue];
              goto LABEL_20;
            }

            v38 = [NSError alloc];
            v46 = NSLocalizedDescriptionKey;
            v41 = +[NSBundle mainBundle];
            v42 = [v41 localizedStringForKey:@"nil rotation interval" value:&stru_1000E4788 table:0];
            v47 = v42;
            v30 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
            v32 = [v38 initWithDomain:@"com.apple.wifivelocty.sniffer" code:-1 userInfo:v30];

            goto LABEL_29;
          }

          v31 = [NSError alloc];
          v54 = NSLocalizedDescriptionKey;
          v41 = +[NSBundle mainBundle];
          v42 = [v41 localizedStringForKey:@"nil type" value:&stru_1000E4788 table:0];
          v55 = v42;
          v30 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          v32 = [v31 initWithDomain:@"com.apple.wifivelocty.sniffer" code:-2 userInfo:v30];

          v13 = 0;
LABEL_24:
          v14 = 0;
          v15 = 0;
LABEL_29:
          v11 = v32;
          v29 = v41;
          goto LABEL_30;
        }

        v13 = [v4 objectForKey:@"uuid"];
        if (!v13)
        {
          v40 = [NSError alloc];
          v48 = NSLocalizedDescriptionKey;
          v41 = +[NSBundle mainBundle];
          v42 = [v41 localizedStringForKey:@"nil UUID" value:&stru_1000E4788 table:0];
          v49 = v42;
          v30 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v32 = [v40 initWithDomain:@"com.apple.wifivelocty.sniffer" code:-1 userInfo:v30];

          goto LABEL_24;
        }

        v14 = 0;
        v15 = 0;
LABEL_15:
        v22 = [[NSUUID alloc] initWithUUIDString:v13];
        uuid = v5->_uuid;
        v5->_uuid = v22;

        goto LABEL_16;
      }

      v15 = [v4 objectForKey:@"channels"];
      v16 = objc_opt_class();
      v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
      v43 = v11;
      v18 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v17 fromData:v15 error:&v43];
      v19 = v43;

      channels = v5->_channels;
      v5->_channels = v18;

      if (v5->_channels)
      {
        v21 = [v4 objectForKey:@"duration"];
        if (v21)
        {
          v14 = v21;
          v5->_duration = [v21 longValue];
          v13 = [v4 objectForKey:@"uuid"];
          v11 = v19;
          if (!v13)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        v37 = [NSError alloc];
        v50 = NSLocalizedDescriptionKey;
        v34 = +[NSBundle mainBundle];
        v42 = [v34 localizedStringForKey:@"nil duration" value:&stru_1000E4788 table:0];
        v51 = v42;
        v30 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v35 = v37;
        v36 = -1;
      }

      else
      {
        v33 = [NSError alloc];
        v52 = NSLocalizedDescriptionKey;
        v34 = +[NSBundle mainBundle];
        v42 = [v34 localizedStringForKey:@"nil channel" value:&stru_1000E4788 table:0];
        v53 = v42;
        v30 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v35 = v33;
        v36 = -3;
      }

      v11 = [v35 initWithDomain:@"com.apple.wifivelocty.sniffer" code:v36 userInfo:v30];

      v29 = v34;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v28 = [NSError alloc];
      v56 = NSLocalizedDescriptionKey;
      v29 = +[NSBundle mainBundle];
      v42 = [v29 localizedStringForKey:@"nil version" value:&stru_1000E4788 table:0];
      v57 = v42;
      v30 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v11 = [v28 initWithDomain:@"com.apple.wifivelocty.sniffer" code:-1 userInfo:v30];
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = 0;
    }

LABEL_30:

    goto LABEL_31;
  }

  v13 = 0;
  v11 = 0;
  v14 = 0;
  v15 = 0;
  v8 = 0;
LABEL_31:

  v39 = sub_100098A04();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v58 = 136315906;
    v59 = "[W5PeerSnifferRequestPayload initWithRequest:]";
    v60 = 2080;
    v61 = "W5PeerSnifferRequestPayload.m";
    v62 = 1024;
    v63 = 77;
    v64 = 2114;
    v65 = v11;
    _os_log_send_and_compose_impl();
  }

  v26 = 0;
  v5 = 0;
LABEL_20:

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(W5PeerSnifferRequestPayload *)self version];

  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = [(W5PeerSnifferRequestPayload *)self version];
  [v3 setObject:v5 forKey:@"version"];

  if (![(W5PeerSnifferRequestPayload *)self type])
  {
    v4 = 0;
LABEL_22:
    v9 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v6 = [[NSNumber alloc] initWithInteger:{-[W5PeerSnifferRequestPayload type](self, "type")}];
  v27 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v27];
  v7 = v27;

  [v3 setObject:v4 forKey:@"type"];
  if ([(W5PeerSnifferRequestPayload *)self type]!= 1)
  {
    v9 = 0;
    v10 = v7;
    goto LABEL_8;
  }

  v8 = [(W5PeerSnifferRequestPayload *)self channels];
  v26 = v7;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v26];
  v10 = v26;

  if (v9)
  {
    [v3 setObject:v9 forKey:@"channels"];
    [(W5PeerSnifferRequestPayload *)self duration];
    if (v11 == 0.0)
    {
      goto LABEL_17;
    }

    [(W5PeerSnifferRequestPayload *)self duration];
    v12 = [NSNumber numberWithDouble:?];
    [v3 setObject:v12 forKey:@"duration"];

LABEL_8:
    v13 = [(W5PeerSnifferRequestPayload *)self type];
    v14 = [(W5PeerSnifferRequestPayload *)self uuid];
    v15 = v14;
    if (v13 == 2)
    {

      if (!v15)
      {
        goto LABEL_17;
      }
    }

    else
    {

      if (!v15)
      {
        goto LABEL_13;
      }
    }

    v16 = [(W5PeerSnifferRequestPayload *)self uuid];
    v17 = [v16 UUIDString];
    [v3 setObject:v17 forKey:@"uuid"];

LABEL_13:
    if ([(W5PeerSnifferRequestPayload *)self noAutoStop])
    {
      [v3 setObject:&__kCFBooleanTrue forKey:@"noAutoStop"];
      if ([(W5PeerSnifferRequestPayload *)self rotationInterval])
      {
        v18 = [NSNumber numberWithInteger:[(W5PeerSnifferRequestPayload *)self rotationInterval]];
        [v3 setObject:v18 forKey:@"rorationInterval"];
      }
    }

    else
    {
      [v3 setObject:&__kCFBooleanFalse forKey:@"noAutoStop"];
    }

    goto LABEL_17;
  }

  v20 = sub_100098A04();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315906;
    v29 = "[W5PeerSnifferRequestPayload encode]";
    v30 = 2080;
    v31 = "W5PeerSnifferRequestPayload.m";
    v32 = 1024;
    v33 = 102;
    v34 = 2114;
    v35 = v10;
    LODWORD(v25) = 38;
    v24 = &v28;
    _os_log_send_and_compose_impl();
  }

  v9 = 0;
LABEL_17:
  if (![v3 count])
  {
    v21 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerSnifferRequestPayload encode]"];
    v22 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v21 userInfo:0];
    v23 = v22;

    objc_exception_throw(v22);
  }

  return v3;
}

@end