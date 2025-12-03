@interface GKNetworkRequestInfo
- (GKNetworkRequestInfo)init;
- (id)description;
@end

@implementation GKNetworkRequestInfo

- (GKNetworkRequestInfo)init
{
  v8.receiver = self;
  v8.super_class = GKNetworkRequestInfo;
  v2 = [(GKNetworkRequestInfo *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    currentTasks = v2->_currentTasks;
    v2->_currentTasks = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v5;
  }

  return v2;
}

- (id)description
{
  currentTasks = [(GKNetworkRequestInfo *)self currentTasks];
  pendingRequests = [(GKNetworkRequestInfo *)self pendingRequests];
  v5 = [NSString stringWithFormat:@"The current tasks are: %@ the pending tasks are:%@", currentTasks, pendingRequests];

  return v5;
}

@end