@interface DataStreamPendingEvent
- (DataStreamPendingEvent)initWithProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion;
@end

@implementation DataStreamPendingEvent

- (DataStreamPendingEvent)initWithProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion
{
  protocolCopy = protocol;
  topicCopy = topic;
  payloadCopy = payload;
  completionCopy = completion;
  v20.receiver = self;
  v20.super_class = DataStreamPendingEvent;
  v15 = [(DataStreamPendingEvent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_protocol, protocol);
    objc_storeStrong(&v16->_topic, topic);
    v17 = objc_retainBlock(completionCopy);
    completion = v16->_completion;
    v16->_completion = v17;

    objc_storeStrong(&v16->_payload, payload);
  }

  return v16;
}

@end