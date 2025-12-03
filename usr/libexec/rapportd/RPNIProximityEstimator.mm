@interface RPNIProximityEstimator
- (RPNIProximityEstimator)init;
- (id)_createAndRunSession;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)sendSampleForDevice:(id)device;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)sessionDidStartRunning:(id)running;
- (void)sessionSuspensionEnded:(id)ended;
- (void)sessionWasSuspended:(id)suspended;
@end

@implementation RPNIProximityEstimator

- (RPNIProximityEstimator)init
{
  v6.receiver = self;
  v6.super_class = RPNIProximityEstimator;
  v2 = [(RPNIProximityEstimator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007EDB0;
  v7[3] = &unk_1001AD898;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007EFD4;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)sendSampleForDevice:(id)device
{
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007F0EC;
  v7[3] = &unk_1001AB488;
  v8 = deviceCopy;
  selfCopy = self;
  v6 = deviceCopy;
  dispatch_async(dispatchQueue, v7);
}

- (id)_createAndRunSession
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  innerPresencePreset = self->_innerPresencePreset;
  if (innerPresencePreset <= 1)
  {
    innerPresencePreset = 1;
  }

  self->_innerPresencePreset = innerPresencePreset;
  outerPresencePreset = self->_outerPresencePreset;
  if (!outerPresencePreset)
  {
    outerPresencePreset = 5;
  }

  self->_outerPresencePreset = outerPresencePreset;
  v5 = [objc_alloc(off_1001D44F0()) initWithName:self->_innerRegionName devicePresencePreset:self->_innerPresencePreset];
  v6 = [objc_alloc(off_1001D44F0()) initWithName:self->_outerRegionName devicePresencePreset:self->_outerPresencePreset];
  v14 = 0;
  v7 = [objc_alloc(off_1001D44F8()) initWithInnerBoundary:v5 outerBoundary:v6 error:&v14];
  v8 = v14;
  if (!v8)
  {
    if (v7)
    {
      [v7 setAllowedDevices:0];
      session = self->_session;
      self->_session = 0;
      v10 = session;

      [(NISession *)v10 invalidate];
      v11 = objc_alloc_init(off_1001D4500());
      v12 = self->_session;
      self->_session = v11;

      [(NISession *)self->_session setDelegate:self];
      [(NISession *)self->_session setDelegateQueue:self->_dispatchQueue];
      [(NISession *)self->_session runWithConfiguration:v7];

      v8 = 0;
    }

    else
    {
      v8 = RPErrorF();
    }
  }

  return v8;
}

- (void)sessionDidStartRunning:(id)running
{
  runningCopy = running;
  v4 = runningCopy;
  if (dword_1001D4478 <= 30)
  {
    v6 = runningCopy;
    if (dword_1001D4478 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10011F974();
      v4 = v6;
    }
  }
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  deviceRegionChangedHandler = self->_deviceRegionChangedHandler;
  if (deviceRegionChangedHandler)
  {
    deviceIdentifer2 = objc_retainBlock(deviceRegionChangedHandler);
    devicePresencePreset = [regionCopy devicePresencePreset];
    innerPresencePreset = self->_innerPresencePreset;
    if (dword_1001D4478 <= 30 && (dword_1001D4478 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F9B4(previousRegionCopy, regionCopy);
    }

    v15 = devicePresencePreset == innerPresencePreset;
    deviceIdentifer = [objectCopy deviceIdentifer];
    (deviceIdentifer2)[2](deviceIdentifer2, deviceIdentifer, v15);

    goto LABEL_6;
  }

  if (dword_1001D4478 <= 30 && (dword_1001D4478 != -1 || _LogCategory_Initialize()))
  {
    deviceIdentifer2 = [objectCopy deviceIdentifer];
    LogPrintF();
LABEL_6:
  }
}

- (void)session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4478 <= 30 && (dword_1001D4478 != -1 || _LogCategory_Initialize()))
  {
    sub_10011FA40();
  }

  _createAndRunSession = [(RPNIProximityEstimator *)self _createAndRunSession];
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4478 <= 30 && (dword_1001D4478 != -1 || _LogCategory_Initialize()))
  {
    sub_10011FA80();
  }

  if ([(NISession *)self->_session isEqual:sessionCopy])
  {
    session = self->_session;
    self->_session = 0;

    _createAndRunSession = [(RPNIProximityEstimator *)self _createAndRunSession];
  }
}

- (void)sessionWasSuspended:(id)suspended
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4478 <= 30 && (dword_1001D4478 != -1 || _LogCategory_Initialize()))
  {
    sub_10011FAC0();
  }
}

- (void)sessionSuspensionEnded:(id)ended
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4478 <= 30 && (dword_1001D4478 != -1 || _LogCategory_Initialize()))
  {
    sub_10011FADC();
  }

  _createAndRunSession = [(RPNIProximityEstimator *)self _createAndRunSession];
}

@end