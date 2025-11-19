@interface ALActivityOverrideMsg
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)overrideActionAsString:(int)a3;
- (int)StringAsOverrideAction:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ALActivityOverrideMsg

- (void)dealloc
{
  [(ALActivityOverrideMsg *)self setActivity:0];
  v3.receiver = self;
  v3.super_class = ALActivityOverrideMsg;
  [(ALActivityOverrideMsg *)&v3 dealloc];
}

- (id)overrideActionAsString:(int)a3
{
  if ((a3 + 1) >= 3)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    return *(&off_102457410 + (a3 + 1));
  }
}

- (int)StringAsOverrideAction:(id)a3
{
  if ([a3 isEqualToString:@"kOverrideActionNone"])
  {
    return -1;
  }

  if ([a3 isEqualToString:@"kOverrideActionClear"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kOverrideActionSet"])
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

- (void)writeTo:(id)a3
{
  PBDataWriterWriteInt32Field();
  if (!self->_activity)
  {
    sub_1018966B8();
  }

  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 4) = self->_overrideAction;

  *(v5 + 1) = [(ALCLMotionActivity *)self->_activity copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_overrideAction == *(a3 + 4))
    {
      activity = self->_activity;
      if (activity | *(a3 + 1))
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

- (void)mergeFrom:(id)a3
{
  self->_overrideAction = *(a3 + 4);
  v3 = *(a3 + 1);
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