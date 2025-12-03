@interface DKPendingSocketRequest
- (DKPendingSocketRequest)initWithApplicationProtocolName:(id)name completion:(id)completion;
@end

@implementation DKPendingSocketRequest

- (DKPendingSocketRequest)initWithApplicationProtocolName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = DKPendingSocketRequest;
  v9 = [(DKPendingSocketRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationProtocolName, name);
    v11 = objc_retainBlock(completionCopy);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end