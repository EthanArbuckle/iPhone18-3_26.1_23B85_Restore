@interface CKServerChangeToken
- (id)ic_loggingDescription;
@end

@implementation CKServerChangeToken

- (id)ic_loggingDescription
{
  v2 = [(CKServerChangeToken *)self data];
  v3 = [v2 base64EncodedStringWithOptions:0];
  v4 = [NSString stringWithFormat:@"<ServerChangeToken %@>", v3];

  return v4;
}

@end