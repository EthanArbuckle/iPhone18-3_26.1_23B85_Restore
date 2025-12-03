@interface CBDRemoteXPCMessageSuccessReply
- (CBDRemoteXPCMessageSuccessReply)initWithCoder:(id)coder;
- (CBDRemoteXPCMessageSuccessReply)initWithRemoteMessage:(id)message success:(BOOL)success error:(id)error;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CBDRemoteXPCMessageSuccessReply

- (CBDRemoteXPCMessageSuccessReply)initWithRemoteMessage:(id)message success:(BOOL)success error:(id)error
{
  messageCopy = message;
  errorCopy = error;
  v16.receiver = self;
  v16.super_class = CBDRemoteXPCMessageSuccessReply;
  v10 = [(CBDRemoteXPCMessageSuccessReply *)&v16 init];
  if (v10)
  {
    v11 = +[NSUUID UUID];
    uuid = v10->_uuid;
    v10->_uuid = v11;

    uuid = [messageCopy uuid];
    inReplyToUUID = v10->_inReplyToUUID;
    v10->_inReplyToUUID = uuid;

    v10->_success = success;
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uuid = [(CBDRemoteXPCMessageSuccessReply *)self uuid];
  inReplyToUUID = [(CBDRemoteXPCMessageSuccessReply *)self inReplyToUUID];
  success = [(CBDRemoteXPCMessageSuccessReply *)self success];
  error = [(CBDRemoteXPCMessageSuccessReply *)self error];
  v9 = [NSString stringWithFormat:@"<%@: %p uuid = %@, inReplyToUUID = %@, success = %d, error = %@>", v4, self, uuid, inReplyToUUID, success, error];;

  return v9;
}

- (CBDRemoteXPCMessageSuccessReply)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CBDRemoteXPCMessageSuccessReply;
  v5 = [(CBDRemoteXPCMessageSuccessReply *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inReplyToUUID"];
    inReplyToUUID = v5->_inReplyToUUID;
    v5->_inReplyToUUID = v8;

    v5->_success = [coderCopy decodeBoolForKey:@"success"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(CBDRemoteXPCMessageSuccessReply *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  inReplyToUUID = [(CBDRemoteXPCMessageSuccessReply *)self inReplyToUUID];
  [coderCopy encodeObject:inReplyToUUID forKey:@"inReplyToUUID"];

  [coderCopy encodeBool:-[CBDRemoteXPCMessageSuccessReply success](self forKey:{"success"), @"success"}];
  error = [(CBDRemoteXPCMessageSuccessReply *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CBDRemoteXPCMessageSuccessReply);
  if (v4)
  {
    uuid = [(CBDRemoteXPCMessageSuccessReply *)self uuid];
    v6 = [uuid copy];
    uuid = v4->_uuid;
    v4->_uuid = v6;

    inReplyToUUID = [(CBDRemoteXPCMessageSuccessReply *)self inReplyToUUID];
    v9 = [inReplyToUUID copy];
    inReplyToUUID = v4->_inReplyToUUID;
    v4->_inReplyToUUID = v9;

    v4->_success = self->_success;
    objc_storeStrong(&v4->_error, self->_error);
  }

  return v4;
}

@end