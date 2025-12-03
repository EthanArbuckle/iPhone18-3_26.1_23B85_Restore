@interface CBDRemoteXPCMessagePingReply
- (CBDRemoteXPCMessagePingReply)initWithCoder:(id)coder;
- (CBDRemoteXPCMessagePingReply)initWithRemoteMessage:(id)message success:(BOOL)success error:(id)error;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)triggerWithRemoteMessage:(id)message;
@end

@implementation CBDRemoteXPCMessagePingReply

- (CBDRemoteXPCMessagePingReply)initWithRemoteMessage:(id)message success:(BOOL)success error:(id)error
{
  messageCopy = message;
  errorCopy = error;
  v16.receiver = self;
  v16.super_class = CBDRemoteXPCMessagePingReply;
  v10 = [(CBDRemoteXPCMessagePingReply *)&v16 init];
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
  uuid = [(CBDRemoteXPCMessagePingReply *)self uuid];
  inReplyToUUID = [(CBDRemoteXPCMessagePingReply *)self inReplyToUUID];
  success = [(CBDRemoteXPCMessagePingReply *)self success];
  error = [(CBDRemoteXPCMessagePingReply *)self error];
  v9 = [NSString stringWithFormat:@"<%@: %p uuid = %@; inReplyToUUID = %@; success = %d; error = %@>", v4, self, uuid, inReplyToUUID, success, error];;

  return v9;
}

- (void)triggerWithRemoteMessage:(id)message
{
  messageCopy = message;
  handler = [messageCopy handler];

  if (handler)
  {
    handler2 = [messageCopy handler];
    v6 = [(CBDRemoteXPCMessagePingReply *)self ip];
    (handler2)[2](handler2, v6);
  }
}

- (CBDRemoteXPCMessagePingReply)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CBDRemoteXPCMessagePingReply;
  v5 = [(CBDRemoteXPCMessagePingReply *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inReplyToUUID"];
    inReplyToUUID = v5->_inReplyToUUID;
    v5->_inReplyToUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IP"];
    ip = v5->_ip;
    v5->_ip = v10;

    v5->_success = [coderCopy decodeBoolForKey:@"success"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(CBDRemoteXPCMessagePingReply *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  inReplyToUUID = [(CBDRemoteXPCMessagePingReply *)self inReplyToUUID];
  [coderCopy encodeObject:inReplyToUUID forKey:@"inReplyToUUID"];

  v7 = [(CBDRemoteXPCMessagePingReply *)self ip];
  [coderCopy encodeObject:v7 forKey:@"IP"];

  [coderCopy encodeBool:-[CBDRemoteXPCMessagePingReply success](self forKey:{"success"), @"success"}];
  error = [(CBDRemoteXPCMessagePingReply *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CBDRemoteXPCMessagePingReply);
  uuid = [(CBDRemoteXPCMessagePingReply *)self uuid];
  v6 = [uuid copy];
  uuid = v4->_uuid;
  v4->_uuid = v6;

  inReplyToUUID = [(CBDRemoteXPCMessagePingReply *)self inReplyToUUID];
  v9 = [inReplyToUUID copy];
  inReplyToUUID = v4->_inReplyToUUID;
  v4->_inReplyToUUID = v9;

  v11 = [(CBDRemoteXPCMessagePingReply *)self ip];
  v12 = [v11 copy];
  ip = v4->_ip;
  v4->_ip = v12;

  v4->_success = self->_success;
  objc_storeStrong(&v4->_error, self->_error);
  return v4;
}

@end