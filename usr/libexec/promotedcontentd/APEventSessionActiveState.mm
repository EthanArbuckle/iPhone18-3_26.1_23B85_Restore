@interface APEventSessionActiveState
- (APEventSessionActiveState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APEventSessionActiveState

- (APEventSessionActiveState)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = APEventSessionActiveState;
  v5 = [(APEventSessionActiveState *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"sessions"];
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

    [v4 decodeDoubleForKey:@"start"];
    v5->_activeSessionStartTime = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    [a3 encodeDouble:@"start" forKey:self->_activeSessionStartTime];
    activeSessions = self->_activeSessions;
  }

  else
  {
    sub_1003969A4(a3);
    activeSessions = 0;
  }

  [a3 encodeObject:activeSessions forKey:@"sessions"];
}

@end