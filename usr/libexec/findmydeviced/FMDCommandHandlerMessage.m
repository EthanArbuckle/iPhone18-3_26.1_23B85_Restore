@interface FMDCommandHandlerMessage
- (BOOL)shouldHonorSecureMessage;
- (BOOL)shouldShowLockScreenMessage;
- (FMDCommandHandlerMessage)initWithParams:(id)a3 provider:(id)a4;
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)a3;
- (void)showSecureMessage:(id)a3 andLockScreenMessage:(id)a4;
@end

@implementation FMDCommandHandlerMessage

- (FMDCommandHandlerMessage)initWithParams:(id)a3 provider:(id)a4
{
  v7.receiver = self;
  v7.super_class = FMDCommandHandlerMessage;
  v4 = [(FMDCommandHandler *)&v7 initWithParams:a3 provider:a4];
  v5 = v4;
  if (v4)
  {
    [(FMDCommandHandler *)v4 setRequiresAsynchronousAck:1];
  }

  return v5;
}

- (void)handleCommand
{
  v3 = [(FMDCommandHandler *)self commandParams];
  v4 = [v3 objectForKeyedSubscript:@"secureMsg"];

  v5 = [v4 BOOLValue];
  v6 = +[FMDPreferencesMgr accessibilityFontSizeEnabled];
  v7 = [(FMDCommandHandler *)self provider];
  v8 = sub_100002880();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received a secure message", buf, 2u);
    }

    v10 = [(FMDCommandHandlerMessage *)self shouldHonorSecureMessage];
    v11 = sub_100002880();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!v10)
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

    v13 = [(FMDCommandHandler *)self commandParams];
    v14 = [v13 objectForKeyedSubscript:@"text"];

    v15 = [(FMDCommandHandler *)self commandParams];
    v16 = [v15 objectForKeyedSubscript:@"lockScreenText"];

    v17 = [(FMDCommandHandlerMessage *)self shouldShowLockScreenMessage];
    v18 = v17;
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
        v21 = [v14 fm_stringByReplacingNonBreakingSpaces];
        [v11 setMsgText:v21];
      }

      else
      {
        [v20 setMsgText:v14];
      }

      v63 = [(FMDCommandHandler *)self commandParams];
      v64 = [v63 objectForKeyedSubscript:@"title"];

      v144 = v6;
      if (v6)
      {
        v65 = [v64 fm_stringByReplacingNonBreakingSpaces];
        [v11 setMsgTitle:v65];
      }

      else
      {
        [v11 setMsgTitle:v64];
      }

      [v11 setShowMsgInLockScreen:[(FMDCommandHandlerMessage *)self shouldShowSecureMessageOnLockScreen]];
      [v11 setDismissMsgOnUnlock:0];
      [v11 setDismissMsgOnLock:0];
      v66 = [(FMDCommandHandler *)self commandParams];
      v67 = [v66 objectForKeyedSubscript:@"okButtonTitle"];
      [v11 setDefaultButtonTitle:v67];

      v68 = [(FMDCommandHandler *)self commandParams];
      v69 = [v68 objectForKeyedSubscript:@"okButtonAction"];

      if (v69)
      {
        v70 = [(FMDCommandHandler *)self commandParams];
        v71 = [v70 objectForKeyedSubscript:@"okButtonURL"];

        [v7 alertActionInfoForAction:v69 andURL:v71];
        v150[0] = _NSConcreteStackBlock;
        v150[1] = 3221225472;
        v150[2] = sub_10016323C;
        v151 = v150[3] = &unk_1002CD4C8;
        v72 = v151;
        [v11 setDefaultButtonAction:v150];
      }

      v73 = [(FMDCommandHandler *)self commandParams];
      v74 = [v73 objectForKeyedSubscript:@"cancelButtonTitle"];
      [v11 setAlternateButtonTitle:v74];

      v75 = [(FMDCommandHandler *)self commandParams];
      v76 = [v75 objectForKeyedSubscript:@"cancelButtonAction"];

      if (v76)
      {
        v77 = [(FMDCommandHandler *)self commandParams];
        [v77 objectForKeyedSubscript:@"cancelButtonURL"];
        v140 = v4;
        v78 = v64;
        v79 = v14;
        v81 = v80 = v18;

        [v7 alertActionInfoForAction:v76 andURL:v81];
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
      if (!v17)
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
        v87 = [v16 fm_stringByReplacingNonBreakingSpaces];
        [v86 setMsgText:v87];
      }

      else
      {
        [v85 setMsgText:v16];
      }

      v88 = [(FMDCommandHandler *)self commandParams];
      v89 = [v88 objectForKeyedSubscript:@"lockScreenTitle"];

      if (v6)
      {
        v90 = [v89 fm_stringByReplacingNonBreakingSpaces];
        [v86 setMsgTitle:v90];
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
  v23 = [(FMDCommandHandler *)self commandParams];
  v24 = [v23 objectForKeyedSubscript:@"sound"];

  if ([v24 BOOLValue])
  {
    v25 = [(FMDCommandHandler *)self commandParams];
    v26 = [v25 objectForKey:@"udid"];
    v27 = [v26 fm_nullToNil];

    v28 = [(FMDCommandHandler *)self commandParams];
    v29 = [v28 objectForKeyedSubscript:@"durationInSeconds"];

    if (v29)
    {
      v30 = [v29 intValue];
    }

    else
    {
      v30 = 120;
    }

    v137 = v30;
    v143 = v6;
    v31 = sub_100002880();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v162 = v27;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Message command for accessory %@", buf, 0xCu);
    }

    v32 = [(FMDCommandHandler *)self commandParams];
    v142 = [v32 objectForKeyedSubscript:@"id"];

    v33 = [(FMDCommandHandler *)self commandParams];
    v139 = [v33 objectForKeyedSubscript:@"scanDuration"];

    v34 = [(FMDCommandHandler *)self commandParams];
    v35 = [v34 objectForKeyedSubscript:@"rampUpDurationInSeconds"];

    v36 = [(FMDCommandHandler *)self commandParams];
    v37 = [v36 objectForKeyedSubscript:@"rampDownDurationInSeconds"];

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

    v43 = [(FMDCommandHandler *)self commandParams];
    v44 = [v43 objectForKeyedSubscript:@"channels"];

    v45 = [(FMDCommandHandler *)self commandParams];
    v46 = [v45 objectForKey:@"userConfirmedSafetyWarning"];
    v134 = [v46 BOOLValue];

    v47 = [(FMDCommandHandler *)self commandParams];
    v48 = [v47 objectForKey:@"forceConnection"];
    v133 = [v48 BOOLValue];

    v49 = [(FMDCommandHandler *)self commandParams];
    v50 = [v49 objectForKey:@"inEarDetectionTimeout"];

    if ([v27 length])
    {
      v136 = v29;

      v51 = sub_100002880();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v162 = v27;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "CommandHandlerMessage for accessory %@", buf, 0xCu);
      }

      v52 = [[FMDAccessoryIdentifier alloc] initWithString:v27];
      v53 = [v7 accessoryRegistry];
      v135 = v52;
      v54 = [v53 accessoryForIdentifier:v52];

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
          v164 = v27;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "CommandHandlerMessage Found accessory %@ for id %@", buf, 0x16u);
        }

        v57 = [v54 commandContext];
        v130 = [v57 pendingActionUUID];

        v58 = [v7 supportedAccessoryRegistry];
        v59 = [v58 defaultTimeoutAudioSafetyStatusForAccessory:v54];

        v55 = [v7 futureForCommandId:v142];
        v60 = sub_100002880();
        v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
        if (v55)
        {
          if (v61)
          {
            v62 = [(FMDCommandHandler *)self fm_logID];
            *buf = 138412546;
            v162 = v62;
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
            v91 = [(FMDCommandHandler *)self fm_logID];
            *buf = 138412546;
            v162 = v91;
            v163 = 2112;
            v164 = v142;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%@ Creating a future for command %@", buf, 0x16u);
          }

          v55 = objc_alloc_init(FMFuture);
          [v7 setFuture:v55 commandId:v142];
          v92 = [v7 supportedAccessoryRegistry];
          v93 = [v92 playbackChannelNamesForAccessory:v54 commandChannels:v44];

          v94 = [FMDAccessoryPlaySoundAction alloc];
          v95 = [v7 accessoryRegistry];
          v60 = [(FMDAccessoryPlaySoundAction *)v94 initWithAccessory:v54 accessoryRegistry:v95 channels:v93];

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
          [v60 setForceConnection:v133];
          [v60 setBypassInEarCheck:v134];
          [v60 setInEarDetectionTimeout:v132];
          [v60 setFuture:v55];
          v100 = [v7 bluetoothManager];
          [v60 setBluetoothManager:v100];

          v101 = [v7 accessoryRegistry];
          [v101 registerDelegate:v60];

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
        v158 = v7;
        v159 = v130;
        v160 = v54;
        v104 = v130;
        v105 = [v55 addCompletionBlock:v156];

        v40 = v131;
        v50 = v132;
      }

      else if (v56)
      {
        *buf = 138412290;
        v162 = v27;
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
    v106 = [(FMDCommandHandler *)self commandParams];
    v107 = [v106 objectForKeyedSubscript:@"text"];

    if (v107)
    {
      [(FMDMessage *)v22 setShowMessage:1];
      if (v6)
      {
        v108 = [v107 fm_stringByReplacingNonBreakingSpaces];
        [(FMDMessage *)v22 setMsgText:v108];
      }

      else
      {
        [(FMDMessage *)v22 setMsgText:v107];
      }

      v109 = [(FMDCommandHandler *)self commandParams];
      v110 = [v109 objectForKeyedSubscript:@"title"];

      if (v6)
      {
        v111 = [v110 fm_stringByReplacingNonBreakingSpaces];
        [(FMDMessage *)v22 setMsgTitle:v111];
      }

      else
      {
        [(FMDMessage *)v22 setMsgTitle:v110];
      }

      v147 = v24;
      [(FMDMessage *)v22 setShowMsgInLockScreen:1];
      [(FMDMessage *)v22 setDismissMsgOnUnlock:0];
      [(FMDMessage *)v22 setDismissMsgOnLock:0];
      v112 = [(FMDCommandHandler *)self commandParams];
      v113 = [v112 objectForKeyedSubscript:@"okButtonTitle"];
      [(FMDMessage *)v22 setDefaultButtonTitle:v113];

      v114 = [(FMDCommandHandler *)self commandParams];
      v115 = [v114 objectForKeyedSubscript:@"okButtonAction"];

      if (v115)
      {
        v116 = [(FMDCommandHandler *)self commandParams];
        v117 = [v116 objectForKeyedSubscript:@"okButtonURL"];

        [v7 alertActionInfoForAction:v115 andURL:v117];
        v154[0] = _NSConcreteStackBlock;
        v154[1] = 3221225472;
        v154[2] = sub_1001630CC;
        v155 = v154[3] = &unk_1002CD4C8;
        v118 = v155;
        [(FMDMessage *)v22 setDefaultButtonAction:v154];
      }

      v119 = [(FMDCommandHandler *)self commandParams];
      v120 = [v119 objectForKeyedSubscript:@"cancelButtonTitle"];
      [(FMDMessage *)v22 setAlternateButtonTitle:v120];

      v121 = [(FMDCommandHandler *)self commandParams];
      v122 = [v121 objectForKeyedSubscript:@"cancelButtonAction"];

      if (v122)
      {
        v123 = [(FMDCommandHandler *)self commandParams];
        v124 = [v123 objectForKeyedSubscript:@"cancelButtonURL"];

        [v7 alertActionInfoForAction:v122 andURL:v124];
        v152[0] = _NSConcreteStackBlock;
        v152[1] = 3221225472;
        v152[2] = sub_100163184;
        v153 = v152[3] = &unk_1002CD4C8;
        v125 = v153;
        [(FMDMessage *)v22 setAlternateButtonAction:v152];
      }

      v24 = v147;
    }

    v126 = [(FMDCommandHandler *)self commandParams];
    v127 = [v126 objectForKeyedSubscript:@"vibrate"];

    if ([v127 BOOLValue])
    {
      [(FMDMessage *)v22 setVibrate:1];
    }

    v128 = +[FMDLostModeManager sharedInstance];
    v129 = [v128 lostModeEnabled];

    if (v129)
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

- (void)sendAckWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FMDCommandHandler *)self commandParams];
  v6 = [v5 objectForKeyedSubscript:@"ackURL"];

  v7 = [(FMDCommandHandler *)self provider];
  if (v6)
  {
    v8 = [NSURL URLWithString:v6];
    v9 = [(FMDCommandHandler *)self ackDataForCommand];
    v10 = [v9 objectForKeyedSubscript:@"status"];
    if (v10)
    {
      v11 = [v9 objectForKeyedSubscript:@"status"];
      v37 = [v11 intValue];
    }

    else
    {
      v37 = 200;
    }

    v42 = [v9 objectForKeyedSubscript:@"safetyAlertType"];
    v41 = [v9 objectForKeyedSubscript:@"timeoutError"];
    v12 = [(FMDCommandHandler *)self commandParams];
    v13 = [v12 objectForKey:@"udid"];
    v14 = [v13 fm_nullToNil];

    v39 = v14;
    v40 = v9;
    if ([v14 length])
    {
      v15 = [[FMDAccessoryIdentifier alloc] initWithString:v14];
      v16 = [v7 accessoryRegistry];
      v17 = [v16 accessoryForIdentifier:v15];
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
    v20 = v7;
    v48 = v20;
    v21 = [(FMDActingRequestDecorator *)v18 initWithDeviceContextGenerator:&stru_1002CF160 deviceInfoGenerator:v46 serverContextGenerator:0 requestHeaderGenerator:0];
    v22 = [FMDRequestAckMessage alloc];
    v23 = [v20 account];
    v24 = [(FMDCommandHandler *)self commandParams];
    v25 = [(FMDRequestAckMessage *)v22 initWithAccount:v23 messageCommand:v24 cmdStatusCode:v37 ackURL:v8];

    [(FMDRequestAckMessage *)v25 setTimeoutError:v41];
    [(FMDRequestAckMessage *)v25 setSafetyAlertType:v42];
    [(FMDRequest *)v25 setDecorator:v21];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10016392C;
    v44[3] = &unk_1002CD1D0;
    v45 = v4;
    [(FMDRequest *)v25 setCompletionHandler:v44];
    if (v19)
    {
      v26 = [FMDNetworkAction alloc];
      v27 = [v20 serverInteractionControllerForAccessory:v19];
      v28 = [(FMDNetworkAction *)v26 initWithRequest:v25 andServerInteractionController:v27];

      v29 = +[FMDOperationManager sharedManager];
      v30 = [v19 accessoryIdentifier];
      [v30 stringValue];
      v38 = v19;
      v31 = v21;
      v32 = v8;
      v33 = v6;
      v34 = v7;
      v36 = v35 = v4;
      [v29 addAction:v28 forIdentifier:v36];

      v4 = v35;
      v7 = v34;
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
  v3 = [v2 lostModeEnabled];

  return v3 ^ 1;
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

- (void)showSecureMessage:(id)a3 andLockScreenMessage:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(FMDCommandHandler *)self provider];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setPendingSecureMessage:v9];
    }

    v8 = +[FMAlertManager sharedInstance];
    [v8 activateAlert:v6];
  }

  else
  {
    v7 = +[FMAlertManager sharedInstance];
    [v7 activateAlert:v9];
  }
}

@end