@interface DMDAirPlayManager
+ (DMDAirPlayManager)shared;
- (BOOL)_setOutputDevices:(id)a3 forSessionType:(unint64_t)a4 password:(id)a5 error:(id *)a6;
- (BOOL)startAirPlaySessionWithDestinationName:(id)a3 destinationDeviceID:(id)a4 password:(id)a5 scanWaitTime:(double)a6 sessionType:(unint64_t)a7 force:(BOOL)a8 error:(id *)a9;
- (id)_discoverDeviceWithDestinationDeviceID:(id)a3 scanWaitTime:(double)a4 error:(id *)a5;
- (id)_discoverDeviceWithDestinationName:(id)a3 scanWaitTime:(double)a4 sessionType:(unint64_t)a5;
- (id)_messageForAirPlayPromptOnDisplayNamed:(id)a3;
- (id)initPrivate;
- (void)_outputContextForSessionType:(unint64_t)a3;
- (void)_promptUserToMirrorOnDisplayNamed:(id)a3 withCompletion:(id)a4;
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

- (BOOL)startAirPlaySessionWithDestinationName:(id)a3 destinationDeviceID:(id)a4 password:(id)a5 scanWaitTime:(double)a6 sessionType:(unint64_t)a7 force:(BOOL)a8 error:(id *)a9
{
  v10 = a8;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  if (!(v17 | v18))
  {
    sub_10007C63C(a2, self);
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_10000F0BC;
  v53 = sub_10000F0CC;
  v54 = 0;
  v20 = 10.0;
  if (a6 >= 10.0)
  {
    v20 = a6;
    if (a6 > 500.0)
    {
      v20 = 500.0;
    }
  }

  if ([(DMDAirPlayManager *)self _outputContextForSessionType:a7])
  {
    v21 = MRAVOutputContextCopyOutputDevices();
    if ([v21 count])
    {
      v22 = [v21 firstObject];
      v23 = MRAVOutputDeviceCopyName();
      [(DMDAirPlayManager *)self setCurrentlyPickedDestinationName:v23];

      v24 = [v21 firstObject];
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
  if (v18)
  {
    v26 = [(DMDAirPlayManager *)self currentlyPickedDestinationDeviceID];
    v27 = [v26 isEqualToString:v18];

    if (v27)
    {
      v28 = 0;
LABEL_20:
      v33 = 1;
      goto LABEL_26;
    }

    if ([v18 containsString:@":"])
    {
      self->mDeviceIDIsMAC = 1;
      v29 = v18;

      v28 = 0;
      v17 = v29;
    }

    else
    {
      v30 = (v50 + 5);
      obj = v50[5];
      v28 = [(DMDAirPlayManager *)self _discoverDeviceWithDestinationDeviceID:v18 scanWaitTime:&obj error:v20];
      objc_storeStrong(v30, obj);
      if (!v17)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v28 = 0;
    if (!v17)
    {
      goto LABEL_22;
    }
  }

  v31 = [(DMDAirPlayManager *)self currentlyPickedDestinationName];
  v32 = [v31 isEqualToString:v17];

  if (v32)
  {
    goto LABEL_20;
  }

  v34 = [(DMDAirPlayManager *)self _discoverDeviceWithDestinationName:v17 scanWaitTime:a7 sessionType:v20];

  v28 = v34;
LABEL_22:
  if (!v50[5])
  {
    if ([v28 count])
    {
      if (v10)
      {
        v37 = (v50 + 5);
        v47 = v50[5];
        [(DMDAirPlayManager *)self _setOutputDevices:v28 forSessionType:a7 password:v19 error:&v47];
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
        v46 = a7;
        v44 = v19;
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
  if (a9)
  {
    *a9 = v50[5];
    v35 = v50;
  }

  v33 = v35[5] == 0;
LABEL_26:

  _Block_object_dispose(&v49, 8);
  return v33;
}

- (void)_outputContextForSessionType:(unint64_t)a3
{
  switch(a3)
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

- (BOOL)_setOutputDevices:(id)a3 forSessionType:(unint64_t)a4 password:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(DMDAirPlayManager *)self _outputContextForSessionType:a4];
  v13 = objc_opt_new();
  v14 = v13;
  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:@"AVOutputContextSetOutputDevicePasswordKey"];
  }

  if (!v12)
  {
    v20 = DMFErrorWithCodeAndUserInfo();
    if (!a6)
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
    v17 = [v10 firstObject];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if (v16)
    {
      v18 = [v10 firstObject];
      v19 = [v18 valueForKey:@"avOutputDevice"];
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
  if (a6)
  {
LABEL_14:
    v22 = v20;
    *a6 = v20;
  }

LABEL_15:

  return v20 == 0;
}

- (void)_promptUserToMirrorOnDisplayNamed:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
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

  v14 = [(DMDAirPlayManager *)self _messageForAirPlayPromptOnDisplayNamed:v7];

  [v16 setMessage:v14];
  v15 = +[DMDUserNotificationController sharedController];
  [v15 showNotification:v16 completion:v6];
}

- (id)_messageForAirPlayPromptOnDisplayNamed:(id)a3
{
  v3 = a3;
  v4 = +[DMDDeviceController shared];
  v5 = [v4 deviceType];
  v6 = [v5 unsignedIntegerValue];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = v7;
  if ((v6 - 1) > 7)
  {
    v9 = @"Would you like to display your device’s screen on “%@”?";
  }

  else
  {
    v9 = *(&off_1000CDD80 + (v6 - 1));
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_1000D0428 table:@"DMFNotifications"];
  v11 = [NSString stringWithFormat:v10, v3];

  return v11;
}

- (id)_discoverDeviceWithDestinationDeviceID:(id)a3 scanWaitTime:(double)a4 error:(id *)a5
{
  v7 = a3;
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
  v30 = v7;
  [NSArray arrayWithObjects:&v30 count:1];
  v8 = MRAVReconnaissanceSessionCreateWithEndpointFeatures();
  MRAVReconnaissanceSessionSetUseWeakMatching();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F880;
  block[3] = &unk_1000CDD38;
  v19 = a4;
  v16 = &v20;
  v17 = &v24;
  v18 = v8;
  v9 = dispatch_semaphore_create(0);
  v15 = v9;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  CFRelease(v8);
  v10 = v21[3];
  if (a5)
  {
    *a5 = v25[5];
  }

  v11 = v15;
  v12 = v10;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (id)_discoverDeviceWithDestinationName:(id)a3 scanWaitTime:(double)a4 sessionType:(unint64_t)a5
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000F0BC;
  v19 = sub_10000F0CC;
  v20 = 0;
  v7 = MRAVRoutingDiscoverySessionCreate();
  MRAVRoutingDiscoverySessionSetDiscoveryMode();
  v8 = dispatch_semaphore_create(0);
  v9 = v6;
  v10 = v8;
  v11 = MRAVRoutingDiscoverySessionAddOutputDevicesChangedCallback();
  v12 = dispatch_time(0, (a4 * 1000000000.0));
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