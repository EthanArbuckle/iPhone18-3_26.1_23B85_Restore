@interface PNDUserNotificationView
+ (void)beginPromptForChangePasscode;
+ (void)showCFUserNotifcationWithSecureTextFieldOptionForState:(int64_t)a3;
+ (void)showPasscodePromptForMCPasscodeComplianceTypeAdvisoryWithTitle:(id)a3 message:(id)a4;
+ (void)showPasscodePromptForMCPasscodeComplianceTypeMandatoryWithTitle:(id)a3 message:(id)a4;
+ (void)showPasscodePromptForMCPasscodeComplianceTypeOptionalWithTitle:(id)a3 message:(id)a4;
@end

@implementation PNDUserNotificationView

+ (void)showPasscodePromptForMCPasscodeComplianceTypeOptionalWithTitle:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
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
  v23 = a1;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v18;
  [v16 cancelNotificationsWithIdentifier:@"passcodenagd-user-notification-id" completionBlock:v17];
}

+ (void)showPasscodePromptForMCPasscodeComplianceTypeAdvisoryWithTitle:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
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
  v23 = a1;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v18;
  [v16 cancelNotificationsWithIdentifier:@"passcodenagd-user-notification-id" completionBlock:v17];
}

+ (void)showPasscodePromptForMCPasscodeComplianceTypeMandatoryWithTitle:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
  v10 = MCLocalizedFormat();
  +[MCUserNotificationManager sharedManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000013E4;
  v16 = v15[3] = &unk_1000082C0;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = a1;
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
  [a1 showCFUserNotifcationWithSecureTextFieldOptionForState:?];
}

+ (void)showCFUserNotifcationWithSecureTextFieldOptionForState:(int64_t)a3
{
  v5 = +[MCProfileConnection sharedConnection];
  switch(a3)
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
        v7 = qword_10000C388;
      }

      else
      {
        v7 = [v5 localizedDescriptionOfCurrentPasscodeConstraints];
      }

      goto LABEL_10;
    case 0:
      v6 = MCLocalizedFormat();
      v7 = MCLocalizedFormat();
LABEL_10:
      v8 = v7;
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
  v27 = a3;
  v28 = a1;
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