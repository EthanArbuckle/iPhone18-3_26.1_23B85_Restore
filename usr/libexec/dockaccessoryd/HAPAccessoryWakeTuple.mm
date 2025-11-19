@interface HAPAccessoryWakeTuple
- (BOOL)isEqual:(id)a3;
- (HAPAccessoryWakeTuple)initWithPort:(int64_t)a3 wakeAddress:(id)a4 wakePattern:(id)a5;
- (unint64_t)hash;
@end

@implementation HAPAccessoryWakeTuple

- (HAPAccessoryWakeTuple)initWithPort:(int64_t)a3 wakeAddress:(id)a4 wakePattern:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HAPAccessoryWakeTuple;
  v11 = [(HAPAccessoryWakeTuple *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_wakePort = a3;
    objc_storeStrong(&v11->_wakeAddress, a4);
    objc_storeStrong(&v12->_wakePattern, a5);
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HAPAccessoryWakeTuple *)self wakeAddress];
  v4 = [v3 hash];
  v5 = [(HAPAccessoryWakeTuple *)self wakePattern];
  v6 = [v5 hash] ^ v4;
  v7 = [(HAPAccessoryWakeTuple *)self wakePort];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [(HAPAccessoryWakeTuple *)self wakePort];
    if (v7 != [(HAPAccessoryWakeTuple *)v6 wakePort])
    {
      goto LABEL_9;
    }

    v8 = [(HAPAccessoryWakeTuple *)self wakeAddress];
    v9 = [(HAPAccessoryWakeTuple *)v6 wakeAddress];
    v10 = HMFEqualObjects();

    if (v10)
    {
      v11 = [(HAPAccessoryWakeTuple *)self wakePattern];
      v12 = [(HAPAccessoryWakeTuple *)v6 wakePattern];
      v13 = HMFEqualObjects();
    }

    else
    {
LABEL_9:
      v13 = 0;
    }
  }

  return v13;
}

@end