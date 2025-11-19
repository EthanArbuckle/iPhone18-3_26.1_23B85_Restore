@interface RPCSingleQuery
- (id)getQueryRequest:(id *)a3;
- (id)getQueryResponse:(id *)a3;
@end

@implementation RPCSingleQuery

- (id)getQueryRequest:(id *)a3
{
  v5 = [(RPCSingleQuery *)self request];

  if (v5)
  {
    v6 = [(RPCSingleQuery *)self request];
    v5 = [(TransparencyGPBMessage *)QueryRequest parseFromData:v6 error:a3];
  }

  else
  {
    v7 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-133 description:@"No query request saved for RPC"];
    v6 = v7;
    if (a3 && v7)
    {
      v8 = v7;
      v5 = 0;
      *a3 = v6;
    }
  }

  return v5;
}

- (id)getQueryResponse:(id *)a3
{
  v5 = [(RPCSingleQuery *)self response];

  if (!v5)
  {
    v12 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-341 description:@"No query response saved for RPC"];
    v10 = v12;
    if (a3 && v12)
    {
      v13 = v12;
      v5 = 0;
      *a3 = v10;
    }

    goto LABEL_12;
  }

  v6 = [(RPCSingleQuery *)self response];
  v5 = [(TransparencyGPBMessage *)QueryResponse parseFromData:v6 error:a3];

  if (v5)
  {
    v7 = [(RPCSingleQuery *)self serverHint];

    if (v7)
    {
      v8 = [(RPCSingleQuery *)self serverHint];
      [v5 setMetadataValue:v8 key:kTransparencyResponseMetadataKeyServerHint];
    }

    if ([(RPCSingleQuery *)self usedReversePush])
    {
      [v5 setMetadataValue:@"YES" key:@"APS"];
    }

    v9 = [(RPCSingleQuery *)self responseTime];

    if (v9)
    {
      v10 = [(RPCSingleQuery *)self responseTime];
      v11 = [v10 kt_dateToString];
      [v5 setMetadataValue:v11 key:@"ResponseTime"];

LABEL_12:
    }
  }

  return v5;
}

@end