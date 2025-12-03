@interface NSError
- (BOOL)isFromRequest;
- (NSDate)messageSent;
- (NSDictionary)persistentUserInfo;
- (unsigned)messageID;
@end

@implementation NSError

- (unsigned)messageID
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKey:@"NMSContext"];

  LOWORD(userInfo) = [v3 messageID];
  return userInfo;
}

- (NSDate)messageSent
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKey:@"NMSContext"];

  date = [v3 date];

  return date;
}

- (NSDictionary)persistentUserInfo
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKey:@"NMSContext"];

  userInfo2 = [v3 userInfo];

  return userInfo2;
}

- (BOOL)isFromRequest
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKey:@"NMSContext"];

  LOBYTE(userInfo) = [v3 isFromRequest];
  return userInfo;
}

@end