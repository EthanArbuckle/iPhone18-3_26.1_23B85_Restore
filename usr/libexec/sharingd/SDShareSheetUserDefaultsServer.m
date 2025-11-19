@interface SDShareSheetUserDefaultsServer
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (void)activate;
- (void)invalidate;
- (void)requestFavoritesForActivityCategory:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation SDShareSheetUserDefaultsServer

- (void)activate
{
  v2.receiver = self;
  v2.super_class = SDShareSheetUserDefaultsServer;
  [(SDXPCDaemon *)&v2 _activate];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SDShareSheetUserDefaultsServer;
  [(SDXPCDaemon *)&v2 _invalidate];
}

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForEntitlement:@"com.apple.sharesheet.userdefaults"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000706A0(v3, v6);
    }

    v5 = 0;
  }

  return v5;
}

- (void)requestFavoritesForActivityCategory:(int64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [_UIActivityUserDefaults alloc];
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [UIActivity _stringFromActivityCategory:a3];
  v10 = [v6 initWithUnderlyingUserDefaults:v7 activityDefaultsKey:v8];

  v9 = [v10 activityIdentifiersInUserOrder];
  v5[2](v5, v9);
}

@end