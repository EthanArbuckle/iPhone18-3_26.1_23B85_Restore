@interface DMDAirPlayManager
+ (DMDAirPlayManager)shared;
- (BOOL)_setOutputDevices:(id)devices forSessionType:(unint64_t)type password:(id)password error:(id *)error;
- (BOOL)startAirPlaySessionWithDestinationName:(id)name destinationDeviceID:(id)d password:(id)password scanWaitTime:(double)time sessionType:(unint64_t)type force:(BOOL)force error:(id *)error;
- (id)_discoverDeviceWithDestinationDeviceID:(id)d scanWaitTime:(double)time error:(id *)error;
- (id)_discoverDeviceWithDestinationName:(id)name scanWaitTime:(double)time sessionType:(unint64_t)type;
- (id)_messageForAirPlayPromptOnDisplayNamed:(id)named;
- (id)initPrivate;
- (void)_outputContextForSessionType:(unint64_t)type;
- (void)_promptUserToMirrorOnDisplayNamed:(id)named withCompletion:(id)completion;
@end

@implementation DMDAirPlayManager

+ (DMDAirPlayManager)shared
{
  if (qword_1000FEF28 != -1)
  {
    sub_10007C628();
  }

  v3 = qword_1000FEF20;

  return v3;
}

- (id)initPrivate
{
  v7.receiver = self;
  v7.super_class = DMDAirPlayManager;
  v2 = [(DMDAirPlayManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    currentlyPickedDestinationName = v2->_currentlyPickedDestinationName;
    v2->_currentlyPickedDestinationName = 0;

    currentlyPickedDestinationDeviceID = v3->_currentlyPickedDestinationDeviceID;
    v3->_currentlyPickedDestinationDeviceID = 0;
  }

  return v3;
}

- (BOOL)startAirPlaySessionWithDestinationName:(id)name destinationDeviceID:(id)d password:(id)password scanWaitTime:(double)time sessionType:(unint64_t)type force:(BOOL)force error:(id *)error
{
  forceCopy = force;
  nameCopy = name;
  dCopy = d;
  passwordCopy = password;
  if (!(nameCopy | dCopy))
  {
    sub_10007C63C(a2, self);
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_10000F0BC;
  v53 = sub_10000F0CC;
  v54 = 0;
  timeCopy = 10.0;
  if (time >= 10.0)
  {
    timeCopy = time;
    if (time > 500.0)
    {
      timeCopy = 500.0;
    }
  }

  if ([(DMDAirPlayManager *)self _outputContextForSessionType:type])
  {
    v21 = MRAVOutputContextCopyOutputDevices();
    if ([v21 count])
    {
      firstObject = [v21 firstObject];
      v23 = MRAVOutputDeviceCopyName();
      [(DMDAirPlayManager *)self setCurrentlyPickedDestinationName:v23];

      firstObject2 = [v21 firstObject];
      v25 = MRAVOutputDeviceCopyUniqueIdentifier();
      [(DMDAirPlayManager *)self setCurrentlyPickedDestinationDeviceID:v25];
    }

    else
    {
      [(DMDAirPlayManager *)self setCurrentlyPickedDestinationDeviceID:0];
      [(DMDAirPlayManager *)self setCurrentlyPickedDestinationName:0];
    }
  }

  self->mDeviceIDIsMAC = 0;
  if (dCopy)
  {
    currentlyPickedDestinationDeviceID = [(DMDAirPlayManager *)self currentlyPickedDestinationDeviceID];
    v27 = [currentlyPickedDestinationDeviceID isEqualToString:dCopy];

    if (v27)
    {
      v28 = 0;
LABEL_20:
      v33 = 1;
      goto LABEL_26;
    }

    if ([dCopy containsString:@":"])
    {
      self->mDeviceIDIsMAC = 1;
      v29 = dCopy;

      v28 = 0;
      nameCopy = v29;
    }

    else
    {
      v30 = (v50 + 5);
      obj = v50[5];
      v28 = [(DMDAirPlayManager *)self _discoverDeviceWithDestinationDeviceID:dCopy scanWaitTime:&obj error:timeCopy];
      objc_storeStrong(v30, obj);
      if (!nameCopy)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v28 = 0;
    if (!nameCopy)
    {
      goto LABEL_22;
    }
  }

  currentlyPickedDestinationName = [(DMDAirPlayManager *)self currentlyPickedDestinationName];
  v32 = [currentlyPickedDestinationName isEqualToString:nameCopy];

  if (v32)
  {
    goto LABEL_20;
  }

  v34 = [(DMDAirPlayManager *)self _discoverDeviceWithDestinationName:nameCopy scanWaitTime:type sessionType:timeCopy];

  v28 = v34;
LABEL_22:
  if (!v50[5])
  {
    if ([v28 count])
    {
      if (forceCopy)
      {
        v37 = (v50 + 5);
        v47 = v50[5];
        [(DMDAirPlayManager *)self _setOutputDevices:v28 forSessionType:type password:passwordCopy error:&v47];
        objc_storeStrong(v37, v47);
      }

      else
      {
        v40 = [v28 objectAtIndexedSubscript:0];
        v41 = MRAVOutputDeviceCopyName();
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10000F0D4;
        v42[3] = &unk_1000CDCE8;
        v42[4] = self;
        v43 = v28;
        typeCopy = type;
        v44 = passwordCopy;
        v45 = &v49;
        [(DMDAirPlayManager *)self _promptUserToMirrorOnDisplayNamed:v41 withCompletion:v42];
      }
    }

    else
    {
      v38 = DMFErrorWithCodeAndUserInfo();
      v39 = v50[5];
      v50[5] = v38;
    }
  }

  v35 = v50;
  if (error)
  {
    *error = v50[5];
    v35 = v50;
  }

  v33 = v35[5] == 0;
LABEL_26:

  _Block_object_dispose(&v49, 8);
  return v33;
}

- (void)_outputContextForSessionType:(unint64_t)type
{
  switch(type)
  {
    case 3uLL:
      return _MRAVOutputContextGetSharedSystemScreenContext(self, a2);
    case 2uLL:
      return _MRAVOutputContextGetSharedSystemAudioContext(self, a2);
    case 1uLL:
      return _MRAVOutputContextGetSharedAudioPresentationContext(self, a2);
  }

  return 0;
}

- (BOOL)_setOutputDevices:(id)devices forSessionType:(unint64_t)type password:(id)password error:(id *)error
{
  devicesCopy = devices;
  passwordCopy = password;
  v12 = [(DMDAirPlayManager *)self _outputContextForSessionType:type];
  v13 = objc_opt_new();
  v14 = v13;
  if (passwordCopy)
  {
    [v13 setObject:passwordCopy forKeyedSubscript:@"AVOutputContextSetOutputDevicePasswordKey"];
  }

  if (!v12)
  {
    v20 = DMFErrorWithCodeAndUserInfo();
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  NSSelectorFromString(@"avOutputContext");
  if (objc_opt_respondsToSelector())
  {
    v15 = [v12 valueForKey:@"avOutputContext"];
    v16 = [NSNumber numberWithInt:getpid()];
    [v15 setValue:v16 forKey:@"applicationProcessID"];

    NSSelectorFromString(@"avOutputDevice");
    firstObject = [devicesCopy firstObject];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if (v16)
    {
      firstObject2 = [devicesCopy firstObject];
      v19 = [firstObject2 valueForKey:@"avOutputDevice"];
    }

    else
    {
      v19 = 0;
    }

    v21 = NSSelectorFromString(@"setOutputDevice:options:");
    if (objc_opt_respondsToSelector())
    {
      ([v15 methodForSelector:v21])(v15, v21, v19, v14);
    }
  }

  v20 = 0;
  if (error)
  {
LABEL_14:
    v22 = v20;
    *error = v20;
  }

LABEL_15:

  return v20 == 0;
}

- (void)_promptUserToMirrorOnDisplayNamed:(id)named withCompletion:(id)completion
{
  completionCopy = completion;
  namedCopy = named;
  v16 = objc_opt_new();
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"AirPlay" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v16 setHeader:v9];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Display" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v16 setDefaultButtonTitle:v11];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"Cancel" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v16 setAlternateButtonTitle:v13];

  v14 = [(DMDAirPlayManager *)self _messageForAirPlayPromptOnDisplayNamed:namedCopy];

  [v16 setMessage:v14];
  v15 = +[DMDUserNotificationController sharedController];
  [v15 showNotification:v16 completion:completionCopy];
}

- (id)_messageForAirPlayPromptOnDisplayNamed:(id)named
{
  namedCopy = named;
  v4 = +[DMDDeviceController shared];
  deviceType = [v4 deviceType];
  unsignedIntegerValue = [deviceType unsignedIntegerValue];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = v7;
  if ((unsignedIntegerValue - 1) > 7)
  {
    v9 = @"Would you like to display your device’s screen on “%@”?";
  }

  else
  {
    v9 = *(&off_1000CDD80 + (unsignedIntegerValue - 1));
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_1000D0428 table:@"DMFNotifications"];
  namedCopy = [NSString stringWithFormat:v10, namedCopy];

  return namedCopy;
}

- (id)_discoverDeviceWithDestinationDeviceID:(id)d scanWaitTime:(double)time error:(id *)error
{
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000F0BC;
  v28 = sub_10000F0CC;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v30 = dCopy;
  [NSArray arrayWithObjects:&v30 count:1];
  v8 = MRAVReconnaissanceSessionCreateWithEndpointFeatures();
  MRAVReconnaissanceSessionSetUseWeakMatching();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F880;
  block[3] = &unk_1000CDD38;
  timeCopy = time;
  v16 = &v20;
  v17 = &v24;
  v18 = v8;
  v9 = dispatch_semaphore_create(0);
  v15 = v9;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  CFRelease(v8);
  v10 = v21[3];
  if (error)
  {
    *error = v25[5];
  }

  v11 = v15;
  v12 = v10;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (id)_discoverDeviceWithDestinationName:(id)name scanWaitTime:(double)time sessionType:(unint64_t)type
{
  nameCopy = name;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000F0BC;
  v19 = sub_10000F0CC;
  v20 = 0;
  v7 = MRAVRoutingDiscoverySessionCreate();
  MRAVRoutingDiscoverySessionSetDiscoveryMode();
  v8 = dispatch_semaphore_create(0);
  v9 = nameCopy;
  v10 = v8;
  v11 = MRAVRoutingDiscoverySessionAddOutputDevicesChangedCallback();
  v12 = dispatch_time(0, (time * 1000000000.0));
  dispatch_semaphore_wait(v10, v12);
  if (v11)
  {
    MRAVRoutingDiscoverySessionRemoveOutputDevicesChangedCallback();
  }

  CFRelease(v7);
  v13 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v13;
}

@end