@interface CHRemoteProcessingRequestHandler
- (CHRemoteProcessingRequestHandler)initWithServerQueue:(id)queue lowPriorityQueue:(id)priorityQueue highPriorityQueue:(id)highPriorityQueue;
@end

@implementation CHRemoteProcessingRequestHandler

- (CHRemoteProcessingRequestHandler)initWithServerQueue:(id)queue lowPriorityQueue:(id)priorityQueue highPriorityQueue:(id)highPriorityQueue
{
  v8.receiver = self;
  v8.super_class = CHRemoteProcessingRequestHandler;
  result = [(CHRemoteBasicRequestHandler *)&v8 initWithServerQueue:queue];
  if (result)
  {
    result->_lowPriorityQueue = priorityQueue;
    result->_highPriorityQueue = highPriorityQueue;
  }

  return result;
}

@end