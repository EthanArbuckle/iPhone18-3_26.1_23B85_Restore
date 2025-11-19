@interface NMSMessagePersistentContext
- (NMSMessagePersistentContext)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NMSMessagePersistentContext

- (NMSMessagePersistentContext)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NMSMessagePersistentContext;
  v5 = [(NMSMessagePersistentContext *)&v16 init];
  if (v5)
  {
    v5->_messageID = [v4 decodeIntegerForKey:@"m"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    idsIdentifier = v5->_idsIdentifier;
    v5->_idsIdentifier = v6;

    if (qword_10009C638 != -1)
    {
      dispatch_once(&qword_10009C638, &stru_10008BA68);
    }

    v8 = qword_10009C640;
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"u"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    date = v5->_date;
    v5->_date = v11;

    v5->_fromRequest = [v4 decodeBoolForKey:@"r"];
    v5->_fromFile = [v4 decodeBoolForKey:@"f"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    filePath = v5->_filePath;
    v5->_filePath = v13;

    v5->_shouldUnlinkFile = [v4 decodeBoolForKey:@"l"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  messageID = self->_messageID;
  v5 = a3;
  [v5 encodeInteger:messageID forKey:@"m"];
  [v5 encodeObject:self->_idsIdentifier forKey:@"i"];
  [v5 encodeObject:self->_userInfo forKey:@"u"];
  [v5 encodeObject:self->_date forKey:@"d"];
  [v5 encodeBool:self->_fromRequest forKey:@"r"];
  [v5 encodeBool:self->_fromFile forKey:@"f"];
  [v5 encodeObject:self->_filePath forKey:@"p"];
  [v5 encodeBool:self->_shouldUnlinkFile forKey:@"l"];
}

- (id)description
{
  fromFile = self->_fromFile;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  messageID = self->_messageID;
  userInfo = self->_userInfo;
  date = self->_date;
  idsIdentifier = self->_idsIdentifier;
  if (fromFile)
  {
    [NSString stringWithFormat:@"<%@:%p id:%hu ids:%@ date:%@ fromRequest:%d userInfo:%@ path:%@ shouldUnlink:%d>", v5, self, messageID, idsIdentifier, date, self->_fromRequest, userInfo, self->_filePath, self->_shouldUnlinkFile];
  }

  else
  {
    [NSString stringWithFormat:@"<%@:%p id:%hu ids:%@ date:%@ fromRequest:%d userInfo:%@>", v5, self, messageID, idsIdentifier, date, self->_fromRequest, userInfo, v13, v14];
  }
  v11 = ;

  return v11;
}

@end