@interface TransparencyRPCRequestBuilder
+ (id)buildBatchQueryRequest:(id)a3 application:(id)a4 error:(id *)a5;
+ (id)buildBatchQueryRequests:(id)a3 application:(id)a4 maxURIsPerBatch:(unint64_t)a5 error:(id *)a6;
+ (id)buildConsistencyProofRequest:(id)a3 revisions:(id)a4 error:(id *)a5;
+ (id)buildPublicKeysRequest:(id)a3 error:(id *)a4;
+ (id)buildQueryRequest:(id)a3 application:(id)a4 error:(id *)a5;
@end

@implementation TransparencyRPCRequestBuilder

+ (id)buildPublicKeysRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PublicKeysRequest);
  [(PublicKeysRequest *)v6 setVersion:kTransparencyProtocolVersion];
  v7 = [TransparencyApplication applicationValueForIdentifier:v5];
  v8 = v7;
  if (v7)
  {
    -[PublicKeysRequest setApplication:](v6, "setApplication:", [v7 intValue]);
    v9 = v6;
  }

  else
  {
    if (a4)
    {
      *a4 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-42 description:@"Unknown application %@", v5];
    }

    if (qword_10039CEE8 != -1)
    {
      sub_100260650();
    }

    v10 = qword_10039CEF0;
    if (os_log_type_enabled(qword_10039CEF0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unknown application %@", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)buildQueryRequest:(id)a3 application:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(QueryRequest);
  [(QueryRequest *)v8 setVersion:kTransparencyProtocolVersion];
  v9 = [TransparencyApplication applicationValueForIdentifier:v6];

  -[QueryRequest setApplication:](v8, "setApplication:", [v9 intValue]);
  [(QueryRequest *)v8 setUri:v7];

  return v8;
}

+ (id)buildBatchQueryRequest:(id)a3 application:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(BatchQueryRequest);
  [(BatchQueryRequest *)v8 setVersion:kTransparencyProtocolVersion];
  v9 = [TransparencyApplication applicationValueForIdentifier:v7];
  -[BatchQueryRequest setApplication:](v8, "setApplication:", [v9 intValue]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v6;
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
        v16 = [(BatchQueryRequest *)v8 uriArray];
        [v16 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v8;
}

+ (id)buildBatchQueryRequests:(id)a3 application:(id)a4 maxURIsPerBatch:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v9;
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
        if ([v12 count] >= a5)
        {
          v18 = [TransparencyRPCRequestBuilder buildBatchQueryRequest:v12 application:v10 error:a6];
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
    v20 = [TransparencyRPCRequestBuilder buildBatchQueryRequest:v12 application:v10 error:a6];
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

+ (id)buildConsistencyProofRequest:(id)a3 revisions:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  if ([v7 count] >= 2)
  {
    v8 = objc_alloc_init(ConsistencyProofRequest);
    [(ConsistencyProofRequest *)v8 setVersion:kTransparencyProtocolVersion];
    v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count") - 1}];
    [(ConsistencyProofRequest *)v8 setRequestsArray:v9];

    if ([v6 isEqualToString:kKTApplicationIdentifierTLT])
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = [TransparencyApplication applicationValueForIdentifier:v6];
    v12 = [v11 intValue];

    [(ConsistencyProofRequest *)v8 setLogType:v10];
    if (v12)
    {
      [(ConsistencyProofRequest *)v8 setApplication:v12];
    }

    v13 = [v7 objectAtIndexedSubscript:0];
    v14 = [v13 unsignedLongLongValue];

    if ([v7 count] != 1)
    {
      v15 = 0;
      do
      {
        v16 = objc_alloc_init(ConsistencyProofRequest_LogConsistencyRequest);
        [(ConsistencyProofRequest_LogConsistencyRequest *)v16 setStartRevision:v14];
        v17 = [v7 objectAtIndexedSubscript:++v15];
        -[ConsistencyProofRequest_LogConsistencyRequest setEndRevision:](v16, "setEndRevision:", [v17 unsignedLongLongValue]);

        v18 = [v7 objectAtIndexedSubscript:v15];
        v14 = [v18 unsignedLongLongValue];

        v19 = [(ConsistencyProofRequest *)v8 requestsArray];
        [v19 addObject:v16];
      }

      while (v15 < [v7 count] - 1);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end