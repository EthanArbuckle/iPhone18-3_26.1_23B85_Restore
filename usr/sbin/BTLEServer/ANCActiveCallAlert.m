@interface ANCActiveCallAlert
- (ANCActiveCallAlert)initWithCall:(id)a3 callCenter:(id)a4;
- (BOOL)performNegativeAction;
- (id)message;
- (id)negativeActionLabel;
@end

@implementation ANCActiveCallAlert

- (ANCActiveCallAlert)initWithCall:(id)a3 callCenter:(id)a4
{
  v5.receiver = self;
  v5.super_class = ANCActiveCallAlert;
  return [(ANCCallAlert *)&v5 initWithCall:a3 callCenter:a4 categoryID:12];
}

- (id)message
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"ACTIVE_CALL" value:@"Active Call" table:0];

  return v3;
}

- (id)negativeActionLabel
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"END_CALL" value:@"End Call" table:0];

  return v3;
}

- (BOOL)performNegativeAction
{
  v3 = [(ANCCallAlert *)self callCenter];
  v4 = [(ANCCallAlert *)self call];
  [v3 disconnectCall:v4];

  return 1;
}

@end