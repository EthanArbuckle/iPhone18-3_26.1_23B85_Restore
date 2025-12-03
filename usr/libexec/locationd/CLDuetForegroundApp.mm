@interface CLDuetForegroundApp
- (CLDuetForegroundApp)initWithBundleId:(id)id launchReason:(id)reason;
- (void)dealloc;
@end

@implementation CLDuetForegroundApp

- (CLDuetForegroundApp)initWithBundleId:(id)id launchReason:(id)reason
{
  v9.receiver = self;
  v9.super_class = CLDuetForegroundApp;
  v6 = [(CLDuetForegroundApp *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CLDuetForegroundApp *)v6 setBundleId:id];
    [(CLDuetForegroundApp *)v7 setLaunchReason:reason];
  }

  return v7;
}

- (void)dealloc
{
  [(CLDuetForegroundApp *)self setBundleId:0];
  [(CLDuetForegroundApp *)self setLaunchReason:0];
  v3.receiver = self;
  v3.super_class = CLDuetForegroundApp;
  [(CLDuetForegroundApp *)&v3 dealloc];
}

@end