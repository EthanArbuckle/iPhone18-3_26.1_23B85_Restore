@interface SESProximityChip
+ (id)sharedObject;
+ (void)cacheProximityChipData:(id)a3 completion:(id)a4;
- (BOOL)done;
- (BOOL)isProduction;
- (BOOL)isSupported;
- (SESProximityChip)init;
- (int64_t)getType;
- (void)cacheProximityChipData:(id)a3 completion:(id)a4;
@end

@implementation SESProximityChip

+ (id)sharedObject
{
  if (qword_10050CC10 != -1)
  {
    sub_1003AD03C();
  }

  v3 = qword_10050CC08;

  return v3;
}

- (SESProximityChip)init
{
  v6.receiver = self;
  v6.super_class = SESProximityChip;
  v2 = [(SESProximityChip *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_cacheLock._os_unfair_lock_opaque = 0;
    chipInformation = v2->_chipInformation;
    v2->_chipInformation = 0;

    v3->_chipType = 0;
    v3->_isSupported = 1;
  }

  return v3;
}

+ (void)cacheProximityChipData:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SESProximityChip sharedObject];
  [v7 cacheProximityChipData:v6 completion:v5];
}

- (void)cacheProximityChipData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_cacheLock);
  if (![(SESProximityChip *)self done])
  {
    v8 = IOServiceNameMatching("rose");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v8);
    self->_isSupported = MatchingService != 0;
    IOObjectRelease(MatchingService);
    if (self->_isSupported)
    {
      self->_chipType = PRGetChipType();
    }
  }

  if (SESInternalVariant() && self->_isSupported)
  {
    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Retrieving proximity chip information", buf, 2u);
    }

    v12 = v6;
    v13 = v7;
    PRGetChipInfoAsync();

    v11 = v12;
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016B44;
    block[3] = &unk_1004C1138;
    block[4] = self;
    v16 = v7;
    dispatch_async(v6, block);
    v11 = v16;
  }

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (BOOL)isSupported
{
  os_unfair_lock_lock(&self->_cacheLock);
  isSupported = self->_isSupported;
  os_unfair_lock_unlock(&self->_cacheLock);
  return isSupported;
}

- (BOOL)isProduction
{
  os_unfair_lock_lock(&self->_cacheLock);
  chipInformation = self->_chipInformation;
  if (chipInformation)
  {
    v4 = [(PRChipInfo *)chipInformation prodMode]!= 0;
  }

  else
  {
    v4 = 1;
  }

  os_unfair_lock_unlock(&self->_cacheLock);
  return v4;
}

- (int64_t)getType
{
  os_unfair_lock_lock(&self->_cacheLock);
  chipType = self->_chipType;
  os_unfair_lock_unlock(&self->_cacheLock);
  return chipType;
}

- (BOOL)done
{
  os_unfair_lock_assert_owner(&self->_cacheLock);
  if (SESInternalVariant())
  {
    if (self->_isSupported)
    {
      if (!self->_chipInformation)
      {
        return 0;
      }

      return self->_chipType != 0;
    }
  }

  else if (self->_isSupported)
  {
    return self->_chipType != 0;
  }

  return 1;
}

@end