@interface CBDRemoteXPCMessagePingReply
- (CBDRemoteXPCMessagePingReply)initWithCoder:(id)a3;
- (CBDRemoteXPCMessagePingReply)initWithRemoteMessage:(id)a3 success:(BOOL)a4 error:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)triggerWithRemoteMessage:(id)a3;
@end

@implementation CBDRemoteXPCMessagePingReply

- (CBDRemoteXPCMessagePingReply)initWithRemoteMessage:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = CBDRemoteXPCMessagePingReply;
  v10 = [(CBDRemoteXPCMessagePingReply *)&v16 init];
  if (v10)
  {
    v11 = +[NSUUID UUID];
    uuid = v10->_uuid;
    v10->_uuid = v11;

    v13 = [v8 uuid];
    inReplyToUUID = v10->_inReplyToUUID;
    v10->_inReplyToUUID = v13;

    v10->_success = a4;
    objc_storeStrong(&v10->_error, a5);
  }

  return v10;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CBDRemoteXPCMessagePingReply *)self uuid];
  v6 = [(CBDRemoteXPCMessagePingReply *)self inReplyToUUID];
  v7 = [(CBDRemoteXPCMessagePingReply *)self success];
  v8 = [(CBDRemoteXPCMessagePingReply *)self error];
  v9 = [NSString stringWithFormat:@"<%@: %p uuid = %@; inReplyToUUID = %@; success = %d; error = %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (void)triggerWithRemoteMessage:(id)a3
{
  v7 = a3;
  v4 = [v7 handler];

  if (v4)
  {
    v5 = [v7 handler];
    v6 = [(CBDRemoteXPCMessagePingReply *)self ip];
    (v5)[2](v5, v6);
  }
}

- (CBDRemoteXPCMessagePingReply)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CBDRemoteXPCMessagePingReply;
  v5 = [(CBDRemoteXPCMessagePingReply *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inReplyToUUID"];
    inReplyToUUID = v5->_inReplyToUUID;
    v5->_inReplyToUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IP"];
    ip = v5->_ip;
    v5->_ip = v10;

    v5->_success = [v4 decodeBoolForKey:@"success"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CBDRemoteXPCMessagePingReply *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [(CBDRemoteXPCMessagePingReply *)self inReplyToUUID];
  [v4 encodeObject:v6 forKey:@"inReplyToUUID"];

  v7 = [(CBDRemoteXPCMessagePingReply *)self ip];
  [v4 encodeObject:v7 forKey:@"IP"];

  [v4 encodeBool:-[CBDRemoteXPCMessagePingReply success](self forKey:{"success"), @"success"}];
  v8 = [(CBDRemoteXPCMessagePingReply *)self error];
  [v4 encodeObject:v8 forKey:@"error"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CBDRemoteXPCMessagePingReply);
  v5 = [(CBDRemoteXPCMessagePingReply *)self uuid];
  v6 = [v5 copy];
  uuid = v4->_uuid;
  v4->_uuid = v6;

  v8 = [(CBDRemoteXPCMessagePingReply *)self inReplyToUUID];
  v9 = [v8 copy];
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