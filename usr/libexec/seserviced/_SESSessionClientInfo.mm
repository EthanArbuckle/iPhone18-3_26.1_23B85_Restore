@interface _SESSessionClientInfo
+ (id)withConnection:(id)a3;
@end

@implementation _SESSessionClientInfo

+ (id)withConnection:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 userInfo];
  v6 = [v5 objectForKeyedSubscript:&off_1004DCA68];
  v7 = [v6 copy];
  v8 = *(v4 + 16);
  *(v4 + 16) = v7;

  v9 = [v3 valueForEntitlement:@"com.apple.seserviced.session.acwg"];
  *(v4 + 8) = v9 != 0;

  v10 = [v3 valueForEntitlement:@"com.apple.seserviced.session.dck"];
  *(v4 + 9) = v10 != 0;

  v11 = [v3 valueForEntitlement:@"com.apple.developer.carkey.session"];

  *(v4 + 10) = v11 != 0;

  return v4;
}

@end