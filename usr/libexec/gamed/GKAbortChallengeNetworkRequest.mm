@interface GKAbortChallengeNetworkRequest
- (BOOL)isDuplicateRequest:(id)a3;
- (id)postBody;
- (void)mergeRequestData:(id)a3;
@end

@implementation GKAbortChallengeNetworkRequest

- (BOOL)isDuplicateRequest:(id)a3
{
  v4 = a3;
  v5 = [(GKChallengeNetworkRequest *)self challenges];
  v6 = [v4 challenges];

  LOBYTE(v4) = [v5 isEqualToSet:v6];
  return v4;
}

- (void)mergeRequestData:(id)a3
{
  v4 = a3;
  v6 = [(GKChallengeNetworkRequest *)self challenges];
  v5 = [v4 challenges];

  [v6 unionSet:v5];
}

- (id)postBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(GKChallengeNetworkRequest *)self challenges];
  v5 = [v4 allObjects];
  [v3 setObject:v5 forKeyedSubscript:@"challenge-ids"];

  return v3;
}

@end