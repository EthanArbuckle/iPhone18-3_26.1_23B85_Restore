@interface CallInfo
- (CallInfo)init;
- (id)callDescription;
- (id)callFlagsDescriptionForFlags:(unsigned __int8)flags;
@end

@implementation CallInfo

- (CallInfo)init
{
  v8.receiver = self;
  v8.super_class = CallInfo;
  v2 = [(CallInfo *)&v8 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;

    *&v2->_sharedCallIdx = 1792;
    v2->_callFlags = 0;
    v5 = +[NSString string];
    callURI = v2->_callURI;
    v2->_callURI = v5;
  }

  return v2;
}

- (id)callDescription
{
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  sharedCallIdx = self->_sharedCallIdx;
  v5 = [(CallInfo *)self tbsCallStateToString:self->_callState];
  v6 = [(CallInfo *)self callFlagsDescriptionForFlags:self->_callFlags];
  v7 = [NSString stringWithFormat:@"CallInfo - identifier : %@, sharedCallIdx : %d, state : %@, callFlags : [%@], callURI : %@", uUIDString, sharedCallIdx, v5, v6, self->_callURI];

  return v7;
}

- (id)callFlagsDescriptionForFlags:(unsigned __int8)flags
{
  v4 = +[NSMutableString string];
  v5 = v4;
  if (flags)
  {
    v6 = @"OUTGOING";
  }

  else
  {
    v6 = @"INCOMING";
  }

  [v4 appendString:v6];
  if ((flags & 2) != 0)
  {
    v7 = @", WITHHELD by SERVER";
  }

  else
  {
    v7 = @", NOT WITHHELD by SERVER";
  }

  [v5 appendString:v7];
  if ((flags & 4) != 0)
  {
    v8 = @", WITHHELD by NETWORK";
  }

  else
  {
    v8 = @", PROVIDED by NETWORK";
  }

  [v5 appendString:v8];

  return v5;
}

@end