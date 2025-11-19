@interface CLDuetForegroundApp
- (CLDuetForegroundApp)initWithBundleId:(id)a3 launchReason:(id)a4;
- (void)dealloc;
@end

@implementation CLDuetForegroundApp

- (CLDuetForegroundApp)initWithBundleId:(id)a3 launchReason:(id)a4
{
  v9.receiver = self;
  v9.super_class = CLDuetForegroundApp;
  v6 = [(CLDuetForegroundApp *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CLDuetForegroundApp *)v6 setBundleId:a3];
    [(CLDuetForegroundApp *)v7 setLaunchReason:a4];
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