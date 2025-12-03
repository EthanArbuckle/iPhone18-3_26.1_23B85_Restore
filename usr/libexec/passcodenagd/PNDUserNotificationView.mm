@interface PNDUserNotificationView
+ (void)beginPromptForChangePasscode;
+ (void)showCFUserNotifcationWithSecureTextFieldOptionForState:(int64_t)state;
+ (void)showPasscodePromptForMCPasscodeComplianceTypeAdvisoryWithTitle:(id)title message:(id)message;
+ (void)showPasscodePromptForMCPasscodeComplianceTypeMandatoryWithTitle:(id)title message:(id)message;
+ (void)showPasscodePromptForMCPasscodeComplianceTypeOptionalWithTitle:(id)title message:(id)message;
@end

@implementation PNDUserNotificationView

+ (void)showPasscodePromptForMCPasscodeComplianceTypeOptionalWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v8 = titleCopy;
  v9 = messageCopy;
  v10 = MCLocalizedFormat();
  v11 = MCLocalizedFormat();
  +[MCUserNotificationManager sharedManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100000E34;
  v18 = v17[3] = &unk_100008298;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  selfCopy = self;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v18;
  [v16 cancelNotificationsWithIdentifier:@"passcodenagd-user-notification-id" completionBlock:v17];
}

+ (void)showPasscodePromptForMCPasscodeComplianceTypeAdvisoryWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v8 = titleCopy;
  v9 = messageCopy;
  v10 = MCLocalizedFormat();
  v11 = MCLocalizedFormat();
  +[MCUserNotificationManager sharedManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100001120;
  v18 = v17[3] = &unk_100008298;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  selfCopy = self;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v18;
  [v16 cancelNotificationsWithIdentifier:@"passcodenagd-user-notification-id" completionBlock:v17];
}

+ (void)showPasscodePromptForMCPasscodeComplianceTypeMandatoryWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v8 = titleCopy;
  v9 = messageCopy;
  v10 = MCLocalizedFormat();
  +[MCUserNotificationManager sharedManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000013E4;
  v16 = v15[3] = &unk_1000082C0;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  selfCopy = self;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v16;
  [v14 cancelNotificationsWithIdentifier:@"passcodenagd-user-notification-id" completionBlock:v15];
}

+ (void)beginPromptForChangePasscode
{
  v6 = +[MCProfileConnection sharedConnection];
  v3 = qword_10000C388;
  qword_10000C388 = 0;

  v4 = qword_10000C390;
  qword_10000C390 = 0;

  v5 = qword_10000C398;
  qword_10000C398 = 0;

  qword_10000C3A0 = [v6 isPasscodeSet] ^ 1;
  [self showCFUserNotifcationWithSecureTextFieldOptionForState:?];
}

+ (void)showCFUserNotifcationWithSecureTextFieldOptionForState:(int64_t)state
{
  v5 = +[MCProfileConnection sharedConnection];
  switch(state)
  {
    case 2:
      v6 = MCLocalizedFormat();
      v8 = 0;
LABEL_11:
      v9 = MCLocalizedFormat();
      goto LABEL_12;
    case 1:
      v6 = MCLocalizedFormat();
      if (qword_10000C388)
      {
        localizedDescriptionOfCurrentPasscodeConstraints = qword_10000C388;
      }

      else
      {
        localizedDescriptionOfCurrentPasscodeConstraints = [v5 localizedDescriptionOfCurrentPasscodeConstraints];
      }

      goto LABEL_10;
    case 0:
      v6 = MCLocalizedFormat();
      localizedDescriptionOfCurrentPasscodeConstraints = MCLocalizedFormat();
LABEL_10:
      v8 = localizedDescriptionOfCurrentPasscodeConstraints;
      goto LABEL_11;
  }

  v9 = 0;
  v8 = 0;
  v6 = 0;
LABEL_12:
  v10 = MCLocalizedFormat();
  v11 = MCLocalizedFormat();
  +[MCUserNotificationManager sharedManager];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001830;
  v20 = v19[3] = &unk_100008338;
  v21 = v6;
  v22 = v8;
  v23 = v9;
  v24 = v11;
  v25 = v10;
  v26 = v5;
  stateCopy = state;
  selfCopy = self;
  v12 = v5;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  v16 = v8;
  v17 = v6;
  v18 = v20;
  [v18 cancelNotificationsWithIdentifier:@"passcodenagd-user-notification-id" completionBlock:v19];
}

@end