@interface HAPKeyBag
+ (id)logCategory;
- (BOOL)isEmpty;
- (BOOL)isValidIndex:(int64_t)a3;
- (HAPKeyBag)initWithAccessoryIdentifier:(id)a3 keyStore:(id)a4;
- (HAPKeyBag)initWithAccessoryIdentifier:(id)a3 keyStore:(id)a4 controllerKeyList:(id)a5;
- (HAPKeyStore)keyStore;
- (id)_populateBagWithPairingIdentitiesForAccessory:(id)a3 fromStore:(id)a4;
- (id)currentIdentity;
- (id)logIdentifier;
- (id)nextIdentity;
- (int64_t)getCurrentIndexInBag;
- (unint64_t)totalIdentities;
- (void)refreshKeys;
- (void)setCurrentIndexInBag:(int64_t)a3;
@end

@implementation HAPKeyBag

- (HAPKeyBag)initWithAccessoryIdentifier:(id)a3 keyStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v9 = [(HAPKeyBag *)self _populateBagWithPairingIdentitiesForAccessory:v6 fromStore:v7];
    v10 = [(HAPKeyBag *)self initWithAccessoryIdentifier:v6 keyStore:v8 controllerKeyList:v9];

    return v10;
  }

  else
  {
    v12 = sub_1001F8A90();
    return [(HAPKeyBag *)v12 initWithAccessoryIdentifier:v13 keyStore:v14 controllerKeyList:v15, v16];
  }
}

- (HAPKeyBag)initWithAccessoryIdentifier:(id)a3 keyStore:(id)a4 controllerKeyList:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    sub_1001F8A90();
  }

  v12 = v11;
  v24.receiver = self;
  v24.super_class = HAPKeyBag;
  v13 = [(HAPKeyBag *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accessoryIdentifier, a3);
    objc_storeWeak(&v14->_keyStore, v10);
    v14->_currentIndexInBag = -1;
    v15 = [v12 copy];
    availableKeysToTry = v14->_availableKeysToTry;
    v14->_availableKeysToTry = v15;

    v17 = v14;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = sub_10007FAFC(v17);
      accessoryIdentifier = v14->_accessoryIdentifier;
      v21 = [NSNumber numberWithUnsignedInteger:[(NSArray *)v14->_availableKeysToTry count]];
      v22 = [(NSArray *)v14->_availableKeysToTry firstObject];
      *buf = 138544130;
      v26 = v19;
      v27 = 2112;
      v28 = accessoryIdentifier;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@Initialized key bag for accessory [%@] with %@ keys and primary identity: [%@]", buf, 0x2Au);
    }
  }

  return v14;
}

- (void)refreshKeys
{
  v3 = [(HAPKeyBag *)self accessoryIdentifier];

  if (!v3)
  {
    sub_1001F8AC0();
    goto LABEL_11;
  }

  v4 = [(HAPKeyBag *)self keyStore];

  if (!v4)
  {
    sub_1001F8AA8();
LABEL_11:
    __break(1u);
  }

  v5 = [(HAPKeyBag *)self accessoryIdentifier];
  v6 = [(HAPKeyBag *)self keyStore];
  v7 = [(HAPKeyBag *)self _populateBagWithPairingIdentitiesForAccessory:v5 fromStore:v6];

  os_unfair_lock_lock_with_options();
  availableKeysToTry = self->_availableKeysToTry;
  if (HMFEqualObjects())
  {
    self->_currentIndexInBag = -1;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = [v7 copy];
    v10 = self->_availableKeysToTry;
    self->_availableKeysToTry = v9;

    self->_currentIndexInBag = -1;
    os_unfair_lock_unlock(&self->_lock);
    v11 = self;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = sub_10007FAFC(v11);
      v14 = [(HAPKeyBag *)v11 accessoryIdentifier];
      v15 = 138543874;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Refreshed key bag for accessory [%@] with identities: [%@]", &v15, 0x20u);
    }
  }
}

- (id)_populateBagWithPairingIdentitiesForAccessory:(id)a3 fromStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 allAccessoryPairingKeys];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  v12 = [NSMutableArray arrayWithArray:v11];

  v13 = [v7 getAssociatedControllerKeyForAccessory:v6];
  if (v13 || ([v7 readControllerPairingKeyForAccessory:v6 error:0], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    [v12 removeObject:v13];
    [v12 insertObject:v14 atIndex:0];
  }

  if ([v12 hmf_isEmpty])
  {
    v15 = self;
    v16 = sub_10007FAA0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = sub_10007FAFC(v15);
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@This is strange. We do not have any controller keys in the key chain.", &v20, 0xCu);
    }
  }

  v18 = [v12 copy];

  objc_autoreleasePoolPop(v8);

  return v18;
}

- (int64_t)getCurrentIndexInBag
{
  os_unfair_lock_lock_with_options();
  currentIndexInBag = self->_currentIndexInBag;
  os_unfair_lock_unlock(&self->_lock);
  return currentIndexInBag;
}

- (void)setCurrentIndexInBag:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_currentIndexInBag = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isValidIndex:(int64_t)a3
{
  if (a3 < 0)
  {
    return 0;
  }

  v4 = [(HAPKeyBag *)self availableKeysToTry];
  v5 = [v4 count] > a3;

  return v5;
}

- (id)nextIdentity
{
  if ([(HAPKeyBag *)self isEmpty])
  {
    v3 = 0;
  }

  else
  {
    [(HAPKeyBag *)self setCurrentIndexInBag:[(HAPKeyBag *)self currentIndexInBag]+ 1];
    v3 = [(HAPKeyBag *)self currentIdentity];
    v4 = self;
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = [NSNumber numberWithInteger:[(HAPKeyBag *)v4 currentIndexInBag]];
      v8 = [(HAPKeyBag *)v4 availableKeysToTry];
      v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
      v11 = 138544130;
      v12 = v6;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching Identity [%@] at index : %@, total keys: [%@]", &v11, 0x2Au);
    }
  }

  return v3;
}

- (id)currentIdentity
{
  if ([(HAPKeyBag *)self currentIndexInBag]== -1)
  {
    [(HAPKeyBag *)self setCurrentIndexInBag:[(HAPKeyBag *)self currentIndexInBag]+ 1];
  }

  if ([(HAPKeyBag *)self isValidIndex:[(HAPKeyBag *)self currentIndexInBag]])
  {
    v3 = [(HAPKeyBag *)self availableKeysToTry];
    v4 = [v3 objectAtIndex:{-[HAPKeyBag currentIndexInBag](self, "currentIndexInBag")}];

    v5 = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10007FAFC(v5);
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Current Identity [%@]", &v9, 0x16u);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEmpty
{
  v2 = [(HAPKeyBag *)self availableKeysToTry];
  v3 = [v2 hmf_isEmpty];

  return v3;
}

- (unint64_t)totalIdentities
{
  v2 = [(HAPKeyBag *)self availableKeysToTry];
  v3 = [v2 count];

  return v3;
}

- (id)logIdentifier
{
  v3 = objc_opt_class();
  v4 = [(HAPKeyBag *)self accessoryIdentifier];
  v5 = [NSNumber numberWithInteger:[(HAPKeyBag *)self getCurrentIndexInBag]];
  v6 = [NSNumber numberWithUnsignedInteger:[(HAPKeyBag *)self totalIdentities]];
  v7 = [NSString stringWithFormat:@"%@ %@ (%@/%@)", v3, v4, v5, v6];

  return v7;
}

+ (id)logCategory
{
  if (qword_1002ACC60 != -1)
  {
    sub_1001F8AD8();
  }

  v3 = qword_1002ACC68;

  return v3;
}

- (HAPKeyStore)keyStore
{
  WeakRetained = objc_loadWeakRetained(&self->_keyStore);

  return WeakRetained;
}

@end