@interface ANCIncomingCallAlert
- (ANCIncomingCallAlert)initWithCall:(id)a3 callCenter:(id)a4;
- (BOOL)performNegativeAction;
- (BOOL)performPositiveAction;
- (id)message;
- (id)negativeActionLabel;
- (id)positiveActionLabel;
@end

@implementation ANCIncomingCallAlert

- (ANCIncomingCallAlert)initWithCall:(id)a3 callCenter:(id)a4
{
  v5.receiver = self;
  v5.super_class = ANCIncomingCallAlert;
  return [(ANCCallAlert *)&v5 initWithCall:a3 callCenter:a4 categoryID:1];
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
  v3 = [(ANCCallAlert *)self callCenter];
  v4 = [(ANCCallAlert *)self call];
  [v3 answerCall:v4];

  return 1;
}

- (BOOL)performNegativeAction
{
  v3 = [(ANCCallAlert *)self callCenter];
  v4 = [(ANCCallAlert *)self call];
  [v3 disconnectCall:v4];

  return 1;
}

@end