@interface W5PeerDatabaseRequestPayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerDatabaseRequestPayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerDatabaseRequestPayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerDatabaseRequestPayload)initWithRequest:(id)request
{
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_10009A49C();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "W5PeerDatabaseRequestPayload initWithRequest", &unk_1000CB00F, buf, 2u);
  }

  v51.receiver = self;
  v51.super_class = W5PeerDatabaseRequestPayload;
  v7 = [(W5PeerDatabaseRequestPayload *)&v51 init];
  if (!v7)
  {
    goto LABEL_41;
  }

  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v53 = "[W5PeerDatabaseRequestPayload initWithRequest:]";
    v54 = 2112;
    v55 = requestCopy;
    LODWORD(v46) = 22;
    v45 = buf;
    _os_log_send_and_compose_impl();
  }

  v9 = [requestCopy objectForKey:@"version"];
  v7->_version = v9;
  if (!v9)
  {
LABEL_41:
    v11 = 0;
    v24 = 0;
    goto LABEL_35;
  }

  if (![(NSNumber *)v9 isEqualToNumber:&off_1000EFC20])
  {
    if (![(NSNumber *)v7->_version isEqualToNumber:&off_1000EFC38])
    {
      goto LABEL_30;
    }

    v26 = [requestCopy objectForKey:@"fetchRequestNSDataUncompressed"];

    if (v26)
    {
      v27 = [requestCopy objectForKey:@"fetchRequestNSDataUncompressed"];
      if (v27)
      {
        v11 = v27;
        v28 = sub_100098A04();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v11 length];
          *buf = 136315394;
          v53 = "[W5PeerDatabaseRequestPayload initWithRequest:]";
          v54 = 2048;
          v55 = v29;
          _os_log_send_and_compose_impl();
        }

        v30 = objc_opt_class();
        v31 = objc_opt_class();
        getPairOfBuffersFromPool = [NSSet setWithObjects:v30, v31, objc_opt_class(), 0];
        v49 = 0;
        v32 = [NSKeyedUnarchiver unarchivedObjectOfClasses:getPairOfBuffersFromPool fromData:v11 error:&v49];
        v24 = v49;
        fetchRequest = v7->_fetchRequest;
        v7->_fetchRequest = v32;
        goto LABEL_24;
      }

      goto LABEL_30;
    }

    v40 = [requestCopy objectForKey:@"fetchRequestNSData"];

    if (!v40)
    {
      goto LABEL_30;
    }
  }

  v10 = [requestCopy objectForKey:{@"fetchRequestNSData", v45, v46}];
  if (!v10)
  {
LABEL_30:
    getPairOfBuffersFromPool = sub_100098A04();
    if (os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v53 = "[W5PeerDatabaseRequestPayload initWithRequest:]";
      _os_log_send_and_compose_impl();
    }

    v11 = 0;
    goto LABEL_33;
  }

  v11 = v10;
  p_info = W5PeerSnifferListener.info;
  v13 = +[W5BufferPool sharedW5BufferPool];
  getPairOfBuffersFromPool = [v13 getPairOfBuffersFromPool];

  if ([getPairOfBuffersFromPool count]> 1)
  {
    v47 = requestCopy;
    v48 = v5;
    fetchRequest = [getPairOfBuffersFromPool firstObject];
    lastObject = [getPairOfBuffersFromPool lastObject];
    compression_encode_scratch_buffer_size(COMPRESSION_LZFSE);
    v17 = compression_decode_buffer([fetchRequest mutableBytes], objc_msgSend(fetchRequest, "length"), objc_msgSend(v11, "bytes"), objc_msgSend(v11, "length"), objc_msgSend(lastObject, "mutableBytes"), COMPRESSION_LZFSE);
    v18 = sub_100098A04();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v20 = [v11 length];
        *buf = 136315650;
        v53 = "[W5PeerDatabaseRequestPayload initWithRequest:]";
        v54 = 2048;
        v55 = v17;
        v56 = 2048;
        v57 = v20;
        _os_log_send_and_compose_impl();
      }

      [fetchRequest setLength:v17];
      v21 = objc_opt_class();
      v22 = objc_opt_class();
      v18 = [NSSet setWithObjects:v21, v22, objc_opt_class(), 0];
      v50 = 0;
      v23 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v18 fromData:fetchRequest error:&v50];
      v24 = v50;
      v25 = v7->_fetchRequest;
      v7->_fetchRequest = v23;

      requestCopy = v47;
      p_info = (W5PeerSnifferListener + 32);
    }

    else
    {
      if (v19)
      {
        v33 = [v11 length];
        *buf = 136315650;
        v53 = "[W5PeerDatabaseRequestPayload initWithRequest:]";
        v54 = 2048;
        v55 = 0;
        v56 = 2048;
        v57 = v33;
        _os_log_send_and_compose_impl();
      }

      v24 = 0;
    }

    sharedW5BufferPool = [p_info + 176 sharedW5BufferPool];
    [sharedW5BufferPool returnBufferToPool:fetchRequest];

    sharedW5BufferPool2 = [p_info + 176 sharedW5BufferPool];
    [sharedW5BufferPool2 returnBufferToPool:lastObject];

    v5 = v48;
LABEL_24:

    v36 = v7->_fetchRequest;
    getPairOfBuffersFromPool = sub_100098A04();
    v37 = os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT);
    if (v36)
    {
      if (v37)
      {
        v38 = [v11 length];
        *buf = 136315394;
        v53 = "[W5PeerDatabaseRequestPayload initWithRequest:]";
        v54 = 2048;
        v55 = v38;
        _os_log_send_and_compose_impl();
      }

      v39 = sub_10009A49C();
      if (os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5PeerDatabaseRequestPayload initWithRequest", "Success", buf, 2u);
      }

      goto LABEL_40;
    }

    if (v37)
    {
      *buf = 136315394;
      v53 = "[W5PeerDatabaseRequestPayload initWithRequest:]";
      v54 = 2112;
      v55 = v24;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_34;
  }

  v44 = sub_100098A04();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v53 = "[W5PeerDatabaseRequestPayload initWithRequest:]";
    _os_log_send_and_compose_impl();
  }

LABEL_33:
  v24 = 0;
LABEL_34:

LABEL_35:
  v41 = sub_100098A04();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v53 = "[W5PeerDatabaseRequestPayload initWithRequest:]";
    v54 = 2112;
    v55 = v24;
    _os_log_send_and_compose_impl();
  }

  v39 = sub_10009A49C();
  if (os_signpost_enabled(v39))
  {
    *buf = 138412290;
    v53 = v24;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5PeerDatabaseRequestPayload initWithRequest", "Error=%@", buf, 0xCu);
  }

  v7 = 0;
LABEL_40:

  v42 = v7;
  objc_autoreleasePoolPop(v5);

  return v42;
}

- (id)encode
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = sub_10009A49C();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "W5PeerDatabaseRequestPayload encode", &unk_1000CB00F, buf, 2u);
  }

  if (!self->_version)
  {
    getPairOfBuffersFromPool = sub_100098A04();
    if (os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v40 = "[W5PeerDatabaseRequestPayload encode]";
      _os_log_send_and_compose_impl();
    }

    v8 = 0;
    v9 = 0;
    goto LABEL_31;
  }

  version = [(W5PeerDatabaseRequestPayload *)self version];
  [v4 setObject:version forKey:@"version"];

  fetchRequest = [(W5PeerDatabaseRequestPayload *)self fetchRequest];
  v38 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:fetchRequest requiringSecureCoding:1 error:&v38];
  v9 = v38;

  if (!v8)
  {
    getPairOfBuffersFromPool = sub_100098A04();
    if (os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v40 = "[W5PeerDatabaseRequestPayload encode]";
      v41 = 2112;
      v42 = v9;
      _os_log_send_and_compose_impl();
    }

    v8 = 0;
    goto LABEL_31;
  }

  if ([(NSNumber *)self->_version isEqualToNumber:&off_1000EFC20])
  {
    goto LABEL_6;
  }

  if ([(NSNumber *)self->_version isEqualToNumber:&off_1000EFC38])
  {
    if ([v8 length] >= 0x2801)
    {
LABEL_6:
      v10 = +[W5BufferPool sharedW5BufferPool];
      getPairOfBuffersFromPool = [v10 getPairOfBuffersFromPool];

      if ([getPairOfBuffersFromPool count]<= 1)
      {
        v31 = sub_100098A04();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v40 = "[W5PeerDatabaseRequestPayload encode]";
          _os_log_send_and_compose_impl();
        }

        goto LABEL_31;
      }

      v37 = v9;
      v12 = v3;
      firstObject = [getPairOfBuffersFromPool firstObject];
      lastObject = [getPairOfBuffersFromPool lastObject];
      compression_encode_scratch_buffer_size(COMPRESSION_LZFSE);
      v15 = compression_encode_buffer([firstObject mutableBytes], objc_msgSend(firstObject, "length"), objc_msgSend(v8, "bytes"), objc_msgSend(v8, "length"), objc_msgSend(lastObject, "mutableBytes"), COMPRESSION_LZFSE);
      v16 = sub_100098A04();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          v18 = [v8 length];
          *buf = 136315650;
          v40 = "[W5PeerDatabaseRequestPayload encode]";
          v41 = 2048;
          v42 = v15;
          v43 = 2048;
          v44 = v18;
          LODWORD(v36) = 32;
          v35 = buf;
          _os_log_send_and_compose_impl();
        }

        v16 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [firstObject mutableBytes], v15);
        [v4 setObject:v16 forKey:@"fetchRequestNSData"];
      }

      else if (v17)
      {
        v21 = [v8 length];
        v22 = [firstObject length];
        v23 = [lastObject length];
        *buf = 136315906;
        v40 = "[W5PeerDatabaseRequestPayload encode]";
        v41 = 2048;
        v42 = v21;
        v43 = 2048;
        v44 = v22;
        v45 = 2048;
        v46 = v23;
        LODWORD(v36) = 42;
        v35 = buf;
        _os_log_send_and_compose_impl();
      }

      v24 = +[W5BufferPool sharedW5BufferPool];
      [v24 returnBufferToPool:firstObject];

      v25 = +[W5BufferPool sharedW5BufferPool];
      [v25 returnBufferToPool:lastObject];

      v3 = v12;
      v9 = v37;
      goto LABEL_19;
    }

    v19 = sub_100098A04();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v8 length];
      *buf = 136315394;
      v40 = "[W5PeerDatabaseRequestPayload encode]";
      v41 = 2048;
      v42 = v20;
      LODWORD(v36) = 22;
      v35 = buf;
      _os_log_send_and_compose_impl();
    }

    [v4 setObject:v8 forKey:@"fetchRequestNSDataUncompressed"];
  }

LABEL_19:
  v26 = [v4 objectForKeyedSubscript:{@"fetchRequestNSData", v35, v36}];
  if (v26)
  {

LABEL_22:
    v28 = sub_10009A49C();
    if (!os_signpost_enabled(v28))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v29 = "Success";
    goto LABEL_24;
  }

  v27 = [v4 objectForKeyedSubscript:@"fetchRequestNSDataUncompressed"];

  if (v27)
  {
    goto LABEL_22;
  }

  getPairOfBuffersFromPool = sub_100098A04();
  if (os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v40 = "[W5PeerDatabaseRequestPayload encode]";
    _os_log_send_and_compose_impl();
  }

LABEL_31:

  v28 = sub_10009A49C();
  if (os_signpost_enabled(v28))
  {
    *buf = 0;
    v29 = "Error";
LABEL_24:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5PeerDatabaseRequestPayload encode", v29, buf, 2u);
  }

LABEL_25:

  if (![v4 count])
  {
    v32 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerDatabaseRequestPayload encode]"];
    v33 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v32 userInfo:0];
    v34 = v33;

    objc_exception_throw(v33);
  }

  objc_autoreleasePoolPop(v3);

  return v4;
}

@end