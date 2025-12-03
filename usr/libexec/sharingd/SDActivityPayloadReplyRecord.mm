@interface SDActivityPayloadReplyRecord
- (id)description;
@end

@implementation SDActivityPayloadReplyRecord

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  messageIdentifier = [(SDActivityPayloadReplyRecord *)self messageIdentifier];
  uUIDString = [messageIdentifier UUIDString];
  requestIdentifier = [(SDActivityPayloadReplyRecord *)self requestIdentifier];
  uUIDString2 = [requestIdentifier UUIDString];
  activityIdentifier = [(SDActivityPayloadReplyRecord *)self activityIdentifier];
  uUIDString3 = [activityIdentifier UUIDString];
  deviceIdentifier = [(SDActivityPayloadReplyRecord *)self deviceIdentifier];
  v12 = [NSString stringWithFormat:@"<%@: %p, messageIdentifier:%@, requestIdentifier:%@, activityIdentifier:%@, deviceIdentifier:%@>", v4, self, uUIDString, uUIDString2, uUIDString3, deviceIdentifier];

  return v12;
}

@end