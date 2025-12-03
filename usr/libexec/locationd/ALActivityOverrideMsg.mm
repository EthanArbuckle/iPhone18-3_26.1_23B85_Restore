@interface ALActivityOverrideMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)overrideActionAsString:(int)string;
- (int)StringAsOverrideAction:(id)action;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ALActivityOverrideMsg

- (void)dealloc
{
  [(ALActivityOverrideMsg *)self setActivity:0];
  v3.receiver = self;
  v3.super_class = ALActivityOverrideMsg;
  [(ALActivityOverrideMsg *)&v3 dealloc];
}

- (id)overrideActionAsString:(int)string
{
  if ((string + 1) >= 3)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return *(&off_102457410 + (string + 1));
  }
}

- (int)StringAsOverrideAction:(id)action
{
  if ([action isEqualToString:@"kOverrideActionNone"])
  {
    return -1;
  }

  if ([action isEqualToString:@"kOverrideActionClear"])
  {
    return 0;
  }

  if ([action isEqualToString:@"kOverrideActionSet"])
  {
    return 1;
  }

  return -1;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALActivityOverrideMsg;
  return [NSString stringWithFormat:@"%@ %@", [(ALActivityOverrideMsg *)&v3 description], [(ALActivityOverrideMsg *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = self->_overrideAction + 1;
  if (v4 >= 3)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_overrideAction];
  }

  else
  {
    v5 = *(&off_102457410 + v4);
  }

  [v3 setObject:v5 forKey:@"overrideAction"];
  activity = self->_activity;
  if (activity)
  {
    [v3 setObject:-[ALCLMotionActivity dictionaryRepresentation](activity forKey:{"dictionaryRepresentation"), @"activity"}];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  PBDataWriterWriteInt32Field();
  if (!self->_activity)
  {
    sub_1018966B8();
  }

  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 4) = self->_overrideAction;

  *(v5 + 1) = [(ALCLMotionActivity *)self->_activity copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_overrideAction == *(equal + 4))
    {
      activity = self->_activity;
      if (activity | *(equal + 1))
      {

        LOBYTE(v5) = [(ALCLMotionActivity *)activity isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)mergeFrom:(id)from
{
  self->_overrideAction = *(from + 4);
  v3 = *(from + 1);
  if (self->_activity)
  {
    if (v3)
    {
      [(ALCLMotionActivity *)self->_activity mergeFrom:?];
    }
  }

  else if (v3)
  {
    [(ALActivityOverrideMsg *)self setActivity:?];
  }
}

@end