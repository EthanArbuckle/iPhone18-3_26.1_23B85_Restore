@interface HAPBLEAccessoryCache
- (BOOL)isEqual:(id)a3;
- (HAPBLEAccessoryCache)initWithCoder:(id)a3;
- (HAPBLEAccessoryCache)initWithPairingIdentifier:(id)a3 saveBlock:(id)a4;
- (id)description;
- (id)getCachedServiceWithUUID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)save;
- (void)setLastKeyBagIdentityIndexFailingPV:(id)a3;
- (void)updateCurrentPairingIdentityIndexIfNeededForKeyBag:(id)a3;
- (void)updateWithPeripheralInfo:(id)a3;
- (void)updateWithService:(id)a3;
@end

@implementation HAPBLEAccessoryCache

- (HAPBLEAccessoryCache)initWithPairingIdentifier:(id)a3 saveBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HAPBLEAccessoryCache;
  v9 = [(HAPBLEAccessoryCache *)&v17 init];
  if (v9)
  {
    v10 = sub_100014948();
    metadataVersion = v9->_metadataVersion;
    v9->_metadataVersion = v10;

    objc_storeStrong(&v9->_pairingIdentifier, a3);
    v12 = +[NSMutableArray array];
    cachedServices = v9->_cachedServices;
    v9->_cachedServices = v12;

    v14 = objc_retainBlock(v8);
    saveBlock = v9->_saveBlock;
    v9->_saveBlock = v14;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPBLEAccessoryCache *)self pairingIdentifier];
      v7 = [(HAPBLEAccessoryCache *)v5 pairingIdentifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(HAPBLEAccessoryCache *)self pairingIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (void)updateWithPeripheralInfo:(id)a3
{
  v4 = a3;
  v5 = [(HAPBLEAccessoryCache *)self peripheralInfo];
  v7 = [v5 accessoryName];

  [(HAPBLEAccessoryCache *)self setPeripheralInfo:v4];
  v6 = [(HAPBLEAccessoryCache *)self peripheralInfo];
  [v6 updateAccessoryName:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(HAPBLEAccessoryCache *)self pairingIdentifier];
  [v9 encodeObject:v4 forKey:@"PI"];

  v5 = [(HAPBLEAccessoryCache *)self peripheralInfo];
  [v9 encodeObject:v5 forKey:@"PIN"];

  v6 = [(HAPBLEAccessoryCache *)self cachedServices];
  [v9 encodeObject:v6 forKey:@"CS"];

  v7 = [(HAPBLEAccessoryCache *)self metadataVersion];
  [v9 encodeObject:v7 forKey:@"MV"];

  v8 = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];
  [v9 encodeObject:v8 forKey:@"PVX"];

  [v9 encodeInteger:-[HAPBLEAccessoryCache discoveryVersion](self forKey:{"discoveryVersion"), @"DV"}];
}

- (HAPBLEAccessoryCache)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HAPBLEAccessoryCache;
  v5 = [(HAPBLEAccessoryCache *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MV"];
    metadataVersion = v5->_metadataVersion;
    v5->_metadataVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PI"];
    pairingIdentifier = v5->_pairingIdentifier;
    v5->_pairingIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PIN"];
    peripheralInfo = v5->_peripheralInfo;
    v5->_peripheralInfo = v10;

    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v12 = [NSArray arrayWithObjects:v20 count:2];
    v13 = [NSSet setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"CS"];
    cachedServices = v5->_cachedServices;
    v5->_cachedServices = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PVX"];
    lastKeyBagIdentityIndexFailingPV = v5->_lastKeyBagIdentityIndexFailingPV;
    v5->_lastKeyBagIdentityIndexFailingPV = v16;

    v5->_discoveryVersion = [v4 decodeIntegerForKey:@"DV"];
  }

  return v5;
}

- (id)getCachedServiceWithUUID:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(HAPBLEAccessoryCache *)self cachedServices];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 serviceUUID];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updateWithService:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HAPBLEAccessoryCache *)self cachedServices];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 isEqual:v4])
        {
          [v10 updateWithService:v4];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(HAPBLEAccessoryCache *)self cachedServices];
  [v5 addObject:v4];
LABEL_11:
}

- (void)save
{
  v2 = [(HAPBLEAccessoryCache *)self saveBlock];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (void)setLastKeyBagIdentityIndexFailingPV:(id)a3
{
  v5 = a3;
  lastKeyBagIdentityIndexFailingPV = self->_lastKeyBagIdentityIndexFailingPV;
  v7 = v5;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_lastKeyBagIdentityIndexFailingPV, a3);
    [(HAPBLEAccessoryCache *)self save];
  }
}

- (void)updateCurrentPairingIdentityIndexIfNeededForKeyBag:(id)a3
{
  v4 = a3;
  v5 = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];

  if (v5)
  {
    v6 = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];
    v7 = [v6 longLongValue];

    if ([v4 isValidIndex:v7 + 1])
    {
      v8 = self;
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = sub_10007FAFC(v8);
        v11 = [NSNumber numberWithInteger:v7 + 1];
        v12 = [(HAPBLEAccessoryCache *)v8 pairingIdentifier];
        v15 = 138543874;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Updating keybag identity index to %@ for %@.", &v15, 0x20u);
      }

      v13 = [v4 getCurrentIndexInBag];
      [v4 setCurrentIndexInBag:v7 + 1];
      v14 = [v4 currentIdentity];

      if (!v14)
      {
        [v4 setCurrentIndexInBag:v13];
      }
    }
  }
}

- (id)description
{
  v3 = [(HAPBLEAccessoryCache *)self cachedServices];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n\nList of Services: %tu\n", [v3 count]);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(HAPBLEAccessoryCache *)self cachedServices];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 = [v10 stringByAppendingFormat:@"%@", *(*(&v14 + 1) + 8 * v9)];

        v9 = v9 + 1;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [(HAPBLEAccessoryCache *)self peripheralInfo];
  v12 = [NSString stringWithFormat:@"%@ %@", v11, v4];

  return v12;
}

@end