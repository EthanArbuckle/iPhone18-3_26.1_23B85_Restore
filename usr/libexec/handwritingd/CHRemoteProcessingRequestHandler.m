@interface CHRemoteProcessingRequestHandler
- (CHRemoteProcessingRequestHandler)initWithServerQueue:(id)a3 lowPriorityQueue:(id)a4 highPriorityQueue:(id)a5;
@end

@implementation CHRemoteProcessingRequestHandler

- (CHRemoteProcessingRequestHandler)initWithServerQueue:(id)a3 lowPriorityQueue:(id)a4 highPriorityQueue:(id)a5
{
  v8.receiver = self;
  v8.super_class = CHRemoteProcessingRequestHandler;
  result = [(CHRemoteBasicRequestHandler *)&v8 initWithServerQueue:a3];
  if (result)
  {
    result->_lowPriorityQueue = a4;
    result->_highPriorityQueue = a5;
  }

  return result;
}

@end