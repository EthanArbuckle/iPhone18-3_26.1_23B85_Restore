@interface RPMediaControlDaemon
- (BOOL)activateAndReturnError:(id *)a3;
- (RPMediaControlDaemon)init;
- (void)_handleCommand:(id)a3 responseHandler:(id)a4;
- (void)_handleGetVolume:(id)a3 responseHandler:(id)a4;
- (void)_handleMediaCaptionGet:(id)a3 responseHandler:(id)a4;
- (void)_handleMediaCaptionSet:(id)a3 responseHandler:(id)a4;
- (void)_handleMovementCommand:(unsigned int)a3 endCommand:(unsigned int)a4;
- (void)_handleSetVolume:(id)a3 responseHandler:(id)a4;
- (void)_handleSkipByRequest:(id)a3 responseHandler:(id)a4;
- (void)_mediaControlEnsureStarted;
- (void)_mediaControlEnsureStopped;
- (void)_mediaControlFlagsUpdate:(unint64_t)a3 mask:(unint64_t)a4;
- (void)_mediaRemoteSupportedCommandsChanged;
- (void)_mediaRemoteSupportedCommandsGet;
- (void)_mediaRemoteVolumeControlChanged:(id)a3;
- (void)_update;
- (void)deregisteredEventID:(id)a3;
- (void)invalidate;
- (void)registeredEventID:(id)a3;
@end

@implementation RPMediaControlDaemon

- (RPMediaControlDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPMediaControlDaemon;
  v2 = [(RPMediaControlDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = v3;
  }

  return v3;
}

- (BOOL)activateAndReturnError:(id *)a3
{
  v5 = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = v5;
  if (!v5)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_messenger;
  if (!v7)
  {
    v9 = RPErrorF();
    if (dword_1001D4060 <= 90 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011CC8C();
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    else if (!a3)
    {
LABEL_13:

      goto LABEL_14;
    }

    v10 = v9;
    *a3 = v9;
    goto LABEL_13;
  }

  if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
  {
    sub_10011CCCC();
  }

  v13 = @"statusFlags";
  v14 = &off_1001B7FA8;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100074924;
  v12[3] = &unk_1001AB798;
  v12[4] = self;
  [(RPMessageable *)v7 registerRequestID:@"_mcc" options:v8 handler:v12];

LABEL_14:
  return v7 != 0;
}

- (void)invalidate
{
  if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
  {
    sub_10011CCE8();
  }

  if (self->_movementEndTimer)
  {
    if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011CD04();
    }

    movementEndCommand = self->_movementEndCommand;
    MRMediaRemoteSendCommand();
    self->_movementCommand = 3;
    movementEndTimer = self->_movementEndTimer;
    if (movementEndTimer)
    {
      v5 = movementEndTimer;
      dispatch_source_cancel(v5);
      v6 = self->_movementEndTimer;
      self->_movementEndTimer = 0;
    }
  }

  [(RPMessageable *)self->_messenger deregisterRequestID:@"_mcc"];
  messenger = self->_messenger;
  self->_messenger = 0;

  sendInterestEventHandler = self->_sendInterestEventHandler;
  self->_sendInterestEventHandler = 0;

  [(RPMediaControlDaemon *)self _mediaControlEnsureStopped];
}

- (void)registeredEventID:(id)a3
{
  if ([a3 isEqual:@"_iMC"])
  {
    self->_mediaControlInterest = 1;

    [(RPMediaControlDaemon *)self _update];
  }
}

- (void)deregisteredEventID:(id)a3
{
  if ([a3 isEqual:@"_iMC"])
  {
    self->_mediaControlInterest = 0;

    [(RPMediaControlDaemon *)self _update];
  }
}

- (void)_update
{
  if (self->_mediaControlInterest)
  {
    [(RPMediaControlDaemon *)self _mediaControlEnsureStarted];
  }

  else
  {
    [(RPMediaControlDaemon *)self _mediaControlEnsureStopped];
  }
}

- (void)_mediaControlEnsureStarted
{
  if (!self->_mediaRemoteCommandObserving)
  {
    if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011CD20();
    }

    MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_mediaRemoteSupportedCommandsChanged" name:kMRMediaRemoteSupportedCommandsDidChangeNotification object:0];
    self->_mediaRemoteCommandObserving = 1;
    [(RPMediaControlDaemon *)self _mediaRemoteSupportedCommandsGet];
  }

  if (self->_mediaRemoteVolumeObserving)
  {
    if (!self->_sendInterestEventHandler)
    {
      return;
    }

    if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011CD3C();
    }

    sendInterestEventHandler = self->_sendInterestEventHandler;
    v8 = @"_mcF";
    v5 = [NSNumber numberWithUnsignedLongLong:self->_mediaControlFlags];
    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    sendInterestEventHandler[2](sendInterestEventHandler, @"_iMC", v6);
  }

  else
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_mediaRemoteVolumeControlChanged:" name:kMRAVEndpointVolumeControlCapabilitiesDidChangeNotification object:0];
    self->_mediaRemoteVolumeObserving = 1;
    self->_mediaRemoteVolumeCaps = 0;
    if (MRAVEndpointGetLocalEndpoint())
    {
      dispatchQueue = self->_dispatchQueue;
      MRAVEndpointGetVolumeControlCapabilities();
    }
  }
}

- (void)_mediaControlEnsureStopped
{
  if (self->_mediaRemoteCommandObserving)
  {
    if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011CDB0();
    }

    MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:kMRMediaRemoteSupportedCommandsDidChangeNotification object:0];
    self->_mediaRemoteCommandObserving = 0;
  }

  if (self->_mediaRemoteVolumeObserving)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:kMRAVEndpointVolumeControlCapabilitiesDidChangeNotification object:0];
    self->_mediaRemoteVolumeObserving = 0;
  }

  self->_mediaControlFlags = 0;
}

- (void)_mediaControlFlagsUpdate:(unint64_t)a3 mask:(unint64_t)a4
{
  mediaControlFlags = self->_mediaControlFlags;
  v5 = mediaControlFlags & ~a4 | a4 & a3;
  if (v5 != mediaControlFlags)
  {
    if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011CDCC();
    }

    self->_mediaControlFlags = v5;
    v7 = objc_retainBlock(self->_sendInterestEventHandler);
    if (v7)
    {
      v10 = @"_mcF";
      v8 = [NSNumber numberWithUnsignedLongLong:v5];
      v11 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v7[2](v7, @"_iMC", v9);
    }
  }
}

- (void)_mediaRemoteSupportedCommandsChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075050;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_mediaRemoteSupportedCommandsGet
{
  if (!self->_mediaRemoteCommandGetting)
  {
    if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011CE30();
    }

    self->_mediaRemoteCommandGetting = 1;
    dispatchQueue = self->_dispatchQueue;
    MRMediaRemoteGetSupportedCommands();
  }
}

- (void)_mediaRemoteVolumeControlChanged:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075434;
  v7[3] = &unk_1001AB488;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleCommand:(id)a3 responseHandler:(id)a4
{
  v15 = a3;
  v6 = a4;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
  {
    sub_10011CF24(Int64Ranged, Int64Ranged);
  }

  switch(Int64Ranged)
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
      MRMediaRemoteSendCommand();
      goto LABEL_20;
    case 5u:
      [(RPMediaControlDaemon *)self _handleGetVolume:v15 responseHandler:v6];
      break;
    case 6u:
      [(RPMediaControlDaemon *)self _handleSetVolume:v15 responseHandler:v6];
      break;
    case 7u:
      [(RPMediaControlDaemon *)self _handleSkipByRequest:v15 responseHandler:v6];
      break;
    case 8u:
      v8 = self;
      v9 = 8;
      v10 = 9;
      goto LABEL_10;
    case 9u:
    case 0xBu:
      MRMediaRemoteSendCommand();
      self->_movementCommand = 3;
      movementEndTimer = self->_movementEndTimer;
      if (movementEndTimer)
      {
        v13 = movementEndTimer;
        dispatch_source_cancel(v13);
        v14 = self->_movementEndTimer;
        self->_movementEndTimer = 0;
      }

      goto LABEL_20;
    case 0xAu:
      v8 = self;
      v9 = 10;
      v10 = 11;
LABEL_10:
      [(RPMediaControlDaemon *)v8 _handleMovementCommand:v9 endCommand:v10];
LABEL_20:
      (*(v6 + 2))(v6, &__NSDictionary0__struct, 0, 0);
      break;
    case 0xCu:
      [(RPMediaControlDaemon *)self _handleMediaCaptionGet:v15 responseHandler:v6];
      break;
    case 0xDu:
      [(RPMediaControlDaemon *)self _handleMediaCaptionSet:v15 responseHandler:v6];
      break;
    default:
      v11 = RPErrorF();
      if (dword_1001D4060 <= 60 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
      {
        sub_10011CF88();
      }

      (*(v6 + 2))(v6, 0, 0, v11);

      break;
  }
}

- (void)_handleMediaCaptionGet:(id)a3 responseHandler:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = (off_1001D40D8[0])(1);
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_100148954[v6];
  }

  if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
  {
    sub_10011CFC8(v7);
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [NSNumber numberWithInt:v7];
  [v8 setObject:v9 forKeyedSubscript:@"_mcs"];

  (*(v5 + 2))(v5, v8, 0, 0);
}

- (void)_handleMediaCaptionSet:(id)a3 responseHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v8 = Int64Ranged;
  if (Int64Ranged > 2)
  {
    if (Int64Ranged == 3)
    {
      v9 = 0;
    }

    else
    {
      if (Int64Ranged != 4)
      {
        goto LABEL_10;
      }

      v9 = 2 * ((off_1001D40D8[0])(1) != 2);
    }

LABEL_16:
    if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D054(v8);
    }

    off_1001D40E0(1, v9);
    (*(v6 + 2))(v6, &__NSDictionary0__struct, 0, 0);
    goto LABEL_20;
  }

  if (Int64Ranged == 1)
  {
    v9 = 1;
    goto LABEL_16;
  }

  if (Int64Ranged == 2)
  {
    v9 = 2;
    goto LABEL_16;
  }

LABEL_10:
  v10 = RPErrorF();
  if (dword_1001D4060 <= 90 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D014();
  }

  (*(v6 + 2))(v6, 0, 0, v10);

LABEL_20:
}

- (void)_handleMovementCommand:(unsigned int)a3 endCommand:(unsigned int)a4
{
  if (self->_movementCommand != a3)
  {
    MRMediaRemoteSendCommand();
    self->_movementCommand = a3;
  }

  self->_movementEndCommand = a4;
  if (self->_movementEndTimer)
  {

    CUDispatchTimerSet();
  }

  else
  {
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    movementEndTimer = self->_movementEndTimer;
    self->_movementEndTimer = v7;

    v9 = self->_movementEndTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100075BD4;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    v10 = self->_movementEndTimer;
    CUDispatchTimerSet();
    dispatch_resume(self->_movementEndTimer);
  }
}

- (void)_handleSkipByRequest:(id)a3 responseHandler:(id)a4
{
  v4 = a4;
  CFDictionaryGetDouble();
  v7 = kMRMediaRemoteOptionSkipInterval;
  v6 = [NSNumber numberWithDouble:fabs(v5)];
  v8 = v6;
  [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  MRMediaRemoteSendCommand();

  (*(v4 + 2))(v4, &__NSDictionary0__struct, 0, 0);
}

- (void)_handleGetVolume:(id)a3 responseHandler:(id)a4
{
  v4 = a4;
  v5 = [off_1001D40D0[0]() sharedAVSystemController];
  v10 = 0;
  v6 = [v5 getVolume:&v10 forCategory:@"MediaPlayback"];
  if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D0C8(&v10);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else if (v6)
  {
LABEL_5:
    v7 = objc_alloc_init(NSMutableDictionary);
    LODWORD(v8) = v10;
    v9 = [NSNumber numberWithFloat:v8];
    [v7 setObject:v9 forKeyedSubscript:@"_vol"];

    (*(v4 + 2))(v4, v7, 0, 0);
    goto LABEL_11;
  }

  v7 = RPErrorF();
  if (dword_1001D4060 <= 90 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D114();
  }

  (*(v4 + 2))(v4, 0, 0, v7);
LABEL_11:
}

- (void)_handleSetVolume:(id)a3 responseHandler:(id)a4
{
  v4 = a4;
  v17 = 0;
  CFDictionaryGetDouble();
  v6 = v5;
  if (v5 >= 0.0 && v5 <= 1.0)
  {
    if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D194();
    }

    v8 = [off_1001D40D0[0]() sharedAVSystemController];
    v9 = v6;
    *&v10 = v9;
    v11 = [v8 setVolumeTo:@"MediaPlayback" forCategory:v10];
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = -6700;
    }

    v17 = v12;
    if (v11)
    {
      v16 = 0.0;
      if (([v8 getVolume:&v16 forCategory:@"MediaPlayback"] & 1) == 0)
      {
        if (dword_1001D4060 <= 90 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
        {
          sub_10011D214();
        }

        v16 = v9;
      }

      v13 = objc_alloc_init(NSMutableDictionary);
      *&v14 = v16;
      v15 = [NSNumber numberWithFloat:v14];
      [v13 setObject:v15 forKeyedSubscript:@"_vol"];

      (*(v4 + 2))(v4, v13, 0, 0);
    }

    else
    {
      v13 = RPErrorF();
      if (dword_1001D4060 <= 90 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
      {
        sub_10011D1D4();
      }

      (*(v4 + 2))(v4, 0, 0, v13);
    }
  }

  else
  {
    v8 = RPErrorF();
    if (dword_1001D4060 <= 90 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D154();
    }

    (*(v4 + 2))(v4, 0, 0, v8);
  }
}

@end