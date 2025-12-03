@interface APEventSessionActiveState
- (APEventSessionActiveState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APEventSessionActiveState

- (APEventSessionActiveState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = APEventSessionActiveState;
  v5 = [(APEventSessionActiveState *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"sessions"];
    if (v7)
    {
      [NSMutableDictionary dictionaryWithDictionary:v7];
    }

    else
    {
      +[NSMutableDictionary dictionary];
    }
    v8 = ;
    activeSessions = v5->_activeSessions;
    v5->_activeSessions = v8;

    [coderCopy decodeDoubleForKey:@"start"];
    v5->_activeSessionStartTime = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    [coder encodeDouble:@"start" forKey:self->_activeSessionStartTime];
    activeSessions = self->_activeSessions;
  }

  else
  {
    sub_1003969A4(coder);
    activeSessions = 0;
  }

  [coder encodeObject:activeSessions forKey:@"sessions"];
}

@end