@interface CLClientManagerUsageSyncMessage
- (BOOL)isMessageOfType:(id)type;
- (void)dealloc;
@end

@implementation CLClientManagerUsageSyncMessage

- (void)dealloc
{
  self->_messageType = 0;

  self->_dataPayload = 0;
  self->_idsOptions = 0;
  v3.receiver = self;
  v3.super_class = CLClientManagerUsageSyncMessage;
  [(CLClientManagerUsageSyncMessage *)&v3 dealloc];
}

- (BOOL)isMessageOfType:(id)type
{
  messageType = [(CLClientManagerUsageSyncMessage *)self messageType];

  return [(NSString *)messageType isEqual:type];
}

@end