@interface _SESSessionClientInfo
+ (id)withConnection:(id)connection;
@end

@implementation _SESSessionClientInfo

+ (id)withConnection:(id)connection
{
  connectionCopy = connection;
  v4 = objc_opt_new();
  userInfo = [connectionCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:&off_1004DCA68];
  v7 = [v6 copy];
  v8 = *(v4 + 16);
  *(v4 + 16) = v7;

  v9 = [connectionCopy valueForEntitlement:@"com.apple.seserviced.session.acwg"];
  *(v4 + 8) = v9 != 0;

  v10 = [connectionCopy valueForEntitlement:@"com.apple.seserviced.session.dck"];
  *(v4 + 9) = v10 != 0;

  v11 = [connectionCopy valueForEntitlement:@"com.apple.developer.carkey.session"];

  *(v4 + 10) = v11 != 0;

  return v4;
}

@end