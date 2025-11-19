@interface WCM_UCMClientManager
+ (id)WCM_UCMClientManagerSingleton;
- (WCM_UCMClientManager)init;
- (id)getControllerOfId:(int)a3;
- (id)getUCMClientFromList:(int)a3;
- (void)addUCMClient:(id)a3;
- (void)dealloc;
- (void)enableFrequencyUpdatesForMic:(id)a3;
- (void)enableHomeKitTimer:(id)a3;
- (void)enableULFrequencyUpdates:(id)a3;
- (void)getHomeKitBtLoad:(id)a3;
- (void)postBTConnectedDevices;
- (void)removeUCMClient:(id)a3;
- (void)sendNRFrequencyUpdateForMic:(id)a3;
- (void)sendULFrequencyUpdates:(id)a3;
- (void)startHomeKitTimer:(double)a3;
- (void)stopHomeKitTimer;
- (void)timerHandler:(id)a3;
- (void)updateBTConnectedDevices:(WCM_BTConnections *)a3;
- (void)updateControllerSession:(id)a3 ofId:(int)a4;
@end

@implementation WCM_UCMClientManager

- (void)addUCMClient:(id)a3
{
  [(NSMutableArray *)self->mUCMClientContexts addObject:a3];

  [(WCM_UCMClientManager *)self existingContexts];
}

- (void)removeUCMClient:(id)a3
{
  v4 = a3;
  [(WCM_UCMClientManager *)self existingContexts];
  [(NSMutableArray *)self->mUCMClientContexts removeObject:v4];

  [(WCM_UCMClientManager *)self existingContexts];
}

- (void)updateBTConnectedDevices:(WCM_BTConnections *)a3
{
  [WCM_Logging logLevel:2 message:@"updateBTConnectedDevices"];
  v5 = *&a3->numA2DP;
  v6 = *&a3->numHID;
  v7 = *&a3->numeSCO;
  self->mBTConnections.numLEA = a3->numLEA;
  *&self->mBTConnections.numHID = v6;
  *&self->mBTConnections.numeSCO = v7;
  *&self->mBTConnections.numA2DP = v5;

  [(WCM_UCMClientManager *)self postBTConnectedDevices];
}

+ (id)WCM_UCMClientManagerSingleton
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!qword_1002B7E30)
  {
    v7.receiver = v2;
    v7.super_class = &OBJC_METACLASS___WCM_UCMClientManager;
    v3 = [objc_msgSendSuper2(&v7 allocWithZone:{0), "init"}];
    v4 = qword_1002B7E30;
    qword_1002B7E30 = v3;
  }

  objc_sync_exit(v2);

  v5 = qword_1002B7E30;

  return v5;
}

- (WCM_UCMClientManager)init
{
  v9.receiver = self;
  v9.super_class = WCM_UCMClientManager;
  v2 = [(WCM_UCMClientManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    mUCMClientContexts = v2->mUCMClientContexts;
    v2->mUCMClientContexts = v3;

    v10[0] = @"kWRMNR41FreuquencyUpdate";
    v10[1] = @"kWRMNR7xFreuquencyUpdate";
    v11[0] = &__kCFBooleanFalse;
    v11[1] = &__kCFBooleanFalse;
    v10[2] = @"kWRMLTE40FreuquencyUpdate";
    v10[3] = @"kWRMLTE41FreuquencyUpdate";
    v11[2] = &__kCFBooleanFalse;
    v11[3] = &__kCFBooleanFalse;
    v10[4] = @"kWRMLTE42FreuquencyUpdate";
    v10[5] = @"kWRMLTE48FreuquencyUpdate";
    v11[4] = &__kCFBooleanFalse;
    v11[5] = &__kCFBooleanFalse;
    v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];
    v6 = [v5 mutableCopy];
    mCurrentBandStates = v2->_mCurrentBandStates;
    v2->_mCurrentBandStates = v6;

    v2->mBTConnections.numA2DP = 0;
    *&v2->mBTConnections.numHID = 0u;
    *&v2->mBTConnections.numeSCO = 0u;
    v2->mBTConnections.numLEA = 0;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WCM_UCMClientManager;
  [(WCM_UCMClientManager *)&v2 dealloc];
}

- (void)updateControllerSession:(id)a3 ofId:(int)a4
{
  v6 = a3;
  v7 = v6;
  v10 = v6;
  if (a4 > 40)
  {
    if (a4 == 41)
    {
      [WCM_Logging logLevel:2 message:@"UCMClientManager: Rcvd WRMMIC controller event %p", v6];
      if (!v10)
      {
        [WCM_Logging logLevel:2 message:@"updateControllerSession:remove context for WRMMIC from UCMClientManager"];
        v8 = self;
        v9 = 3;
        goto LABEL_15;
      }
    }

    else
    {
      if (a4 != 42)
      {
        goto LABEL_17;
      }

      [WCM_Logging logLevel:2 message:@"UCMClientManager: Rcvd WRMSOS controller event %p", v6];
      if (!v10)
      {
        [WCM_Logging logLevel:2 message:@"updateControllerSession:remove context for WRMSOS from UCMClientManager"];
        v8 = self;
        v9 = 4;
        goto LABEL_15;
      }
    }
  }

  else if (a4 == 35)
  {
    [WCM_Logging logLevel:2 message:@"UCMClientManager: Rcvd WCMSharing controller event %p", v6];
    if (!v10)
    {
      [WCM_Logging logLevel:2 message:@"updateControllerSession:remove context for WCMSharing from UCMClientManager"];
      v8 = self;
      v9 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    if (a4 != 40)
    {
      goto LABEL_17;
    }

    [WCM_Logging logLevel:2 message:@"UCMClientManager: Rcvd WRMHomeKit controller event %p", v6];
    if (!v10)
    {
      [WCM_Logging logLevel:2 message:@"updateControllerSession:remove context for WRMHomeKit from UCMClientManager"];
      v8 = self;
      v9 = 2;
LABEL_15:
      v6 = [(WCM_UCMClientManager *)v8 deleteUCMClient:v9];
      goto LABEL_16;
    }
  }

  [(WCM_UCMClientManager *)self addUCMClient:v10];
  v6 = [WCM_Logging logLevel:2 message:@"UCMClientManager: Init Context"];
LABEL_16:
  v7 = v10;
LABEL_17:

  _objc_release_x1(v6, v7);
}

- (id)getUCMClientFromList:(int)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->mUCMClientContexts;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 getMyClientType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)getControllerOfId:(int)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->mUCMClientContexts;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 getProcessId] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)postBTConnectedDevices
{
  [WCM_Logging logLevel:2 message:@"postBTConnectedDevices"];
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_int64(v3, "kWCMBTNumA2DP", self->mBTConnections.numA2DP);
    xpc_dictionary_set_int64(v4, "kWCMBTNumSCO", self->mBTConnections.numSCO);
    xpc_dictionary_set_int64(v4, "kWCMBTNumESCO", self->mBTConnections.numeSCO);
    xpc_dictionary_set_int64(v4, "kWCMBTNumHID", self->mBTConnections.numHID);
    xpc_dictionary_set_int64(v4, "kWCMBTNumLE", self->mBTConnections.numLE);
    xpc_dictionary_set_int64(v4, "kWCMBTNumLEA", self->mBTConnections.numLEA);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->mUCMClientContexts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9) sendMessage:1429 withArgs:{v4, v10}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)getHomeKitBtLoad:(id)a3
{
  xdict = a3;
  reply = xpc_dictionary_create_reply(xdict);
  [WCM_Logging logLevel:2 message:@"getHomeKitBtLoad"];
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kWRMHomeKitBtLoad", self->mMaximumBtLoad);
    v5 = xpc_dictionary_get_remote_connection(xdict);
    xpc_connection_send_message(v5, reply);
    [WCM_Logging logLevel:2 message:@"Sending response to getHomeKitBtLoad message %@", reply];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"getHomeKitBtLoad xpc_reply is NULL"];
  }
}

- (void)startHomeKitTimer:(double)a3
{
  [WCM_Logging logLevel:2 message:@"startHomeKitTimer"];
  self->mMaximumBtLoad = self->mCurrentBtLoad;
  v5 = [(WCM_UCMClientManager *)self homeKitReportingTimer];

  if (!v5)
  {
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"timerHandler:" selector:0 userInfo:1 repeats:a3];
    [(WCM_UCMClientManager *)self setHomeKitReportingTimer:v6];
  }

  v7 = [(WCM_UCMClientManager *)self homeKitReportingTimer];

  if (v7)
  {
    v9 = +[NSRunLoop currentRunLoop];
    v8 = [(WCM_UCMClientManager *)self homeKitReportingTimer];
    [v9 addTimer:v8 forMode:NSDefaultRunLoopMode];
  }
}

- (void)timerHandler:(id)a3
{
  v4 = +[WCM_Server singleton];
  v5 = [v4 getQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000734B8;
  block[3] = &unk_10023F488;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)stopHomeKitTimer
{
  [WCM_Logging logLevel:2 message:@"stopHomeKitTimer"];
  v3 = [(WCM_UCMClientManager *)self homeKitReportingTimer];

  if (v3)
  {
    v4 = [(WCM_UCMClientManager *)self homeKitReportingTimer];
    [v4 invalidate];

    [(WCM_UCMClientManager *)self setHomeKitReportingTimer:0];
  }

  self->mMaximumBtLoad = 0;
}

- (void)enableHomeKitTimer:(id)a3
{
  xdict = a3;
  [WCM_Logging logLevel:2 message:@"enableHomeKitTimer"];
  v4 = xpc_dictionary_get_value(xdict, "kMessageArgs");
  v5 = v4;
  if (v4)
  {
    if (xpc_dictionary_get_BOOL(v4, "kWRMHomeKitEnable"))
    {
      v6 = xpc_dictionary_get_double(v5, "kWRMHomeKitDuration");
      v7 = [(WCM_UCMClientManager *)self homeKitReportingTimer];
      if (v7)
      {
        v8 = v7;
        v9 = [(WCM_UCMClientManager *)self homeKitReportingTimer];
        v10 = [v9 isValid];

        if (v10)
        {
          [(WCM_UCMClientManager *)self stopHomeKitTimer];
        }
      }

      [(WCM_UCMClientManager *)self startHomeKitTimer:v6];
      mCurrentBtLoad = self->mCurrentBtLoad;
    }

    else
    {
      mCurrentBtLoad = self->mMaximumBtLoad;
      [(WCM_UCMClientManager *)self stopHomeKitTimer];
    }

    reply = xpc_dictionary_create_reply(xdict);
    v13 = reply;
    if (reply)
    {
      xpc_dictionary_set_uint64(reply, "kWRMHomeKitBtLoad", mCurrentBtLoad);
      v14 = xpc_dictionary_get_remote_connection(xdict);
      xpc_connection_send_message(v14, v13);
      [WCM_Logging logLevel:2 message:@"Sending response to enableHomeKitTimer %@", v13];
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"enableHomeKitTimer xpc_reply is NULL"];
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Error Getting Args"];
  }
}

- (void)enableFrequencyUpdatesForMic:(id)a3
{
  v4 = a3;
  [WCM_Logging logLevel:2 message:@"enableFrequencyUpdatesForMic"];
  reply = xpc_dictionary_create_reply(v4);
  if (reply)
  {
    v6 = [(WCM_UCMClientManager *)self mCurrentBandStates];
    if (v6 && (v7 = v6, [(WCM_UCMClientManager *)self mCurrentBandStates], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, v7, (isKindOfClass & 1) != 0))
    {
      v10 = [(WCM_UCMClientManager *)self mCurrentBandStates];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000739D4;
      v12[3] = &unk_10023F4B0;
      v13 = reply;
      [v10 enumerateKeysAndObjectsUsingBlock:v12];
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"enableFrequencyUpdatesForMic: mCurrentBandStates is nil or not a dictionary"];
    }

    v11 = xpc_dictionary_get_remote_connection(v4);
    xpc_connection_send_message(v11, reply);
    [WCM_Logging logLevel:2 message:@"Sending response to enableFrequencyUpdatesForMic %@", reply];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"enableFrequencyUpdatesForMic xpc_reply is NULL"];
  }
}

- (void)sendNRFrequencyUpdateForMic:(id)a3
{
  v4 = a3;
  [WCM_Logging logLevel:2 message:@"sendNRFrequencyUpdateForMic"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v6 = [(WCM_UCMClientManager *)self mCurrentBandStates];
      [v6 setDictionary:v4];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100073C64;
      v18[3] = &unk_10023F4B0;
      v7 = v5;
      v19 = v7;
      [v4 enumerateKeysAndObjectsUsingBlock:v18];
      [WCM_Logging logLevel:2 message:@"Sending response to sendNRFrequencyUpdateForMic %@", v7];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = self->mUCMClientContexts;
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          v12 = 0;
          do
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v14 + 1) + 8 * v12);
            if (v13)
            {
              [v13 sendMessage:2806 withArgs:v7];
            }

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"sendNRFrequencyUpdateForMic: bandStates is nil or not a dictionary!"];
  }
}

- (void)enableULFrequencyUpdates:(id)a3
{
  [WCM_Logging logLevel:2 message:@"enableULFrequencyUpdates"];
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = v5;
    if (v5)
    {
      xpc_dictionary_set_int64(v5, "kWRMULBandInfoType", self->mCurrentBandInfoType);
      xpc_dictionary_set_double(v6, "kWRMULCenterFrequency", self->mCurrentULCenterFrequency);
      xpc_dictionary_set_double(v6, "kWRMULBandwidth", self->mCurrentULBandwidth);
      xpc_dictionary_set_value(v4, "kWRMULFrequencyUpdate", v6);
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = self->mUCMClientContexts;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v13 + 1) + 8 * v11);
            if (v12)
            {
              [v12 sendMessage:2808 withArgs:{v4, v13}];
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)sendULFrequencyUpdates:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [WCM_Logging logLevel:2 message:@"sendULFrequencyUpdates"];
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v6 = v5;
      v7 = [v4 objectForKeyedSubscript:@"BandInfoType"];
      self->mCurrentBandInfoType = [v7 integerValue];

      v8 = [v4 objectForKeyedSubscript:@"ULCenterFrequency"];
      [v8 doubleValue];
      self->mCurrentULCenterFrequency = v9;

      v10 = [v4 objectForKeyedSubscript:@"ULBandwidth"];
      [v10 doubleValue];
      self->mCurrentULBandwidth = v11;

      v12 = xpc_dictionary_create(0, 0, 0);
      v13 = v12;
      if (v12)
      {
        xpc_dictionary_set_int64(v12, "kWRMULBandInfoType", self->mCurrentBandInfoType);
        xpc_dictionary_set_double(v13, "kWRMULCenterFrequency", self->mCurrentULCenterFrequency);
        xpc_dictionary_set_double(v13, "kWRMULBandwidth", self->mCurrentULBandwidth);
        xpc_dictionary_set_value(v6, "kWRMULFrequencyUpdate", v13);
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v14 = self->mUCMClientContexts;
        v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v21;
          do
          {
            v18 = 0;
            do
            {
              if (*v21 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v20 + 1) + 8 * v18);
              if (v19)
              {
                [v19 sendMessage:2808 withArgs:{v6, v20}];
              }

              v18 = v18 + 1;
            }

            while (v16 != v18);
            v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v16);
        }
      }
    }
  }
}

@end