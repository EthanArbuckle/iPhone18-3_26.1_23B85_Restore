@interface _NFLoyaltyAndPaymentSession
+ (id)validateEntitlements:(id)a3;
- (BOOL)readyForVAS;
- (BOOL)useFilteredApplets;
- (id)handleAPDU:(id)a3;
- (id)handleSelect:(id)a3;
- (id)hostCardEmulationLog;
- (void)didEndSession:(id)a3;
- (void)handleDeselect;
- (void)handleHostCardReaderDetected:(id)a3;
- (void)setHostCards:(id)a3;
@end

@implementation _NFLoyaltyAndPaymentSession

+ (id)validateEntitlements:(id)a3
{
  if ([a3 cardModeAccess])
  {
    v5 = 0;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", v11, ClassName, Name, 33);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v26 = v14;
      v27 = 2082;
      v28 = object_getClassName(a1);
      v29 = 2082;
      v30 = sel_getName(a2);
      v31 = 1024;
      v32 = 33;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring card access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_100333570;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 34];
    v24[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v5 = [v15 initWithDomain:v16 code:32 userInfo:v20];
  }

  return v5;
}

- (void)didEndSession:(id)a3
{
  v4 = a3;
  if (![(_NFSession *)self didEnd])
  {
    v5 = *(&self->_loyaltyAgent + 4);
    if (v5 && v5[25] == 1)
    {
      sub_100029F08(v5);
      v6 = +[_NFHardwareManager sharedHardwareManager];
      v7 = sub_10004C144();
      v8 = [v6 setRoutingConfig:v7];

      v5 = *(&self->_loyaltyAgent + 4);
    }

    if (sub_10002A270(v5, self))
    {
      sub_10002A2DC(*(&self->_loyaltyAgent + 4), self);
    }
  }

  v9.receiver = self;
  v9.super_class = _NFLoyaltyAndPaymentSession;
  [(_NFContactlessPaymentSession *)&v9 didEndSession:v4];
}

- (BOOL)useFilteredApplets
{
  v4 = [(_NFXPCSession *)self connection];
  v5 = [v4 NF_whitelistChecker];

  v6 = [v5 useUnfilteredApplets];
  if (v6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Using unfiltered applets!", v12, ClassName, Name, 75);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(self);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67109890;
      v19 = v15;
      v20 = 2082;
      v21 = object_getClassName(self);
      v22 = 2082;
      v23 = sel_getName(a2);
      v24 = 1024;
      v25 = 75;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Using unfiltered applets!", buf, 0x22u);
    }
  }

  return v6 ^ 1;
}

- (void)setHostCards:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFLoyaltyAndPaymentSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A2B88;
  block[3] = &unk_100315F80;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (id)hostCardEmulationLog
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 99);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v17 = v12;
    v18 = 2082;
    v19 = object_getClassName(self);
    v20 = 2082;
    v21 = sel_getName(a2);
    v22 = 1024;
    v23 = 99;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v13 = sub_10002A5B8(*(&self->_loyaltyAgent + 4));

  return v13;
}

- (BOOL)readyForVAS
{
  v2 = [*(&self->_emulationActive + 4) hostCards];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)handleSelect:(id)a3
{
  v4 = [*(&self->_emulationActive + 4) handleSelect:a3];
  if (v4)
  {
    [*(&self->_hceManager + 4) removeAllObjects];
    v5 = [(_NFXPCSession *)self remoteObject];
    [v5 didSelectValueAddedService:1];
  }

  return v4;
}

- (id)handleAPDU:(id)a3
{
  v4 = [*(&self->_emulationActive + 4) handleAPDU:a3];
  if (([*(&self->_emulationActive + 4) isComplete] & 1) != 0 || objc_msgSend(*(&self->_emulationActive + 4), "hasError"))
  {
    v5 = *(&self->_hceManager + 4);
    v6 = [*(&self->_emulationActive + 4) getTransactionEvent];
    [v5 addObject:v6];
  }

  return v4;
}

- (void)handleDeselect
{
  if ([*(&self->_hceManager + 4) count])
  {
    v3 = [(_NFXPCSession *)self remoteObject];
    [v3 didPerformValueAddedServiceTransactions:*(&self->_hceManager + 4)];
  }

  v4 = *(&self->_emulationActive + 4);

  [v4 handleDeselect];
}

- (void)handleHostCardReaderDetected:(id)a3
{
  v4 = *(&self->_loyaltyAgent + 4);
  v5 = a3;
  if ((sub_10002A270(v4, self) & 1) == 0)
  {
    sub_10002A1E4(*(&self->_loyaltyAgent + 4), self);
  }

  sub_10002A770(*(&self->_loyaltyAgent + 4), v5, [(_NFContactlessPaymentSession *)self readyForPayment]);
}

@end