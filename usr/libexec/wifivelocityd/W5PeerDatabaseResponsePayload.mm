@interface W5PeerDatabaseResponsePayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerDatabaseResponsePayload)initWithRequest:(id)request;
- (id)convertCSVArrayToKeyValueDictArray:(id)array;
- (id)convertKeyValueDictArrayToCSVArray:(id)array;
- (id)encode;
@end

@implementation W5PeerDatabaseResponsePayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerDatabaseResponsePayload)initWithRequest:(id)request
{
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_10009A49C();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "W5PeerDatabaseResponsePayload initWithRequest", &unk_1000CB00F, buf, 2u);
  }

  v64.receiver = self;
  v64.super_class = W5PeerDatabaseResponsePayload;
  v7 = [(W5PeerDatabaseResponsePayload *)&v64 init];
  if (!v7 || (v8 = [requestCopy objectForKey:@"version"], (v7->_version = v8) == 0))
  {
    v23 = 0;
    goto LABEL_46;
  }

  v9 = [requestCopy objectForKey:@"status"];
  v10 = v9;
  if (v9)
  {
    v7->_status = [v9 integerValue];
  }

  context = v5;
  v60 = requestCopy;
  v58 = v10;
  if (![(NSNumber *)v7->_version isEqualToNumber:&off_1000EFBA8])
  {
    if (![(NSNumber *)v7->_version isEqualToNumber:&off_1000EFBC0])
    {
      goto LABEL_51;
    }

    v11 = [requestCopy objectForKey:@"peerDatabaseResultsUncompressed"];

    if (v11)
    {
      v61 = [requestCopy objectForKey:@"peerDatabaseResultsUncompressed"];
      if (v61)
      {
        v56 = v7;
        v12 = sub_100098A04();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v61 length];
          *buf = 136315394;
          v66 = "[W5PeerDatabaseResponsePayload initWithRequest:]";
          v67 = 2048;
          v68 = v13;
          _os_log_send_and_compose_impl();
        }

        v14 = objc_opt_class();
        v15 = objc_opt_class();
        v16 = objc_opt_class();
        v17 = objc_opt_class();
        v18 = objc_opt_class();
        v19 = objc_opt_class();
        v20 = objc_opt_class();
        getPairOfBuffersFromPool = [NSSet setWithObjects:v14, v15, v16, v17, v18, v19, v20, objc_opt_class(), 0];
        v62 = 0;
        v22 = [NSKeyedUnarchiver unarchivedObjectOfClasses:getPairOfBuffersFromPool fromData:v61 error:&v62];
        v23 = v62;
        v7 = v56;
        goto LABEL_26;
      }

      goto LABEL_51;
    }

    v24 = [requestCopy objectForKey:@"peerDatabaseResults"];

    if (!v24)
    {
      goto LABEL_51;
    }
  }

  v61 = [requestCopy objectForKey:@"peerDatabaseResults"];
  if (!v61)
  {
LABEL_51:
    getPairOfBuffersFromPool = sub_100098A04();
    if (!os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 136315138;
    v66 = "[W5PeerDatabaseResponsePayload initWithRequest:]";
    goto LABEL_40;
  }

  if (!compression_decode_scratch_buffer_size(COMPRESSION_LZFSE))
  {
    getPairOfBuffersFromPool = sub_100098A04();
    if (!os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
LABEL_44:
      v23 = 0;
      goto LABEL_45;
    }

    *buf = 136315138;
    v66 = "[W5PeerDatabaseResponsePayload initWithRequest:]";
LABEL_40:
    _os_log_send_and_compose_impl();
    goto LABEL_44;
  }

  v25 = +[W5BufferPool sharedW5BufferPool];
  getPairOfBuffersFromPool = [v25 getPairOfBuffersFromPool];

  if ([getPairOfBuffersFromPool count]<= 1)
  {
    v50 = sub_100098A04();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v66 = "[W5PeerDatabaseResponsePayload initWithRequest:]";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_44;
  }

  firstObject = [getPairOfBuffersFromPool firstObject];
  lastObject = [getPairOfBuffersFromPool lastObject];
  v28 = compression_decode_buffer([firstObject mutableBytes], objc_msgSend(firstObject, "length"), objc_msgSend(v61, "bytes"), objc_msgSend(v61, "length"), objc_msgSend(lastObject, "mutableBytes"), COMPRESSION_LZFSE);
  v29 = sub_100098A04();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v28)
  {
    v57 = v7;
    if (v30)
    {
      v31 = [v61 length];
      *buf = 136315650;
      v66 = "[W5PeerDatabaseResponsePayload initWithRequest:]";
      v67 = 2048;
      v68 = v28;
      v69 = 2048;
      v70 = v31;
      _os_log_send_and_compose_impl();
    }

    [firstObject setLength:v28];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v29 = [NSSet setWithObjects:v32, v33, v34, v35, v36, v37, v38, objc_opt_class(), 0];
    v63 = 0;
    v22 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v29 fromData:firstObject error:&v63];
    v23 = v63;
    v7 = v57;
  }

  else
  {
    if (v30)
    {
      v39 = [v61 length];
      *buf = 136315650;
      v66 = "[W5PeerDatabaseResponsePayload initWithRequest:]";
      v67 = 2048;
      v68 = 0;
      v69 = 2048;
      v70 = v39;
      _os_log_send_and_compose_impl();
    }

    v22 = 0;
    v23 = 0;
  }

  v40 = +[W5BufferPool sharedW5BufferPool];
  [v40 returnBufferToPool:firstObject];

  v41 = +[W5BufferPool sharedW5BufferPool];
  [v41 returnBufferToPool:lastObject];

LABEL_26:
  if (!v22)
  {
    getPairOfBuffersFromPool = sub_100098A04();
    if (os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  v42 = [(W5PeerDatabaseResponsePayload *)v7 convertCSVArrayToKeyValueDictArray:v22];
  fetchedResults = v7->_fetchedResults;
  v7->_fetchedResults = v42;

  v44 = v7->_fetchedResults;
  getPairOfBuffersFromPool = sub_100098A04();
  v45 = os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT);
  if (!v44)
  {
    if (v45)
    {
LABEL_37:
      *buf = 136315394;
      v66 = "[W5PeerDatabaseResponsePayload initWithRequest:]";
      v67 = 2112;
      v68 = v23;
      _os_log_send_and_compose_impl();
    }

LABEL_45:

LABEL_46:
    v51 = sub_100098A04();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v66 = "[W5PeerDatabaseResponsePayload initWithRequest:]";
      v67 = 2112;
      v68 = v23;
      _os_log_send_and_compose_impl();
    }

    v52 = sub_10009A49C();
    if (os_signpost_enabled(v52))
    {
      *buf = 138412290;
      v66 = v23;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5PeerDatabaseResponsePayload initWithRequest", "Error=%@", buf, 0xCu);
    }

    v53 = [NSString stringWithFormat:@"%s: BOOL Expression FALSE", "[W5PeerDatabaseResponsePayload initWithRequest:]"];
    v54 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v53 userInfo:0];
    v55 = v54;

    objc_exception_throw(v54);
  }

  if (v45)
  {
    v46 = [v61 length];
    *buf = 136315394;
    v66 = "[W5PeerDatabaseResponsePayload initWithRequest:]";
    v67 = 2048;
    v68 = v46;
    _os_log_send_and_compose_impl();
  }

  v47 = sub_10009A49C();
  if (os_signpost_enabled(v47))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5PeerDatabaseResponsePayload initWithRequest", "Success", buf, 2u);
  }

  v48 = v7;
  objc_autoreleasePoolPop(context);

  return v48;
}

- (id)convertCSVArrayToKeyValueDictArray:(id)array
{
  arrayCopy = array;
  v21 = +[NSMutableArray array];
  firstObject = [arrayCopy firstObject];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = arrayCopy;
  v23 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v23)
  {
    v4 = 0;
    v22 = *v32;
    do
    {
      v5 = 0;
      v19 = v4;
      v6 = v4;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * v5);
        if (v6)
        {
          v24 = v6;
          v25 = v5;
          v8 = +[NSMutableDictionary dictionary];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          firstObject = firstObject;
          v9 = [firstObject countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = 0;
            v12 = *v28;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v28 != v12)
                {
                  objc_enumerationMutation(firstObject);
                }

                v14 = *(*(&v27 + 1) + 8 * i);
                v15 = [v7 objectAtIndexedSubscript:{v11, v19}];
                v16 = +[NSNull null];

                if (v15 != v16)
                {
                  [v8 setObject:v15 forKeyedSubscript:v14];
                }

                ++v11;
              }

              v10 = [firstObject countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v10);
          }

          [v21 addObject:v8];
          v5 = v25;
          v6 = v24 + 1;
        }

        else
        {
          v8 = firstObject;
          v6 = 1;
          firstObject = v7;
        }

        ++v5;
      }

      while (v5 != v23);
      v17 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      v4 = &v19[v23];
      v23 = v17;
    }

    while (v17);
  }

  return v21;
}

- (id)convertKeyValueDictArrayToCSVArray:(id)array
{
  arrayCopy = array;
  v4 = +[NSMutableSet set];
  v34 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        allKeys = [*(*(&v48 + 1) + 8 * i) allKeys];
        v12 = [NSSet setWithArray:allKeys];
        [v4 unionSet:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v8);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v45;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v5 addObject:*(*(&v44 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v15);
  }

  v30 = v13;

  [v34 addObject:v5];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v6;
  v35 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v35)
  {
    v32 = *v41;
    v33 = v5;
    do
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v40 + 1) + 8 * k);
        v20 = +[NSMutableArray array];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v21 = v5;
        v22 = [v21 countByEnumeratingWithState:&v36 objects:v52 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v37;
          do
          {
            for (m = 0; m != v23; m = m + 1)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v36 + 1) + 8 * m);
              v27 = [v19 objectForKeyedSubscript:v26];

              if (v27)
              {
                [v19 objectForKeyedSubscript:v26];
              }

              else
              {
                +[NSNull null];
              }
              v28 = ;
              [v20 addObject:v28];
            }

            v23 = [v21 countByEnumeratingWithState:&v36 objects:v52 count:16];
          }

          while (v23);
        }

        [v34 addObject:v20];
        v5 = v33;
      }

      v35 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v35);
  }

  return v34;
}

- (id)encode
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = sub_10009A49C();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "W5PeerDatabaseResponsePayload encode", &unk_1000CB00F, buf, 2u);
  }

  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    version = [(W5PeerDatabaseResponsePayload *)self version];
    status = [(W5PeerDatabaseResponsePayload *)self status];
    fetchedResults = [(W5PeerDatabaseResponsePayload *)self fetchedResults];
    *buf = 136315906;
    v59 = "[W5PeerDatabaseResponsePayload encode]";
    v60 = 2112;
    v61 = version;
    v62 = 2048;
    v63 = status;
    v64 = 2112;
    v65 = fetchedResults;
    LODWORD(v54) = 42;
    v51 = buf;
    _os_log_send_and_compose_impl();
  }

  version2 = [(W5PeerDatabaseResponsePayload *)self version];

  if (!version2)
  {
    getPairOfBuffersFromPool = sub_100098A04();
    if (!os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136315138;
    v59 = "[W5PeerDatabaseResponsePayload encode]";
    LODWORD(v54) = 12;
LABEL_55:
    _os_log_send_and_compose_impl();
    goto LABEL_56;
  }

  version3 = [(W5PeerDatabaseResponsePayload *)self version];
  [v4 setObject:version3 forKey:@"version"];

  if (![(W5PeerDatabaseResponsePayload *)self status])
  {
    getPairOfBuffersFromPool = sub_100098A04();
    if (!os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136315138;
    v59 = "[W5PeerDatabaseResponsePayload encode]";
    LODWORD(v54) = 12;
    goto LABEL_55;
  }

  v12 = [NSNumber numberWithInteger:[(W5PeerDatabaseResponsePayload *)self status]];
  [v4 setObject:v12 forKey:@"status"];

  fetchedResults2 = [(W5PeerDatabaseResponsePayload *)self fetchedResults];

  if (!fetchedResults2)
  {
    v14 = sub_100098A04();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v59 = "[W5PeerDatabaseResponsePayload encode]";
      LODWORD(v54) = 12;
      v51 = buf;
      _os_log_send_and_compose_impl();
    }
  }

  v15 = [(W5PeerDatabaseResponsePayload *)self fetchedResults:v51];

  if (!v15)
  {
    getPairOfBuffersFromPool = sub_100098A04();
    if (!os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136315138;
    v59 = "[W5PeerDatabaseResponsePayload encode]";
    LODWORD(v54) = 12;
    goto LABEL_55;
  }

  fetchedResults3 = [(W5PeerDatabaseResponsePayload *)self fetchedResults];
  v17 = [(W5PeerDatabaseResponsePayload *)self convertKeyValueDictArrayToCSVArray:fetchedResults3];

  fetchedResults4 = [(W5PeerDatabaseResponsePayload *)self fetchedResults];
  if (fetchedResults4)
  {
    v19 = fetchedResults4;
    if (v17)
    {
      v20 = [v17 count];

      if (v20)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v21 = sub_100098A04();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      fetchedResults = self->_fetchedResults;
      *buf = 136315650;
      v59 = "[W5PeerDatabaseResponsePayload encode]";
      v60 = 2112;
      v61 = v17;
      v62 = 2112;
      v63 = fetchedResults;
      LODWORD(v54) = 32;
      v52 = buf;
      _os_log_send_and_compose_impl();
    }
  }

  if (!v17)
  {
    getPairOfBuffersFromPool = sub_100098A04();
    if (!os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136315138;
    v59 = "[W5PeerDatabaseResponsePayload encode]";
    LODWORD(v54) = 12;
    goto LABEL_55;
  }

LABEL_21:
  v57 = 0;
  v23 = [NSKeyedArchiver archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v57, v52, v54];
  v24 = v57;
  if (!(v23 | v24))
  {
    getPairOfBuffersFromPool = sub_100098A04();
    if (os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v59 = "[W5PeerDatabaseResponsePayload encode]";
      v60 = 2112;
      v61 = 0;
      LODWORD(v54) = 22;
      goto LABEL_55;
    }

LABEL_56:

    v45 = sub_10009A49C();
    if (os_signpost_enabled(v45))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5PeerDatabaseResponsePayload encode", "Error", buf, 2u);
    }

    v46 = NSInternalInconsistencyException;
    [NSString stringWithFormat:@"%s: BOOL Expression FALSE", "[W5PeerDatabaseResponsePayload encode]", v54];
    v47 = LABEL_59:;
    v48 = [NSException exceptionWithName:v46 reason:v47 userInfo:0];
    v49 = v48;

    objc_exception_throw(v48);
  }

  v25 = v24;
  if ([(NSNumber *)self->_version isEqualToNumber:&off_1000EFBA8])
  {
    goto LABEL_23;
  }

  if (![(NSNumber *)self->_version isEqualToNumber:&off_1000EFBC0])
  {
    goto LABEL_36;
  }

  if ([v23 length] >= 0x2801)
  {
LABEL_23:
    v26 = +[W5BufferPool sharedW5BufferPool];
    getPairOfBuffersFromPool = [v26 getPairOfBuffersFromPool];

    if ([getPairOfBuffersFromPool count]<= 1)
    {
      v50 = sub_100098A04();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v59 = "[W5PeerDatabaseResponsePayload encode]";
        LODWORD(v54) = 12;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_56;
    }

    v56 = v3;
    firstObject = [getPairOfBuffersFromPool firstObject];
    v55 = getPairOfBuffersFromPool;
    lastObject = [getPairOfBuffersFromPool lastObject];
    compression_encode_scratch_buffer_size(COMPRESSION_LZFSE);
    v30 = compression_encode_buffer([firstObject mutableBytes], objc_msgSend(firstObject, "length"), objc_msgSend(v23, "bytes"), objc_msgSend(v23, "length"), objc_msgSend(lastObject, "mutableBytes"), COMPRESSION_LZFSE);
    v31 = sub_100098A04();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (v32)
      {
        v33 = [v23 length];
        *buf = 136315650;
        v59 = "[W5PeerDatabaseResponsePayload encode]";
        v60 = 2048;
        v61 = v30;
        v62 = 2048;
        v63 = v33;
        LODWORD(v54) = 32;
        v53 = buf;
        _os_log_send_and_compose_impl();
      }

      v31 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [firstObject mutableBytes], v30);
      [v4 setObject:v31 forKey:@"peerDatabaseResults"];
    }

    else if (v32)
    {
      v36 = [v23 length];
      v37 = [firstObject length];
      v38 = [lastObject length];
      *buf = 136315906;
      v59 = "[W5PeerDatabaseResponsePayload encode]";
      v60 = 2048;
      v61 = v36;
      v62 = 2048;
      v63 = v37;
      v64 = 2048;
      v65 = v38;
      LODWORD(v54) = 42;
      v53 = buf;
      _os_log_send_and_compose_impl();
    }

    v39 = +[W5BufferPool sharedW5BufferPool];
    [v39 returnBufferToPool:firstObject];

    v40 = +[W5BufferPool sharedW5BufferPool];
    [v40 returnBufferToPool:lastObject];

    v3 = v56;
  }

  else
  {
    v34 = sub_100098A04();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v23 length];
      *buf = 136315394;
      v59 = "[W5PeerDatabaseResponsePayload encode]";
      v60 = 2048;
      v61 = v35;
      LODWORD(v54) = 22;
      v53 = buf;
      _os_log_send_and_compose_impl();
    }

    [v4 setObject:v23 forKey:@"peerDatabaseResultsUncompressed"];
  }

LABEL_36:
  v41 = [v4 objectForKeyedSubscript:{@"peerDatabaseResults", v53, v54}];
  if (v41)
  {

    goto LABEL_39;
  }

  v42 = [v4 objectForKeyedSubscript:@"peerDatabaseResultsUncompressed"];

  if (!v42)
  {
    getPairOfBuffersFromPool = sub_100098A04();
    if (!os_log_type_enabled(getPairOfBuffersFromPool, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136315138;
    v59 = "[W5PeerDatabaseResponsePayload encode]";
    LODWORD(v54) = 12;
    goto LABEL_55;
  }

LABEL_39:
  v43 = sub_10009A49C();
  if (os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5PeerDatabaseResponsePayload encode", "Success", buf, 2u);
  }

  if (![v4 count])
  {
    v46 = NSInternalInconsistencyException;
    [NSString stringWithFormat:@"%s: empty payload", "[W5PeerDatabaseResponsePayload encode]", v54];
    goto LABEL_59;
  }

  objc_autoreleasePoolPop(v3);

  return v4;
}

@end