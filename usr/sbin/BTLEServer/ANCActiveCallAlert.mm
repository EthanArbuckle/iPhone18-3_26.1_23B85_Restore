@interface ANCActiveCallAlert
- (ANCActiveCallAlert)initWithCall:(id)call callCenter:(id)center;
- (BOOL)performNegativeAction;
- (id)message;
- (id)negativeActionLabel;
@end

@implementation ANCActiveCallAlert

- (ANCActiveCallAlert)initWithCall:(id)call callCenter:(id)center
{
  v5.receiver = self;
  v5.super_class = ANCActiveCallAlert;
  return [(ANCCallAlert *)&v5 initWithCall:call callCenter:center categoryID:12];
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
  callCenter = [(ANCCallAlert *)self callCenter];
  call = [(ANCCallAlert *)self call];
  [callCenter disconnectCall:call];

  return 1;
}

@end