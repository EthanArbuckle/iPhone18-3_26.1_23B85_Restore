@interface ANCIncomingCallAlert
- (ANCIncomingCallAlert)initWithCall:(id)call callCenter:(id)center;
- (BOOL)performNegativeAction;
- (BOOL)performPositiveAction;
- (id)message;
- (id)negativeActionLabel;
- (id)positiveActionLabel;
@end

@implementation ANCIncomingCallAlert

- (ANCIncomingCallAlert)initWithCall:(id)call callCenter:(id)center
{
  v5.receiver = self;
  v5.super_class = ANCIncomingCallAlert;
  return [(ANCCallAlert *)&v5 initWithCall:call callCenter:center categoryID:1];
}

- (id)message
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"INCOMING_CALL" value:@"Incoming Call" table:0];

  return v3;
}

- (id)positiveActionLabel
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"ANSWER" value:@"Answer" table:0];

  return v3;
}

- (id)negativeActionLabel
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"DECLINE" value:@"Decline" table:0];

  return v3;
}

- (BOOL)performPositiveAction
{
  callCenter = [(ANCCallAlert *)self callCenter];
  call = [(ANCCallAlert *)self call];
  [callCenter answerCall:call];

  return 1;
}

- (BOOL)performNegativeAction
{
  callCenter = [(ANCCallAlert *)self callCenter];
  call = [(ANCCallAlert *)self call];
  [callCenter disconnectCall:call];

  return 1;
}

@end