@interface BTQueuedMessage
- (BTQueuedMessage)initWithCoder:(id)a3;
- (BTQueuedMessage)initWithMsg:(unsigned __int16)a3 arguments:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BTQueuedMessage

- (BTQueuedMessage)initWithMsg:(unsigned __int16)a3 arguments:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BTQueuedMessage;
  v8 = [(BTQueuedMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_msgId = a3;
    objc_storeStrong(&v8->_arguments, a4);
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_msgId forKey:@"message"];
  [v4 encodeObject:self->_arguments forKey:@"arguments"];
}

- (BTQueuedMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BTQueuedMessage *)self init];
  if (v5)
  {
    v5->_msgId = [v4 decodeInt64ForKey:@"message"];
    v6 = [v4 decodeObjectForKey:@"arguments"];
    arguments = v5->_arguments;
    v5->_arguments = v6;
  }

  return v5;
}

@end