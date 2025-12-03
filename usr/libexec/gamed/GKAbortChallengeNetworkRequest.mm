@interface GKAbortChallengeNetworkRequest
- (BOOL)isDuplicateRequest:(id)request;
- (id)postBody;
- (void)mergeRequestData:(id)data;
@end

@implementation GKAbortChallengeNetworkRequest

- (BOOL)isDuplicateRequest:(id)request
{
  requestCopy = request;
  challenges = [(GKChallengeNetworkRequest *)self challenges];
  challenges2 = [requestCopy challenges];

  LOBYTE(requestCopy) = [challenges isEqualToSet:challenges2];
  return requestCopy;
}

- (void)mergeRequestData:(id)data
{
  dataCopy = data;
  challenges = [(GKChallengeNetworkRequest *)self challenges];
  challenges2 = [dataCopy challenges];

  [challenges unionSet:challenges2];
}

- (id)postBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  challenges = [(GKChallengeNetworkRequest *)self challenges];
  allObjects = [challenges allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"challenge-ids"];

  return v3;
}

@end