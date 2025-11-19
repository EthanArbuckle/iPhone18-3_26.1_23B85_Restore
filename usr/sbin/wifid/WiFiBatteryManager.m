@interface WiFiBatteryManager
- (BOOL)configureWiFiClientAndRegisterWithBatteryModule:(BOOL)a3 :(__WiFiManager *)a4 :(id)a5 :(id)a6;
- (BOOL)isPowerResourceAvailable:(unint64_t)a3;
- (BOOL)setupDevice:(void *)deviceManager;
- (WiFiBatteryManager)initWithContext:(void *)a3;
- (id)WiFiBatteryManagerPopulatePowerTable;
- (id)getDutyCycleForPowerNumber:(unint64_t)a3;
- (int)admissionCheck;
- (int)requestPowerResource:(unint64_t)a3 withDetails:(void *)a4;
- (unint64_t)WiFiBatteryManagerHandleCpmsAllocatedBudgetReturnIndex:(id)a3;
- (unint64_t)getClosestAllowedLowerPowerNumber:(unint64_t)a3;
- (void)WiFiBatteryManagerCpmsCallbackConfiguration:(__WiFiManager *)a3;
- (void)WiFiBatteryManagerHandlePowerAdmissionResponse:(unint64_t)a3;
- (void)WiFiBatteryManagerPpmCallbackConfiguration:(__WiFiManager *)a3;
- (void)dealloc;
- (void)releasePowerResources;
@end

@implementation WiFiBatteryManager

- (int)admissionCheck
{
  v3 = [(WiFiBatteryManager *)self pendingRequests];
  v4 = [v3 count];

  if (!v4)
  {
    v23 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  No pending requests, exiting", "-[WiFiBatteryManager admissionCheck]"}];
    }

    objc_autoreleasePoolPop(v23);
    v6 = 0;
    goto LABEL_21;
  }

  v5 = [(WiFiBatteryManager *)self pendingRequests];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (v6 && (v7 = [v6 bytes]) != 0)
  {
    v8 = v7;
    if ([(WiFiBatteryManager *)self isPowerResourceAvailable:*v7])
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v10 = @"Unknown";
        if (*v8 == 1)
        {
          v10 = @"Hosted Network";
        }

        if (*v8)
        {
          v11 = v10;
        }

        else
        {
          v11 = @"AutoJoin";
        }

        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : resource is already known and available for %@ request type.", "-[WiFiBatteryManager admissionCheck]", v11}];
      }

      objc_autoreleasePoolPop(v9);
      [(WiFiBatteryManager *)self WiFiBatteryManagerHandlePowerAdmissionResponse:[(WiFiBatteryManager *)self availableResource]];
      goto LABEL_21;
    }

    if ([(WiFiBatteryManager *)self cpmsActive])
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : requesting resource %d", "-[WiFiBatteryManager admissionCheck]", -[WiFiBatteryManager cpmsActive](self, "cpmsActive")}];
      }

      objc_autoreleasePoolPop(v13);
      v24 = kCPMSPowerTimeScale100ms;
      v14 = [(WiFiBatteryManager *)self getPowerNumberForDutyCycle:100];
      v25 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

      v16 = [(CPMSAgentProtocol *)self->_cpmsAgent copyPowerBudgetForRequest:v15 forClient:self->_wifiCPMSHandle error:0];
      [(CPMSAgentProtocol *)self->_cpmsAgent acknowledgePowerBudget:v16 forClientId:self->_wifiCPMSHandle error:0];
      v17 = [(WiFiBatteryManager *)self WiFiBatteryManagerHandleCpmsAllocatedBudgetReturnIndex:v16];
      v18 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : WiFiBatteryMgmt Admission Handler being called properly! and minvalue is %lu", "-[WiFiBatteryManager admissionCheck]", v17}];
      }

      objc_autoreleasePoolPop(v18);
      [(WiFiBatteryManager *)self WiFiBatteryManagerHandlePowerAdmissionResponse:v17];

      goto LABEL_21;
    }

    if (([(PPMClient *)self->_wifiPpmClientRef admissionCheckWithLevel:&off_1002811D0 options:0 error:0 handler:self->_WiFiBatteryManagerPpmAdmissionResultHandler]& 1) != 0)
    {
LABEL_21:
      v12 = 0;
      goto LABEL_22;
    }

    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v21 = @"Unknown";
      if (*v8 == 1)
      {
        v21 = @"Hosted Network";
      }

      if (*v8)
      {
        v22 = v21;
      }

      else
      {
        v22 = @"AutoJoin";
      }

      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  failed to perform admission check for resource type %@", "-[WiFiBatteryManager admissionCheck]", v22}];
    }

    objc_autoreleasePoolPop(v20);
    v12 = -3906;
  }

  else
  {
    v12 = -3901;
  }

LABEL_22:

  return v12;
}

- (WiFiBatteryManager)initWithContext:(void *)a3
{
  v31.receiver = self;
  v31.super_class = WiFiBatteryManager;
  v4 = [(WiFiBatteryManager *)&v31 init];
  v5 = v4;
  if (!v4)
  {
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : unable to super initialize WiFiBatteryManagerClient.", "-[WiFiBatteryManager initWithContext:]"}];
    }

    goto LABEL_23;
  }

  v4->_manager = a3;
  if (!a3)
  {
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : null wifi manager ref!?.", "-[WiFiBatteryManager initWithContext:]"}];
    }

    goto LABEL_23;
  }

  *&v4->_wifiClientRegistered = 0;
  v6 = [NSDate dateWithTimeIntervalSince1970:0.0];
  asyncPPMBudgetTimestamp = v5->_asyncPPMBudgetTimestamp;
  v5->_asyncPPMBudgetTimestamp = v6;

  v8 = objc_alloc_init(NSMutableDictionary);
  cachedBudget = v5->_cachedBudget;
  v5->_cachedBudget = v8;

  if (objc_opt_class())
  {
    v10 = +[CPMSAgent isCPMSSupported];
    v5->_cpmsActive = v10;
    if (v10)
    {
      if (v5->_cpmsAgent)
      {
        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : cpms agent exists ", "-[WiFiBatteryManager initWithContext:]"}];
        }

        objc_autoreleasePoolPop(v11);
      }

      else
      {
        v13 = +[CPMSAgent sharedCPMSAgent];
        cpmsAgent = v5->_cpmsAgent;
        v5->_cpmsAgent = v13;

        if (!v5->_cpmsAgent)
        {
          v25 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Error: couldn't get sharedCPMSAgent", "-[WiFiBatteryManager initWithContext:]"}];
          }

          goto LABEL_23;
        }

        v5->_wifiCPMSHandle = 2;
      }

      v15 = objc_opt_class();
      wifiClientDescriptionRef = v5->_wifiClientDescriptionRef;
      if (!v15)
      {
        v5->_wifiClientDescriptionRef = 0;

        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Error: cpms is active but [CPMSClientDescription class] fails!", "-[WiFiBatteryManager initWithContext:]"}];
        }

        goto LABEL_23;
      }

      if (!wifiClientDescriptionRef)
      {
        v17 = objc_alloc_init(CPMSClientDescription);
        v18 = v5->_wifiClientDescriptionRef;
        v5->_wifiClientDescriptionRef = v17;

        if (!v5->_wifiClientDescriptionRef)
        {
          v25 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Error: unable to alloc and init CPMSClientDescription", "-[WiFiBatteryManager initWithContext:]"}];
          }

          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    [(WiFiBatteryManager *)v5 setCpmsActive:0];
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Error! CPMS FWK does not exist! ", "-[WiFiBatteryManager initWithContext:]"}];
    }

    objc_autoreleasePoolPop(v12);
  }

  if (!v5->_cpmsActive)
  {
    v19 = [PPMClient sharedInstanceWithClientRepresentation:@"com.apple.duet.ppm-attr.wifi" error:0];
    wifiPpmClientRef = v5->_wifiPpmClientRef;
    v5->_wifiPpmClientRef = v19;

    if (!v5->_wifiPpmClientRef)
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  No PPM support.", "-[WiFiBatteryManager initWithContext:]"}];
      }

      goto LABEL_23;
    }
  }

  *&v5->_availableResource = xmmword_1001CE540;
  v21 = objc_alloc_init(NSMutableArray);
  pendingRequests = v5->_pendingRequests;
  v5->_pendingRequests = v21;

  v23 = [(WiFiBatteryManager *)v5 pendingRequests];

  if (!v23)
  {
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  null pending requests!", "-[WiFiBatteryManager initWithContext:]"}];
    }

LABEL_23:
    objc_autoreleasePoolPop(v25);
    v26 = v5->_pendingRequests;
    v5->_pendingRequests = 0;

    v27 = v5->_wifiClientDescriptionRef;
    v5->_wifiClientDescriptionRef = 0;

    v28 = v5->_cpmsAgent;
    v5->_cpmsAgent = 0;

    v29 = v5->_wifiPpmClientRef;
    v5->_wifiPpmClientRef = 0;

    v30 = v5->_cachedBudget;
    v5->_cachedBudget = 0;

    return 0;
  }

  return v5;
}

- (BOOL)setupDevice:(void *)deviceManager
{
  self->_deviceManager = deviceManager;
  if (!deviceManager)
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : null wifi device manager ref!?.", "-[WiFiBatteryManager setupDevice:]"}];
    }

    goto LABEL_37;
  }

  if (!self->_wifiClientRegistered)
  {
    if (self->_cpmsActive)
    {
      v4 = sub_100010908(deviceManager);
      v5 = sub_10014F03C(v4);
      if (self->_wifiChipPowerTable.dutyCycleTable[0] != 100 || v5 || self->_wifiChipPowerTable.powerTable[0] < self->_wifiChipPowerTable.powerTable[9])
      {
        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Error! Failed to read power duty cyle table from driver. Using presets. ", "-[WiFiBatteryManager setupDevice:]"}];
        }

        objc_autoreleasePoolPop(v6);
        self->_wifiChipPowerTable.version = 1;
        *self->_wifiChipPowerTable.powerTable = xmmword_1001CE550;
        *&self->_wifiChipPowerTable.powerTable[8] = xmmword_1001CE560;
        *&self->_wifiChipPowerTable.dutyCycleTable[4] = xmmword_1001CE570;
      }

      self->_minBatteryIndex = self->_wifiChipPowerTable.dutyCycleTable[9];
      v7 = sub_100010908(self->_deviceManager);
      v8 = sub_100064CF4(v7);
      self->_cpmsContPowerSupport = v8 != 0;
      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Continous CPMS power budget issupported  ", "-[WiFiBatteryManager setupDevice:]"}];
        }

        objc_autoreleasePoolPop(v9);
        v10 = self->_wifiChipPowerTable.dutyCycleTable[9];
        self->_pUnconstrained = self->_wifiChipPowerTable.powerTable[0];
        self->_dutyMin = v10;
        v11 = self->_wifiChipPowerTable.powerTable[1];
        v12 = self->_wifiChipPowerTable.powerTable[9];
        self->_pMin = v12;
        self->_pMax = v11;
        if (v11 != v12)
        {
          self->_ratioDutyPower = (self->_wifiChipPowerTable.dutyCycleTable[1] - v10) / (v11 - v12);
        }
      }

      else
      {
        v13 = self->_wifiChipPowerTable.powerTable[0];
        self->_pMin = self->_wifiChipPowerTable.powerTable[9];
        self->_pMax = v13;
      }

      powerTable = self->_wifiChipPowerTable.powerTable;
      v15 = 10;
      do
      {
        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Power : %d    Duty Cycle : %d", "-[WiFiBatteryManager setupDevice:]", *powerTable, powerTable[12]}];
        }

        objc_autoreleasePoolPop(v16);
        ++powerTable;
        --v15;
      }

      while (v15);
    }

    if ([(WiFiBatteryManager *)self configureWiFiClientAndRegisterWithBatteryModule:[(WiFiBatteryManager *)self cpmsActive]])
    {
      self->_wifiClientRegistered = 1;
      deviceManager = self->_deviceManager;
      goto LABEL_22;
    }

    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  init done and got cpms/ppm handle But registering with battery module fails!?", "-[WiFiBatteryManager setupDevice:]"}];
    }

LABEL_37:
    v21 = 0;
    goto LABEL_30;
  }

LABEL_22:
  v17 = sub_100010908(deviceManager);
  if (sub_10014EE90(v17, 0x64u))
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Default Power index cannot be set!", "-[WiFiBatteryManager setupDevice:]"}];
    }

    objc_autoreleasePoolPop(v18);
  }

  v19 = sub_100010908(self->_deviceManager);
  if (!sub_10014EBE8(v19, 0x64u))
  {
    return 1;
  }

  v20 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Default thermal index cannot be set!", "-[WiFiBatteryManager setupDevice:]"}];
  }

  v21 = 1;
LABEL_30:
  objc_autoreleasePoolPop(v20);
  return v21;
}

- (BOOL)configureWiFiClientAndRegisterWithBatteryModule:(BOOL)a3 :(__WiFiManager *)a4 :(id)a5 :(id)a6
{
  v8 = a3;
  v10 = a5;
  v11 = a6;
  if (!self)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  self unintialized.?", "-[WiFiBatteryManager configureWiFiClientAndRegisterWithBatteryModule::::]"}];
    }

    goto LABEL_13;
  }

  if (!v8)
  {
    [(WiFiBatteryManager *)self WiFiBatteryManagerPpmCallbackConfiguration:a4];
    v16 = [v10 registerForNotificationsWithError:0 handler:self->_WiFiBatteryManagerPpmAsyncNotificationHandler];
    v15 = 0;
    goto LABEL_6;
  }

  if (!self->_wifiClientDescriptionRef)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  WiFiClient Configuration failed!", "-[WiFiBatteryManager configureWiFiClientAndRegisterWithBatteryModule::::]"}];
    }

LABEL_13:
    objc_autoreleasePoolPop(v19);
    v16 = 0;
    v17 = 0;
LABEL_14:
    v18 = v17 & v16;
    goto LABEL_15;
  }

  objc_initWeak(&location, self);
  [(CPMSClientDescription *)self->_wifiClientDescriptionRef setIsContinuous:0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10009B620;
  v21[3] = &unk_100261198;
  objc_copyWeak(&v22, &location);
  [(CPMSClientDescription *)self->_wifiClientDescriptionRef setGetCurrentPower:v21];
  [(CPMSClientDescription *)self->_wifiClientDescriptionRef setPowerBudgetUpdateMinimumPeriod:1000];
  v12 = [(WiFiBatteryManager *)self WiFiBatteryManagerPopulatePowerTable];
  v13 = [NSDictionary dictionaryWithDictionary:v12];
  [(CPMSClientDescription *)self->_wifiClientDescriptionRef setPowerLevels:v13];

  [(CPMSClientDescription *)self->_wifiClientDescriptionRef setClientId:[(WiFiBatteryManager *)self wifiCPMSHandle]];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  [(WiFiBatteryManager *)self WiFiBatteryManagerCpmsCallbackConfiguration:a4];
  v14 = [(WiFiBatteryManager *)self cpmsAsyncNotificationCallback];
  [(CPMSClientDescription *)self->_wifiClientDescriptionRef setNotificationCallback:v14];

  v15 = [v11 registerClientWithDescription:self->_wifiClientDescriptionRef error:0];
  v16 = 0;
LABEL_6:
  v17 = !v8;
  if ((v15 & 1) == 0 && (v16 & 1) == 0)
  {
    sub_100174384();
  }

  if ((v15 & v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = 1;
LABEL_15:

  return v18;
}

- (id)WiFiBatteryManagerPopulatePowerTable
{
  v3 = [[NSMutableArray alloc] initWithCapacity:10];
  if (v3)
  {
    v4 = &self->_wifiChipPowerTable.powerTable[9];
    for (i = 11; i > 1; --i)
    {
      v6 = *v4--;
      v7 = [NSNumber numberWithInt:v6];
      [v3 addObject:v7];
    }
  }

  v8 = [[NSMutableArray alloc] initWithCapacity:10];
  if (v8)
  {
    v9 = &self->_wifiChipPowerTable.dutyCycleTable[9];
    for (j = 11; j > 1; --j)
    {
      v11 = *v9--;
      v12 = [NSNumber numberWithInt:v11];
      [v8 addObject:v12];
    }
  }

  v13 = [NSDictionary dictionaryWithObjects:v3 forKeys:v8];
  [(WiFiBatteryManager *)self setDutyCycleToPowerTable100ms:v13];

  v14 = [NSDictionary dictionaryWithObjects:v8 forKeys:v3];
  [(WiFiBatteryManager *)self setPowerToDutyCycleTable100ms:v14];

  v15 = [NSDictionary dictionaryWithObject:v3 forKey:kCPMSPowerTimeScale100ms];
  [(WiFiBatteryManager *)self setWifiDevicePowerLevels100ms:v15];

  v16 = [(WiFiBatteryManager *)self wifiDevicePowerLevels100ms];

  return v16;
}

- (void)WiFiBatteryManagerCpmsCallbackConfiguration:(__WiFiManager *)a3
{
  objc_initWeak(&location, self);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009B8D4;
  v6[3] = &unk_1002611E8;
  objc_copyWeak(&v7, &location);
  v6[4] = v8;
  v4 = objc_retainBlock(v6);
  cpmsAsyncNotificationCallback = self->_cpmsAsyncNotificationCallback;
  self->_cpmsAsyncNotificationCallback = v4;

  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);
  objc_destroyWeak(&location);
}

- (void)WiFiBatteryManagerPpmCallbackConfiguration:(__WiFiManager *)a3
{
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009BDA8;
  v10[3] = &unk_100261238;
  objc_copyWeak(&v11, &location);
  v4 = objc_retainBlock(v10);
  WiFiBatteryManagerPpmAsyncNotificationHandler = self->_WiFiBatteryManagerPpmAsyncNotificationHandler;
  self->_WiFiBatteryManagerPpmAsyncNotificationHandler = v4;

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009C12C;
  v8[3] = &unk_100261288;
  objc_copyWeak(&v9, &location);
  v6 = objc_retainBlock(v8);
  WiFiBatteryManagerPpmAdmissionResultHandler = self->_WiFiBatteryManagerPpmAdmissionResultHandler;
  self->_WiFiBatteryManagerPpmAdmissionResultHandler = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  WiFiBatteryManagerPpmAsyncNotificationHandler = self->_WiFiBatteryManagerPpmAsyncNotificationHandler;
  self->_WiFiBatteryManagerPpmAsyncNotificationHandler = 0;

  WiFiBatteryManagerPpmAdmissionResultHandler = self->_WiFiBatteryManagerPpmAdmissionResultHandler;
  self->_WiFiBatteryManagerPpmAdmissionResultHandler = 0;

  cpmsAsyncNotificationCallback = self->_cpmsAsyncNotificationCallback;
  self->_cpmsAsyncNotificationCallback = 0;

  powerToDutyCycleTable100ms = self->_powerToDutyCycleTable100ms;
  self->_powerToDutyCycleTable100ms = 0;

  dutyCycleToPowerTable100ms = self->_dutyCycleToPowerTable100ms;
  self->_dutyCycleToPowerTable100ms = 0;

  wifiDevicePowerLevels100ms = self->_wifiDevicePowerLevels100ms;
  self->_wifiDevicePowerLevels100ms = 0;

  cachedBudget = self->_cachedBudget;
  self->_cachedBudget = 0;

  pendingRequests = self->_pendingRequests;
  self->_pendingRequests = 0;

  cpmsAgent = self->_cpmsAgent;
  self->_cpmsAgent = 0;

  wifiPpmClientRef = self->_wifiPpmClientRef;
  self->_wifiPpmClientRef = 0;

  wifiClientDescriptionRef = self->_wifiClientDescriptionRef;
  self->_wifiClientDescriptionRef = 0;

  v14.receiver = self;
  v14.super_class = WiFiBatteryManager;
  [(WiFiBatteryManager *)&v14 dealloc];
}

- (void)WiFiBatteryManagerHandlePowerAdmissionResponse:(unint64_t)a3
{
  if (!self)
  {
    sub_1001744C8();
    return;
  }

  if ([(WiFiBatteryManager *)self availableResource]== a3)
  {
    v5 = [(WiFiBatteryManager *)self pendingRequests];
    v6 = [v5 count];

    if (!v6)
    {
      sub_10017445C();
      return;
    }

    v7 = [(WiFiBatteryManager *)self pendingRequests];
    v8 = [v7 objectAtIndexedSubscript:0];

    if (!v8 || (v9 = [v8 bytes]) == 0)
    {
      sub_1001743E4(v8);
      return;
    }

    v10 = v9;
    [(WiFiBatteryManager *)self setClaimedResource:[(WiFiBatteryManager *)self availableResource]];
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Claimed resource is %lu", "-[WiFiBatteryManager WiFiBatteryManagerHandlePowerAdmissionResponse:]", -[WiFiBatteryManager claimedResource](self, "claimedResource")}];
    }

    objc_autoreleasePoolPop(v11);
    [(WiFiBatteryManager *)self WiFiDeviceManagerHandlePowerUnchangedPowerBudget:[(WiFiBatteryManager *)self availableResource]];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Changed budget from battery module. Previous value :%lu and new value :%lu ", "-[WiFiBatteryManager WiFiBatteryManagerHandlePowerAdmissionResponse:]", -[WiFiBatteryManager availableResource](self, "availableResource"), a3}];
    }

    objc_autoreleasePoolPop(v12);
    [(WiFiBatteryManager *)self setAvailableResource:a3];
    if (a3)
    {
      v13 = [(WiFiBatteryManager *)self availableResource];
    }

    else
    {
      v13 = 0;
    }

    [(WiFiBatteryManager *)self setClaimedResource:v13];
    [(WiFiBatteryManager *)self WiFiDeviceManagerHandleInterfaceAvailability:[(WiFiBatteryManager *)self availableResource]];
    [(WiFiBatteryManager *)self WiFiDeviceManagerHandlePowerBudgetChange:[(WiFiBatteryManager *)self availableResource]];
  }

  v14 = [(WiFiBatteryManager *)self pendingRequests];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [(WiFiBatteryManager *)self pendingRequests];
    [v16 removeLastObject];
  }

  v17 = [(WiFiBatteryManager *)self pendingRequests];
  v18 = [v17 count];

  if (v18)
  {

    [(WiFiBatteryManager *)self admissionCheck];
  }
}

- (int)requestPowerResource:(unint64_t)a3 withDetails:(void *)a4
{
  v19[0] = a3;
  v19[1] = a4;
  v6 = [[NSData alloc] initWithBytes:v19 length:16];
  if (v6)
  {
    v7 = [(WiFiBatteryManager *)self pendingRequests];
    [v7 addObject:v6];

    v8 = objc_autoreleasePoolPush();
    v9 = off_100298C40;
    if (off_100298C40)
    {
      v10 = @"Unknown";
      if (a3 == 1)
      {
        v10 = @"Hosted Network";
      }

      if (!a3)
      {
        v10 = @"AutoJoin";
      }

      v11 = v10;
      v12 = [(WiFiBatteryManager *)self pendingRequests];
      [v9 WFLog:3 message:{"WiFiBatteryMgmt : %s: Power resource request for %@ added. Pending=%lu.", "-[WiFiBatteryManager requestPowerResource:withDetails:]", v11, objc_msgSend(v12, "count")}];
    }

    objc_autoreleasePoolPop(v8);
    v13 = [(WiFiBatteryManager *)self pendingRequests];
    v14 = [v13 count];

    if (v14 == 1)
    {
      v15 = [(WiFiBatteryManager *)self admissionCheck];
      if (v15)
      {
        v16 = [(WiFiBatteryManager *)self pendingRequests];
        [v16 removeObjectAtIndex:0];
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : null dataRef.", "-[WiFiBatteryManager requestPowerResource:withDetails:]"}];
    }

    objc_autoreleasePoolPop(v17);
    v15 = -3901;
  }

  return v15;
}

- (void)releasePowerResources
{
  v3 = [(WiFiBatteryManager *)self getPowerNumberForDutyCycle:[(WiFiBatteryManager *)self minBatteryIndex]];
  if (!v3)
  {
    v3 = [(WiFiBatteryManager *)self getPowerNumberForDutyCycle:100];
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Releasing battery power resource because of disassoc", "-[WiFiBatteryManager releasePowerResources]"}];
  }

  objc_autoreleasePoolPop(v4);
  if ([(WiFiBatteryManager *)self cpmsActive])
  {
    v5 = [(WiFiBatteryManager *)self cpmsActive];
    v6 = objc_autoreleasePoolPush();
    if (v5)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Requesting minPower : %@ for resource release", "-[WiFiBatteryManager releasePowerResources]", v3}];
      }

      objc_autoreleasePoolPop(v6);
      v9 = kCPMSPowerTimeScale100ms;
      v10 = v3;
      v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v8 = [(CPMSAgentProtocol *)self->_cpmsAgent copyPowerBudgetForRequest:v7 forClient:self->_wifiCPMSHandle error:0];
      [(CPMSAgentProtocol *)self->_cpmsAgent acknowledgePowerBudget:v8 forClientId:self->_wifiCPMSHandle error:0];
      [(WiFiBatteryManager *)self setClaimedResource:0];
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Fatal error. No power modules active!? self should have been nil", "-[WiFiBatteryManager releasePowerResources]"}];
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  else
  {
    [(PPMClient *)self->_wifiPpmClientRef activityStoppedWithLevel:0 options:0 error:0];
    [(WiFiBatteryManager *)self setClaimedResource:0];
  }
}

- (id)getDutyCycleForPowerNumber:(unint64_t)a3
{
  if (self->_cpmsContPowerSupport)
  {
    if (self->_pMax <= a3)
    {
      v8 = &off_1002811D0;
    }

    else
    {
      pMin = self->_pMin;
      v4 = a3 >= pMin;
      v5 = a3 - pMin;
      if (v4)
      {
        [NSNumber numberWithInt:((self->_ratioDutyPower * v5) + LODWORD(self->_dutyMin))];
      }

      else
      {
        [NSNumber numberWithUnsignedInteger:self->_minBatteryIndex];
      }
      v8 = ;
    }
  }

  else
  {
    powerToDutyCycleTable100ms = self->_powerToDutyCycleTable100ms;
    v7 = [NSNumber numberWithInt:a3];
    v8 = [(NSDictionary *)powerToDutyCycleTable100ms objectForKey:v7];
  }

  return v8;
}

- (unint64_t)getClosestAllowedLowerPowerNumber:(unint64_t)a3
{
  if (a3 && self->_pMin <= a3)
  {
    v5 = 0;
    while (1)
    {
      v6 = self->_wifiChipPowerTable.powerTable[v5];
      if (v6 <= a3)
      {
        break;
      }

      if (++v5 == 10)
      {
        return self->_pMin;
      }
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Ignoring invalid power value (%lu) and using max power instead.", "-[WiFiBatteryManager getClosestAllowedLowerPowerNumber:]", a3}];
    }

    objc_autoreleasePoolPop(v7);
    v8 = [(WiFiBatteryManager *)self getPowerNumberForDutyCycle:100];
    v6 = [v8 intValue];
  }

  return v6;
}

- (unint64_t)WiFiBatteryManagerHandleCpmsAllocatedBudgetReturnIndex:(id)a3
{
  v4 = a3;
  v5 = kCPMSPowerTimeScale100ms;
  v6 = [v4 objectForKey:kCPMSPowerTimeScale100ms];
  v7 = [v6 intValue];

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : budget100ms : %lu", "-[WiFiBatteryManager WiFiBatteryManagerHandleCpmsAllocatedBudgetReturnIndex:]", v7}];
  }

  objc_autoreleasePoolPop(v8);
  v9 = kCPMSPowerTimeScale1s;
  v10 = [v4 objectForKey:kCPMSPowerTimeScale1s];
  v11 = [v10 intValue];

  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : budget1s : %lu", "-[WiFiBatteryManager WiFiBatteryManagerHandleCpmsAllocatedBudgetReturnIndex:]", v11}];
  }

  objc_autoreleasePoolPop(v12);
  if (!v11)
  {
    v13 = [(WiFiBatteryManager *)self getPowerNumberForDutyCycle:100];
    v11 = [v13 intValue];
  }

  if (self->_cpmsContPowerSupport)
  {
    pUnconstrained = self->_pUnconstrained;
    if (pUnconstrained < v7)
    {
      v15 = [(WiFiBatteryManager *)self getPowerNumberForDutyCycle:100];
      v7 = [v15 intValue];

      pUnconstrained = self->_pUnconstrained;
    }

    pMin = self->_pMin;
    if (v7 <= pMin)
    {
      v7 = self->_pMin;
    }

    if (v11 > pUnconstrained)
    {
      v17 = [(WiFiBatteryManager *)self getPowerNumberForDutyCycle:100];
      v11 = [v17 intValue];

      pMin = self->_pMin;
    }

    if (v11 <= pMin)
    {
      v11 = pMin;
    }
  }

  else
  {
    v18 = [(WiFiBatteryManager *)self getDutyCycleForPowerNumber:v7];
    v19 = [v18 intValue];

    if (!v19)
    {
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: WiFiBatteryMgmt : Illegal budget100ms value : %lu", "-[WiFiBatteryManager WiFiBatteryManagerHandleCpmsAllocatedBudgetReturnIndex:]", v7}];
      }

      objc_autoreleasePoolPop(v20);
      v7 = [(WiFiBatteryManager *)self getClosestAllowedLowerPowerNumber:v7];
      v21 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Closest lower legal budget100ms value : %lu", "-[WiFiBatteryManager WiFiBatteryManagerHandleCpmsAllocatedBudgetReturnIndex:]", v7}];
      }

      objc_autoreleasePoolPop(v21);
    }

    v22 = [(WiFiBatteryManager *)self getDutyCycleForPowerNumber:v11];
    v23 = [v22 intValue];

    if (!v23)
    {
      v24 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: WiFiBatteryMgmt : Illegal budget1s value : %lu", "-[WiFiBatteryManager WiFiBatteryManagerHandleCpmsAllocatedBudgetReturnIndex:]", v11}];
      }

      objc_autoreleasePoolPop(v24);
      v11 = [(WiFiBatteryManager *)self getClosestAllowedLowerPowerNumber:v11];
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Closest lower legal budget1s value : %lu", "-[WiFiBatteryManager WiFiBatteryManagerHandleCpmsAllocatedBudgetReturnIndex:]", v11}];
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  if (v7 >= v11)
  {
    v26 = v11;
  }

  else
  {
    v26 = v7;
  }

  v27 = [(WiFiBatteryManager *)self cachedBudget];
  v28 = [NSNumber numberWithInt:v7];
  [v27 setObject:v28 forKey:v5];

  v29 = [(WiFiBatteryManager *)self cachedBudget];
  v30 = [NSNumber numberWithInt:v11];
  [v29 setObject:v30 forKey:v9];

  v31 = [(WiFiBatteryManager *)self getDutyCycleForPowerNumber:v26];
  v32 = [v31 intValue];

  return v32;
}

- (BOOL)isPowerResourceAvailable:(unint64_t)a3
{
  if (self)
  {
    if (a3 > 1)
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : unknown resource type %@", "-[WiFiBatteryManager isPowerResourceAvailable:]", @"Unknown"}];
      }

      objc_autoreleasePoolPop(v6);
      v5 = 0;
    }

    else
    {
      v5 = [(WiFiBatteryManager *)self claimedResource]!= 0;
    }
  }

  else
  {
    v5 = 1;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = off_100298C40;
  if (off_100298C40)
  {
    if (v5)
    {
      v9 = "available";
    }

    else
    {
      v9 = "unavailable";
    }

    v10 = @"Hosted Network";
    if (a3 != 1)
    {
      v10 = @"Unknown";
    }

    if (!a3)
    {
      v10 = @"AutoJoin";
    }

    v11 = v10;
    [v8 WFLog:3 message:{"%s: WiFiBatteryMgmt : resource is %s for type %@. claimedResource is %lu", "-[WiFiBatteryManager isPowerResourceAvailable:]", v9, v11, -[WiFiBatteryManager claimedResource](self, "claimedResource")}];
  }

  objc_autoreleasePoolPop(v7);
  return v5;
}

@end