@interface NMSMessagePersistentContext
- (NMSMessagePersistentContext)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NMSMessagePersistentContext

- (NMSMessagePersistentContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = NMSMessagePersistentContext;
  v5 = [(NMSMessagePersistentContext *)&v16 init];
  if (v5)
  {
    v5->_messageID = [coderCopy decodeIntegerForKey:@"m"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    idsIdentifier = v5->_idsIdentifier;
    v5->_idsIdentifier = v6;

    if (qword_10009C638 != -1)
    {
      dispatch_once(&qword_10009C638, &stru_10008BA68);
    }

    v8 = qword_10009C640;
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"u"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    date = v5->_date;
    v5->_date = v11;

    v5->_fromRequest = [coderCopy decodeBoolForKey:@"r"];
    v5->_fromFile = [coderCopy decodeBoolForKey:@"f"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    filePath = v5->_filePath;
    v5->_filePath = v13;

    v5->_shouldUnlinkFile = [coderCopy decodeBoolForKey:@"l"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  messageID = self->_messageID;
  coderCopy = coder;
  [coderCopy encodeInteger:messageID forKey:@"m"];
  [coderCopy encodeObject:self->_idsIdentifier forKey:@"i"];
  [coderCopy encodeObject:self->_userInfo forKey:@"u"];
  [coderCopy encodeObject:self->_date forKey:@"d"];
  [coderCopy encodeBool:self->_fromRequest forKey:@"r"];
  [coderCopy encodeBool:self->_fromFile forKey:@"f"];
  [coderCopy encodeObject:self->_filePath forKey:@"p"];
  [coderCopy encodeBool:self->_shouldUnlinkFile forKey:@"l"];
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