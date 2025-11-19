@interface CRJasperTest
- (BOOL)promptContinue:(id)a3 withContext:(id)a4;
@end

@implementation CRJasperTest

- (BOOL)promptContinue:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100006B60;
  v41 = sub_100006B70;
  v42 = 0;
  v36.receiver = self;
  v36.super_class = CRJasperTest;
  v32 = a4;
  if ([(CRTest *)&v36 promptContinue:v6 withContext:?])
  {
    v47 = @"CONTINUE";
    v7 = [CRLocalization localizedStringWithKey:@"CAMERA_CALIBRATION_CONTINUE_BUTTON_TITLE"];
    v48 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v49[0] = v8;
    v45 = @"CANCEL";
    v9 = [CRLocalization localizedStringWithKey:@"CAMERA_CALIBRATION_CANCEL_BUTTON_TITLE"];
    v46 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v49[1] = v10;
    v31 = [NSArray arrayWithObjects:v49 count:2];

    v11 = [ASTInstructionalPrompt alloc];
    v12 = [(CRTest *)self testId];
    if (MGGetBoolAnswer())
    {
      v13 = @"ipad.rear.camera.badge.scope";
    }

    else
    {
      v13 = @"iphone.rear.camera.badge.scope";
    }

    v14 = [CRLocalization localizedStringWithKey:@"CAMERA_CALIBRATION_INTRO_TITLE"];
    v15 = [CRLocalization localizedStringWithKey:@"CAMERA_CALIBRATION_INTRO_BODY_1"];
    v44[0] = v15;
    v16 = [CRLocalization localizedStringWithKey:@"CAMERA_CALIBRATION_INTRO_BODY_2"];
    v44[1] = v16;
    v17 = [NSArray arrayWithObjects:v44 count:2];
    v18 = [v11 initWithID:v12 type:0 iconLocator:v13 localizedTitle:v14 localizedSubtitle:&stru_100010A30 imageLocators:0 instructions:v17 instructionsStyle:0 options:v31];

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100006B78;
    v35[3] = &unk_100010350;
    v35[4] = &v37;
    [v6 showInstructionalPrompt:v18 withConfirmation:v35];
    if ([v38[5] isEqualToString:@"CANCEL"])
    {
      v19 = v18;
    }

    else
    {
      v29 = [ASTInstructionalPrompt alloc];
      v30 = [(CRTest *)self testId];
      v21 = [CRLocalization localizedStringWithKey:@"CAMERA_CALIBRATION_INSTRUCTIONS_TITLE"];
      v22 = [CRLocalization localizedStringWithKey:@"CAMERA_CALIBRATION_INSTRUCTIONS_1"];
      v43[0] = v22;
      v23 = [CRLocalization localizedStringWithKey:@"CAMERA_CALIBRATION_INSTRUCTIONS_2"];
      v43[1] = v23;
      v24 = [CRLocalization localizedStringWithKey:@"CAMERA_CALIBRATION_INSTRUCTIONS_3"];
      v43[2] = v24;
      v25 = [CRLocalization localizedStringWithKey:@"CAMERA_CALIBRATION_INSTRUCTIONS_4"];
      v43[3] = v25;
      v26 = [NSArray arrayWithObjects:v43 count:4];
      v19 = [v29 initWithID:v30 type:0 iconLocator:0 localizedTitle:v21 localizedSubtitle:&stru_100010A30 imageLocators:&off_100011228 instructions:v26 instructionsStyle:1 options:v31];

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100006C44;
      v34[3] = &unk_100010350;
      v34[4] = &v37;
      [v6 showInstructionalPrompt:v19 withConfirmation:v34];
      if (![v38[5] isEqualToString:@"CANCEL"])
      {
        v20 = 1;
LABEL_13:

        goto LABEL_14;
      }
    }

    v27 = handleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Cancelling test", buf, 2u);
    }

    v20 = 0;
    goto LABEL_13;
  }

  v20 = 0;
LABEL_14:
  _Block_object_dispose(&v37, 8);

  return v20;
}

@end