@interface CLLocationStreamingMessage
- (void)dealloc;
@end

@implementation CLLocationStreamingMessage

- (void)dealloc
{
  self->_messageType = 0;

  self->_payload = 0;
  self->_idsOptions = 0;
  v3.receiver = self;
  v3.super_class = CLLocationStreamingMessage;
  [(CLLocationStreamingMessage *)&v3 dealloc];
}

@end