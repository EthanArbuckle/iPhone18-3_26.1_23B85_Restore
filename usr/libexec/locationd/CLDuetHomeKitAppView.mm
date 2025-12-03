@interface CLDuetHomeKitAppView
- (CLDuetHomeKitAppView)initWithHomeUUID:(id)d viewUUID:(id)iD viewName:(id)name viewInformation:(id)information;
- (void)dealloc;
@end

@implementation CLDuetHomeKitAppView

- (CLDuetHomeKitAppView)initWithHomeUUID:(id)d viewUUID:(id)iD viewName:(id)name viewInformation:(id)information
{
  v13.receiver = self;
  v13.super_class = CLDuetHomeKitAppView;
  v10 = [(CLDuetHomeKitAppView *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CLDuetHomeKitAppView *)v10 setHomeUUID:d];
    [(CLDuetHomeKitAppView *)v11 setViewUUID:iD];
    [(CLDuetHomeKitAppView *)v11 setViewName:name];
    [(CLDuetHomeKitAppView *)v11 setViewInformation:information];
  }

  return v11;
}

- (void)dealloc
{
  [(CLDuetHomeKitAppView *)self setHomeUUID:0];
  [(CLDuetHomeKitAppView *)self setViewUUID:0];
  [(CLDuetHomeKitAppView *)self setViewName:0];
  [(CLDuetHomeKitAppView *)self setViewInformation:0];
  v3.receiver = self;
  v3.super_class = CLDuetHomeKitAppView;
  [(CLDuetHomeKitAppView *)&v3 dealloc];
}

@end