@interface TransparencyRPCRequestBuilder
+ (id)buildBatchQueryRequest:(id)request application:(id)application error:(id *)error;
+ (id)buildBatchQueryRequests:(id)requests application:(id)application maxURIsPerBatch:(unint64_t)batch error:(id *)error;
+ (id)buildConsistencyProofRequest:(id)request revisions:(id)revisions error:(id *)error;
+ (id)buildPublicKeysRequest:(id)request error:(id *)error;
+ (id)buildQueryRequest:(id)request application:(id)application error:(id *)error;
@end

@implementation TransparencyRPCRequestBuilder

+ (id)buildPublicKeysRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v6 = objc_alloc_init(PublicKeysRequest);
  [(PublicKeysRequest *)v6 setVersion:kTransparencyProtocolVersion];
  v7 = [TransparencyApplication applicationValueForIdentifier:requestCopy];
  v8 = v7;
  if (v7)
  {
    -[PublicKeysRequest setApplication:](v6, "setApplication:", [v7 intValue]);
    v9 = v6;
  }

  else
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-42 description:@"Unknown application %@", requestCopy];
    }

    if (qword_10039CEE8 != -1)
    {
      sub_100260650();
    }

    v10 = qword_10039CEF0;
    if (os_log_type_enabled(qword_10039CEF0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = requestCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unknown application %@", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)buildQueryRequest:(id)request application:(id)application error:(id *)error
{
  applicationCopy = application;
  requestCopy = request;
  v8 = objc_alloc_init(QueryRequest);
  [(QueryRequest *)v8 setVersion:kTransparencyProtocolVersion];
  v9 = [TransparencyApplication applicationValueForIdentifier:applicationCopy];

  -[QueryRequest setApplication:](v8, "setApplication:", [v9 intValue]);
  [(QueryRequest *)v8 setUri:requestCopy];

  return v8;
}

+ (id)buildBatchQueryRequest:(id)request application:(id)application error:(id *)error
{
  requestCopy = request;
  applicationCopy = application;
  v8 = objc_alloc_init(BatchQueryRequest);
  [(BatchQueryRequest *)v8 setVersion:kTransparencyProtocolVersion];
  v9 = [TransparencyApplication applicationValueForIdentifier:applicationCopy];
  -[BatchQueryRequest setApplication:](v8, "setApplication:", [v9 intValue]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = requestCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        uriArray = [(BatchQueryRequest *)v8 uriArray];
        [uriArray addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v8;
}

+ (id)buildBatchQueryRequests:(id)requests application:(id)application maxURIsPerBatch:(unint64_t)batch error:(id *)error
{
  requestsCopy = requests;
  applicationCopy = application;
  v11 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = requestsCopy;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v12 addObject:{*(*(&v22 + 1) + 8 * i), v22}];
        if ([v12 count] >= batch)
        {
          v18 = [TransparencyRPCRequestBuilder buildBatchQueryRequest:v12 application:applicationCopy error:error];
          if (!v18)
          {

            v20 = 0;
            goto LABEL_16;
          }

          v19 = v18;
          [v11 addObject:v18];
          [v12 removeAllObjects];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  if ([v12 count])
  {
    v20 = [TransparencyRPCRequestBuilder buildBatchQueryRequest:v12 application:applicationCopy error:error];
    if (!v20)
    {
      goto LABEL_16;
    }

    [v11 addObject:v20];
  }

  v20 = v11;
LABEL_16:

  return v20;
}

+ (id)buildConsistencyProofRequest:(id)request revisions:(id)revisions error:(id *)error
{
  requestCopy = request;
  revisionsCopy = revisions;
  if ([revisionsCopy count] >= 2)
  {
    v8 = objc_alloc_init(ConsistencyProofRequest);
    [(ConsistencyProofRequest *)v8 setVersion:kTransparencyProtocolVersion];
    v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(revisionsCopy, "count") - 1}];
    [(ConsistencyProofRequest *)v8 setRequestsArray:v9];

    if ([requestCopy isEqualToString:kKTApplicationIdentifierTLT])
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = [TransparencyApplication applicationValueForIdentifier:requestCopy];
    intValue = [v11 intValue];

    [(ConsistencyProofRequest *)v8 setLogType:v10];
    if (intValue)
    {
      [(ConsistencyProofRequest *)v8 setApplication:intValue];
    }

    v13 = [revisionsCopy objectAtIndexedSubscript:0];
    unsignedLongLongValue = [v13 unsignedLongLongValue];

    if ([revisionsCopy count] != 1)
    {
      v15 = 0;
      do
      {
        v16 = objc_alloc_init(ConsistencyProofRequest_LogConsistencyRequest);
        [(ConsistencyProofRequest_LogConsistencyRequest *)v16 setStartRevision:unsignedLongLongValue];
        v17 = [revisionsCopy objectAtIndexedSubscript:++v15];
        -[ConsistencyProofRequest_LogConsistencyRequest setEndRevision:](v16, "setEndRevision:", [v17 unsignedLongLongValue]);

        v18 = [revisionsCopy objectAtIndexedSubscript:v15];
        unsignedLongLongValue = [v18 unsignedLongLongValue];

        requestsArray = [(ConsistencyProofRequest *)v8 requestsArray];
        [requestsArray addObject:v16];
      }

      while (v15 < [revisionsCopy count] - 1);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end