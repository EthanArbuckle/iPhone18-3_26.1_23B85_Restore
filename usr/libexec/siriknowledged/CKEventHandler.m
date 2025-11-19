@interface CKEventHandler
- (CKEventHandler)init;
@end

@implementation CKEventHandler

- (CKEventHandler)init
{
  v7.receiver = self;
  v7.super_class = CKEventHandler;
  v2 = [(CKEventHandler *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.siriknowledged.xpc.event_stream.queue", v3);
    event_stream_queue = v2->_event_stream_queue;
    v2->_event_stream_queue = v4;
  }

  return v2;
}

@end