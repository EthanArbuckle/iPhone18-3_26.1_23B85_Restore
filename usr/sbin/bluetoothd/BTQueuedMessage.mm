@interface BTQueuedMessage
- (BTQueuedMessage)initWithCoder:(id)coder;
- (BTQueuedMessage)initWithMsg:(unsigned __int16)msg arguments:(id)arguments;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BTQueuedMessage

- (BTQueuedMessage)initWithMsg:(unsigned __int16)msg arguments:(id)arguments
{
  argumentsCopy = arguments;
  v11.receiver = self;
  v11.super_class = BTQueuedMessage;
  v8 = [(BTQueuedMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_msgId = msg;
    objc_storeStrong(&v8->_arguments, arguments);
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_msgId forKey:@"message"];
  [coderCopy encodeObject:self->_arguments forKey:@"arguments"];
}

- (BTQueuedMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BTQueuedMessage *)self init];
  if (v5)
  {
    v5->_msgId = [coderCopy decodeInt64ForKey:@"message"];
    v6 = [coderCopy decodeObjectForKey:@"arguments"];
    arguments = v5->_arguments;
    v5->_arguments = v6;
  }

  return v5;
}

@end