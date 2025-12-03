@interface RPCSingleQuery
- (id)getQueryRequest:(id *)request;
- (id)getQueryResponse:(id *)response;
@end

@implementation RPCSingleQuery

- (id)getQueryRequest:(id *)request
{
  request = [(RPCSingleQuery *)self request];

  if (request)
  {
    request2 = [(RPCSingleQuery *)self request];
    request = [(TransparencyGPBMessage *)QueryRequest parseFromData:request2 error:request];
  }

  else
  {
    v7 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-133 description:@"No query request saved for RPC"];
    request2 = v7;
    if (request && v7)
    {
      v8 = v7;
      request = 0;
      *request = request2;
    }
  }

  return request;
}

- (id)getQueryResponse:(id *)response
{
  response = [(RPCSingleQuery *)self response];

  if (!response)
  {
    v12 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-341 description:@"No query response saved for RPC"];
    responseTime2 = v12;
    if (response && v12)
    {
      v13 = v12;
      response = 0;
      *response = responseTime2;
    }

    goto LABEL_12;
  }

  response2 = [(RPCSingleQuery *)self response];
  response = [(TransparencyGPBMessage *)QueryResponse parseFromData:response2 error:response];

  if (response)
  {
    serverHint = [(RPCSingleQuery *)self serverHint];

    if (serverHint)
    {
      serverHint2 = [(RPCSingleQuery *)self serverHint];
      [response setMetadataValue:serverHint2 key:kTransparencyResponseMetadataKeyServerHint];
    }

    if ([(RPCSingleQuery *)self usedReversePush])
    {
      [response setMetadataValue:@"YES" key:@"APS"];
    }

    responseTime = [(RPCSingleQuery *)self responseTime];

    if (responseTime)
    {
      responseTime2 = [(RPCSingleQuery *)self responseTime];
      kt_dateToString = [responseTime2 kt_dateToString];
      [response setMetadataValue:kt_dateToString key:@"ResponseTime"];

LABEL_12:
    }
  }

  return response;
}

@end