@interface CLClientManagerUsageSyncMessage
- (BOOL)isMessageOfType:(id)a3;
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

- (BOOL)isMessageOfType:(id)a3
{
  v4 = [(CLClientManagerUsageSyncMessage *)self messageType];

  return [(NSString *)v4 isEqual:a3];
}

@end