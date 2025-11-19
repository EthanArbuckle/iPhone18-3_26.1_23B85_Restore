@interface CBDRemoteXPCMessageSuccessReply
- (CBDRemoteXPCMessageSuccessReply)initWithCoder:(id)a3;
- (CBDRemoteXPCMessageSuccessReply)initWithRemoteMessage:(id)a3 success:(BOOL)a4 error:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CBDRemoteXPCMessageSuccessReply

- (CBDRemoteXPCMessageSuccessReply)initWithRemoteMessage:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = CBDRemoteXPCMessageSuccessReply;
  v10 = [(CBDRemoteXPCMessageSuccessReply *)&v16 init];
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
  v5 = [(CBDRemoteXPCMessageSuccessReply *)self uuid];
  v6 = [(CBDRemoteXPCMessageSuccessReply *)self inReplyToUUID];
  v7 = [(CBDRemoteXPCMessageSuccessReply *)self success];
  v8 = [(CBDRemoteXPCMessageSuccessReply *)self error];
  v9 = [NSString stringWithFormat:@"<%@: %p uuid = %@, inReplyToUUID = %@, success = %d, error = %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (CBDRemoteXPCMessageSuccessReply)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CBDRemoteXPCMessageSuccessReply;
  v5 = [(CBDRemoteXPCMessageSuccessReply *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inReplyToUUID"];
    inReplyToUUID = v5->_inReplyToUUID;
    v5->_inReplyToUUID = v8;

    v5->_success = [v4 decodeBoolForKey:@"success"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CBDRemoteXPCMessageSuccessReply *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [(CBDRemoteXPCMessageSuccessReply *)self inReplyToUUID];
  [v4 encodeObject:v6 forKey:@"inReplyToUUID"];

  [v4 encodeBool:-[CBDRemoteXPCMessageSuccessReply success](self forKey:{"success"), @"success"}];
  v7 = [(CBDRemoteXPCMessageSuccessReply *)self error];
  [v4 encodeObject:v7 forKey:@"error"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CBDRemoteXPCMessageSuccessReply);
  if (v4)
  {
    v5 = [(CBDRemoteXPCMessageSuccessReply *)self uuid];
    v6 = [v5 copy];
    uuid = v4->_uuid;
    v4->_uuid = v6;

    v8 = [(CBDRemoteXPCMessageSuccessReply *)self inReplyToUUID];
    v9 = [v8 copy];
    inReplyToUUID = v4->_inReplyToUUID;
    v4->_inReplyToUUID = v9;

    v4->_success = self->_success;
    objc_storeStrong(&v4->_error, self->_error);
  }

  return v4;
}

@end