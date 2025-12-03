@interface FMDCommandHandlerMessage
- (BOOL)shouldHonorSecureMessage;
- (BOOL)shouldShowLockScreenMessage;
- (FMDCommandHandlerMessage)initWithParams:(id)params provider:(id)provider;
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
- (void)showSecureMessage:(id)message andLockScreenMessage:(id)screenMessage;
@end

@implementation FMDCommandHandlerMessage

- (FMDCommandHandlerMessage)initWithParams:(id)params provider:(id)provider
{
  v7.receiver = self;
  v7.super_class = FMDCommandHandlerMessage;
  v4 = [(FMDCommandHandler *)&v7 initWithParams:params provider:provider];
  v5 = v4;
  if (v4)
  {
    [(FMDCommandHandler *)v4 setRequiresAsynchronousAck:1];
  }

  return v5;
}

- (void)handleCommand
{
  commandParams = [(FMDCommandHandler *)self commandParams];
  v4 = [commandParams objectForKeyedSubscript:@"secureMsg"];

  bOOLValue = [v4 BOOLValue];
  v6 = +[FMDPreferencesMgr accessibilityFontSizeEnabled];
  provider = [(FMDCommandHandler *)self provider];
  v8 = sub_100002880();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received a secure message", buf, 2u);
    }

    shouldHonorSecureMessage = [(FMDCommandHandlerMessage *)self shouldHonorSecureMessage];
    v11 = sub_100002880();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!shouldHonorSecureMessage)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ignoring secure message because it cannot be honored", buf, 2u);
      }

      goto LABEL_56;
    }

    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Can honor the secure message", buf, 2u);
    }

    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v14 = [commandParams2 objectForKeyedSubscript:@"text"];

    commandParams3 = [(FMDCommandHandler *)self commandParams];
    v16 = [commandParams3 objectForKeyedSubscript:@"lockScreenText"];

    shouldShowLockScreenMessage = [(FMDCommandHandlerMessage *)self shouldShowLockScreenMessage];
    v18 = shouldShowLockScreenMessage;
    if (v14)
    {
      v19 = sub_100002880();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found secure message text in the secure message command", buf, 2u);
      }

      v20 = objc_alloc_init(FMAlert);
      v11 = v20;
      v145 = v16;
      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces = [v14 fm_stringByReplacingNonBreakingSpaces];
        [v11 setMsgText:fm_stringByReplacingNonBreakingSpaces];
      }

      else
      {
        [v20 setMsgText:v14];
      }

      commandParams4 = [(FMDCommandHandler *)self commandParams];
      v64 = [commandParams4 objectForKeyedSubscript:@"title"];

      v144 = v6;
      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces2 = [v64 fm_stringByReplacingNonBreakingSpaces];
        [v11 setMsgTitle:fm_stringByReplacingNonBreakingSpaces2];
      }

      else
      {
        [v11 setMsgTitle:v64];
      }

      [v11 setShowMsgInLockScreen:[(FMDCommandHandlerMessage *)self shouldShowSecureMessageOnLockScreen]];
      [v11 setDismissMsgOnUnlock:0];
      [v11 setDismissMsgOnLock:0];
      commandParams5 = [(FMDCommandHandler *)self commandParams];
      v67 = [commandParams5 objectForKeyedSubscript:@"okButtonTitle"];
      [v11 setDefaultButtonTitle:v67];

      commandParams6 = [(FMDCommandHandler *)self commandParams];
      v69 = [commandParams6 objectForKeyedSubscript:@"okButtonAction"];

      if (v69)
      {
        commandParams7 = [(FMDCommandHandler *)self commandParams];
        v71 = [commandParams7 objectForKeyedSubscript:@"okButtonURL"];

        [provider alertActionInfoForAction:v69 andURL:v71];
        v150[0] = _NSConcreteStackBlock;
        v150[1] = 3221225472;
        v150[2] = sub_10016323C;
        v151 = v150[3] = &unk_1002CD4C8;
        v72 = v151;
        [v11 setDefaultButtonAction:v150];
      }

      commandParams8 = [(FMDCommandHandler *)self commandParams];
      v74 = [commandParams8 objectForKeyedSubscript:@"cancelButtonTitle"];
      [v11 setAlternateButtonTitle:v74];

      commandParams9 = [(FMDCommandHandler *)self commandParams];
      v76 = [commandParams9 objectForKeyedSubscript:@"cancelButtonAction"];

      if (v76)
      {
        commandParams10 = [(FMDCommandHandler *)self commandParams];
        [commandParams10 objectForKeyedSubscript:@"cancelButtonURL"];
        v140 = v4;
        v78 = v64;
        v79 = v14;
        v81 = v80 = v18;

        [provider alertActionInfoForAction:v76 andURL:v81];
        v148[0] = _NSConcreteStackBlock;
        v148[1] = 3221225472;
        v148[2] = sub_1001632F4;
        v149 = v148[3] = &unk_1002CD4C8;
        v82 = v149;
        [v11 setAlternateButtonAction:v148];

        v18 = v80;
        v14 = v79;
        v64 = v78;
        v4 = v140;
      }

      v6 = v144;
      v16 = v145;
      if (!v18)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v11 = 0;
      if (!shouldShowLockScreenMessage)
      {
        goto LABEL_53;
      }
    }

    v83 = sub_100002880();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Device is locked. We can show lock screen message", buf, 2u);
    }

    if (v16)
    {
      v84 = sub_100002880();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Found lock screen message text in the secure message command", buf, 2u);
      }

      v85 = objc_alloc_init(FMAlert);
      v86 = v85;
      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces3 = [v16 fm_stringByReplacingNonBreakingSpaces];
        [v86 setMsgText:fm_stringByReplacingNonBreakingSpaces3];
      }

      else
      {
        [v85 setMsgText:v16];
      }

      commandParams11 = [(FMDCommandHandler *)self commandParams];
      v89 = [commandParams11 objectForKeyedSubscript:@"lockScreenTitle"];

      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces4 = [v89 fm_stringByReplacingNonBreakingSpaces];
        [v86 setMsgTitle:fm_stringByReplacingNonBreakingSpaces4];
      }

      else
      {
        [v86 setMsgTitle:v89];
      }

      [v86 setShowMsgInLockScreen:1];
      [v86 setDismissMsgOnUnlock:1];
      [v86 setDismissMsgOnLock:0];

      if (!v11)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

LABEL_53:
    v86 = 0;
    if (!v11)
    {
LABEL_55:

LABEL_56:
      [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
      goto LABEL_96;
    }

LABEL_54:
    [(FMDCommandHandlerMessage *)self showSecureMessage:v11 andLockScreenMessage:v86];
    goto LABEL_55;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received a regular message", buf, 2u);
  }

  v22 = objc_alloc_init(FMDMessage);
  commandParams12 = [(FMDCommandHandler *)self commandParams];
  v24 = [commandParams12 objectForKeyedSubscript:@"sound"];

  if ([v24 BOOLValue])
  {
    commandParams13 = [(FMDCommandHandler *)self commandParams];
    v26 = [commandParams13 objectForKey:@"udid"];
    fm_nullToNil = [v26 fm_nullToNil];

    commandParams14 = [(FMDCommandHandler *)self commandParams];
    v29 = [commandParams14 objectForKeyedSubscript:@"durationInSeconds"];

    if (v29)
    {
      intValue = [v29 intValue];
    }

    else
    {
      intValue = 120;
    }

    v137 = intValue;
    v143 = v6;
    v31 = sub_100002880();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v162 = fm_nullToNil;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Message command for accessory %@", buf, 0xCu);
    }

    commandParams15 = [(FMDCommandHandler *)self commandParams];
    v142 = [commandParams15 objectForKeyedSubscript:@"id"];

    commandParams16 = [(FMDCommandHandler *)self commandParams];
    v139 = [commandParams16 objectForKeyedSubscript:@"scanDuration"];

    commandParams17 = [(FMDCommandHandler *)self commandParams];
    v35 = [commandParams17 objectForKeyedSubscript:@"rampUpDurationInSeconds"];

    commandParams18 = [(FMDCommandHandler *)self commandParams];
    v37 = [commandParams18 objectForKeyedSubscript:@"rampDownDurationInSeconds"];

    v146 = v24;
    v138 = v35;
    if (v35)
    {
      [v35 doubleValue];
      v39 = v38;
      v40 = v37;
      [v37 doubleValue];
      v42 = v41;
    }

    else
    {
      v40 = v37;
      v39 = 0.0;
      v42 = 0.0;
    }

    commandParams19 = [(FMDCommandHandler *)self commandParams];
    v44 = [commandParams19 objectForKeyedSubscript:@"channels"];

    commandParams20 = [(FMDCommandHandler *)self commandParams];
    v46 = [commandParams20 objectForKey:@"userConfirmedSafetyWarning"];
    bOOLValue2 = [v46 BOOLValue];

    commandParams21 = [(FMDCommandHandler *)self commandParams];
    v48 = [commandParams21 objectForKey:@"forceConnection"];
    bOOLValue3 = [v48 BOOLValue];

    commandParams22 = [(FMDCommandHandler *)self commandParams];
    v50 = [commandParams22 objectForKey:@"inEarDetectionTimeout"];

    if ([fm_nullToNil length])
    {
      v136 = v29;

      v51 = sub_100002880();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v162 = fm_nullToNil;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "CommandHandlerMessage for accessory %@", buf, 0xCu);
      }

      v52 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [provider accessoryRegistry];
      v135 = v52;
      v54 = [accessoryRegistry accessoryForIdentifier:v52];

      v55 = sub_100002880();
      v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
      if (v54)
      {
        v131 = v40;
        v132 = v50;
        if (v56)
        {
          *buf = 138412546;
          v162 = v54;
          v163 = 2112;
          v164 = fm_nullToNil;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "CommandHandlerMessage Found accessory %@ for id %@", buf, 0x16u);
        }

        commandContext = [v54 commandContext];
        pendingActionUUID = [commandContext pendingActionUUID];

        supportedAccessoryRegistry = [provider supportedAccessoryRegistry];
        v59 = [supportedAccessoryRegistry defaultTimeoutAudioSafetyStatusForAccessory:v54];

        v55 = [provider futureForCommandId:v142];
        v60 = sub_100002880();
        v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
        if (v55)
        {
          if (v61)
          {
            fm_logID = [(FMDCommandHandler *)self fm_logID];
            *buf = 138412546;
            v162 = fm_logID;
            v163 = 2112;
            v164 = v142;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%@ Found an existing future for command %@", buf, 0x16u);
          }
        }

        else
        {
          v141 = v4;
          if (v61)
          {
            fm_logID2 = [(FMDCommandHandler *)self fm_logID];
            *buf = 138412546;
            v162 = fm_logID2;
            v163 = 2112;
            v164 = v142;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%@ Creating a future for command %@", buf, 0x16u);
          }

          v55 = objc_alloc_init(FMFuture);
          [provider setFuture:v55 commandId:v142];
          supportedAccessoryRegistry2 = [provider supportedAccessoryRegistry];
          v93 = [supportedAccessoryRegistry2 playbackChannelNamesForAccessory:v54 commandChannels:v44];

          v94 = [FMDAccessoryPlaySoundAction alloc];
          accessoryRegistry2 = [provider accessoryRegistry];
          v60 = [(FMDAccessoryPlaySoundAction *)v94 initWithAccessory:v54 accessoryRegistry:accessoryRegistry2 channels:v93];

          v96 = [NSNumber numberWithInteger:v137];
          [v60 setDuration:v96];

          if (v139)
          {
            [v139 doubleValue];
            v97 = [NSNumber numberWithDouble:?];
            [v60 setTimeout:v97];
          }

          else
          {
            [v60 setTimeout:0];
          }

          v98 = [NSNumber numberWithDouble:v39];
          [v60 setRampUpDuration:v98];

          v99 = [NSNumber numberWithDouble:v42];
          [v60 setRampDownDuration:v99];

          [v60 setDefaultAudioSafetyStatus:v59];
          [v60 setForceConnection:bOOLValue3];
          [v60 setBypassInEarCheck:bOOLValue2];
          [v60 setInEarDetectionTimeout:v132];
          [v60 setFuture:v55];
          bluetoothManager = [provider bluetoothManager];
          [v60 setBluetoothManager:bluetoothManager];

          accessoryRegistry3 = [provider accessoryRegistry];
          [accessoryRegistry3 registerDelegate:v60];

          v102 = +[ActionManager sharedManager];
          v103 = [v102 enqueueAction:v60];

          v44 = v93;
          v4 = v141;
        }

        v156[0] = _NSConcreteStackBlock;
        v156[1] = 3221225472;
        v156[2] = sub_100162E70;
        v156[3] = &unk_1002CF140;
        v156[4] = self;
        v157 = v142;
        v158 = provider;
        v159 = pendingActionUUID;
        v160 = v54;
        v104 = pendingActionUUID;
        v105 = [v55 addCompletionBlock:v156];

        v40 = v131;
        v50 = v132;
      }

      else if (v56)
      {
        *buf = 138412290;
        v162 = fm_nullToNil;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "No accessory found with id %@. Ignoring the message", buf, 0xCu);
      }

      v22 = 0;
      v29 = v136;
    }

    else
    {
      [(FMDMessage *)v22 setPlaySound:1];
      [(FMDMessage *)v22 setSoundName:@"fmd_sound"];
      [(FMDMessage *)v22 setSoundDuration:v137];
      [(FMDMessage *)v22 setIsHighPrioritySound:1];
      [(FMDMessage *)v22 setIsFmipSound:1];
    }

    v6 = v143;
    v24 = v146;
  }

  if (v22)
  {
    commandParams23 = [(FMDCommandHandler *)self commandParams];
    v107 = [commandParams23 objectForKeyedSubscript:@"text"];

    if (v107)
    {
      [(FMDMessage *)v22 setShowMessage:1];
      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces5 = [v107 fm_stringByReplacingNonBreakingSpaces];
        [(FMDMessage *)v22 setMsgText:fm_stringByReplacingNonBreakingSpaces5];
      }

      else
      {
        [(FMDMessage *)v22 setMsgText:v107];
      }

      commandParams24 = [(FMDCommandHandler *)self commandParams];
      v110 = [commandParams24 objectForKeyedSubscript:@"title"];

      if (v6)
      {
        fm_stringByReplacingNonBreakingSpaces6 = [v110 fm_stringByReplacingNonBreakingSpaces];
        [(FMDMessage *)v22 setMsgTitle:fm_stringByReplacingNonBreakingSpaces6];
      }

      else
      {
        [(FMDMessage *)v22 setMsgTitle:v110];
      }

      v147 = v24;
      [(FMDMessage *)v22 setShowMsgInLockScreen:1];
      [(FMDMessage *)v22 setDismissMsgOnUnlock:0];
      [(FMDMessage *)v22 setDismissMsgOnLock:0];
      commandParams25 = [(FMDCommandHandler *)self commandParams];
      v113 = [commandParams25 objectForKeyedSubscript:@"okButtonTitle"];
      [(FMDMessage *)v22 setDefaultButtonTitle:v113];

      commandParams26 = [(FMDCommandHandler *)self commandParams];
      v115 = [commandParams26 objectForKeyedSubscript:@"okButtonAction"];

      if (v115)
      {
        commandParams27 = [(FMDCommandHandler *)self commandParams];
        v117 = [commandParams27 objectForKeyedSubscript:@"okButtonURL"];

        [provider alertActionInfoForAction:v115 andURL:v117];
        v154[0] = _NSConcreteStackBlock;
        v154[1] = 3221225472;
        v154[2] = sub_1001630CC;
        v155 = v154[3] = &unk_1002CD4C8;
        v118 = v155;
        [(FMDMessage *)v22 setDefaultButtonAction:v154];
      }

      commandParams28 = [(FMDCommandHandler *)self commandParams];
      v120 = [commandParams28 objectForKeyedSubscript:@"cancelButtonTitle"];
      [(FMDMessage *)v22 setAlternateButtonTitle:v120];

      commandParams29 = [(FMDCommandHandler *)self commandParams];
      v122 = [commandParams29 objectForKeyedSubscript:@"cancelButtonAction"];

      if (v122)
      {
        commandParams30 = [(FMDCommandHandler *)self commandParams];
        v124 = [commandParams30 objectForKeyedSubscript:@"cancelButtonURL"];

        [provider alertActionInfoForAction:v122 andURL:v124];
        v152[0] = _NSConcreteStackBlock;
        v152[1] = 3221225472;
        v152[2] = sub_100163184;
        v153 = v152[3] = &unk_1002CD4C8;
        v125 = v153;
        [(FMDMessage *)v22 setAlternateButtonAction:v152];
      }

      v24 = v147;
    }

    commandParams31 = [(FMDCommandHandler *)self commandParams];
    v127 = [commandParams31 objectForKeyedSubscript:@"vibrate"];

    if ([v127 BOOLValue])
    {
      [(FMDMessage *)v22 setVibrate:1];
    }

    v128 = +[FMDLostModeManager sharedInstance];
    lostModeEnabled = [v128 lostModeEnabled];

    if (lostModeEnabled)
    {
      [(FMDMessage *)v22 setShowMessage:0];
    }

    if ([(FMDMessage *)v22 showMessage]|| [(FMDMessage *)v22 playSound])
    {
      [(FMDMessage *)v22 activate];
    }

    [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
  }

LABEL_96:
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams objectForKeyedSubscript:@"ackURL"];

  provider = [(FMDCommandHandler *)self provider];
  if (v6)
  {
    v8 = [NSURL URLWithString:v6];
    ackDataForCommand = [(FMDCommandHandler *)self ackDataForCommand];
    v10 = [ackDataForCommand objectForKeyedSubscript:@"status"];
    if (v10)
    {
      v11 = [ackDataForCommand objectForKeyedSubscript:@"status"];
      intValue = [v11 intValue];
    }

    else
    {
      intValue = 200;
    }

    v42 = [ackDataForCommand objectForKeyedSubscript:@"safetyAlertType"];
    v41 = [ackDataForCommand objectForKeyedSubscript:@"timeoutError"];
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v13 = [commandParams2 objectForKey:@"udid"];
    fm_nullToNil = [v13 fm_nullToNil];

    v39 = fm_nullToNil;
    v40 = ackDataForCommand;
    if ([fm_nullToNil length])
    {
      v15 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [provider accessoryRegistry];
      v17 = [accessoryRegistry accessoryForIdentifier:v15];
    }

    else
    {
      v17 = 0;
    }

    v18 = [FMDActingRequestDecorator alloc];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100163890;
    v46[3] = &unk_1002CDF18;
    v19 = v17;
    v47 = v19;
    v20 = provider;
    v48 = v20;
    v21 = [(FMDActingRequestDecorator *)v18 initWithDeviceContextGenerator:&stru_1002CF160 deviceInfoGenerator:v46 serverContextGenerator:0 requestHeaderGenerator:0];
    v22 = [FMDRequestAckMessage alloc];
    account = [v20 account];
    commandParams3 = [(FMDCommandHandler *)self commandParams];
    v25 = [(FMDRequestAckMessage *)v22 initWithAccount:account messageCommand:commandParams3 cmdStatusCode:intValue ackURL:v8];

    [(FMDRequestAckMessage *)v25 setTimeoutError:v41];
    [(FMDRequestAckMessage *)v25 setSafetyAlertType:v42];
    [(FMDRequest *)v25 setDecorator:v21];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10016392C;
    v44[3] = &unk_1002CD1D0;
    v45 = completionCopy;
    [(FMDRequest *)v25 setCompletionHandler:v44];
    if (v19)
    {
      v26 = [FMDNetworkAction alloc];
      v27 = [v20 serverInteractionControllerForAccessory:v19];
      v28 = [(FMDNetworkAction *)v26 initWithRequest:v25 andServerInteractionController:v27];

      v29 = +[FMDOperationManager sharedManager];
      accessoryIdentifier = [v19 accessoryIdentifier];
      [accessoryIdentifier stringValue];
      v38 = v19;
      v31 = v21;
      v32 = v8;
      v33 = v6;
      v34 = provider;
      v36 = v35 = completionCopy;
      [v29 addAction:v28 forIdentifier:v36];

      completionCopy = v35;
      provider = v34;
      v6 = v33;
      v8 = v32;
      v21 = v31;
      v19 = v38;
    }

    else
    {
      [v20 enqueueRequest:v25];
    }
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not acking the message command because there is no ack URL", buf, 2u);
    }
  }
}

- (BOOL)shouldHonorSecureMessage
{
  v2 = +[FMDLostModeManager sharedInstance];
  lostModeEnabled = [v2 lostModeEnabled];

  return lostModeEnabled ^ 1;
}

- (BOOL)shouldShowLockScreenMessage
{
  v2 = MKBGetDeviceLockState();
  if (v2)
  {
    v3 = v2 == 3;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)showSecureMessage:(id)message andLockScreenMessage:(id)screenMessage
{
  messageCopy = message;
  screenMessageCopy = screenMessage;
  if (screenMessageCopy)
  {
    provider = [(FMDCommandHandler *)self provider];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [provider setPendingSecureMessage:messageCopy];
    }

    v8 = +[FMAlertManager sharedInstance];
    [v8 activateAlert:screenMessageCopy];
  }

  else
  {
    provider = +[FMAlertManager sharedInstance];
    [provider activateAlert:messageCopy];
  }
}

@end