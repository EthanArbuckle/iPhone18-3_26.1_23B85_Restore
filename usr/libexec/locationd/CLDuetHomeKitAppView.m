@interface CLDuetHomeKitAppView
- (CLDuetHomeKitAppView)initWithHomeUUID:(id)a3 viewUUID:(id)a4 viewName:(id)a5 viewInformation:(id)a6;
- (void)dealloc;
@end

@implementation CLDuetHomeKitAppView

- (CLDuetHomeKitAppView)initWithHomeUUID:(id)a3 viewUUID:(id)a4 viewName:(id)a5 viewInformation:(id)a6
{
  v13.receiver = self;
  v13.super_class = CLDuetHomeKitAppView;
  v10 = [(CLDuetHomeKitAppView *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CLDuetHomeKitAppView *)v10 setHomeUUID:a3];
    [(CLDuetHomeKitAppView *)v11 setViewUUID:a4];
    [(CLDuetHomeKitAppView *)v11 setViewName:a5];
    [(CLDuetHomeKitAppView *)v11 setViewInformation:a6];
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