@interface SDActivityPayloadReplyRecord
- (id)description;
@end

@implementation SDActivityPayloadReplyRecord

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(SDActivityPayloadReplyRecord *)self messageIdentifier];
  v6 = [v5 UUIDString];
  v7 = [(SDActivityPayloadReplyRecord *)self requestIdentifier];
  v8 = [v7 UUIDString];
  v9 = [(SDActivityPayloadReplyRecord *)self activityIdentifier];
  v10 = [v9 UUIDString];
  v11 = [(SDActivityPayloadReplyRecord *)self deviceIdentifier];
  v12 = [NSString stringWithFormat:@"<%@: %p, messageIdentifier:%@, requestIdentifier:%@, activityIdentifier:%@, deviceIdentifier:%@>", v4, self, v6, v8, v10, v11];

  return v12;
}

@end