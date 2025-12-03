@interface HAPAccessoryWakeTuple
- (BOOL)isEqual:(id)equal;
- (HAPAccessoryWakeTuple)initWithPort:(int64_t)port wakeAddress:(id)address wakePattern:(id)pattern;
- (unint64_t)hash;
@end

@implementation HAPAccessoryWakeTuple

- (HAPAccessoryWakeTuple)initWithPort:(int64_t)port wakeAddress:(id)address wakePattern:(id)pattern
{
  addressCopy = address;
  patternCopy = pattern;
  v14.receiver = self;
  v14.super_class = HAPAccessoryWakeTuple;
  v11 = [(HAPAccessoryWakeTuple *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_wakePort = port;
    objc_storeStrong(&v11->_wakeAddress, address);
    objc_storeStrong(&v12->_wakePattern, pattern);
  }

  return v12;
}

- (unint64_t)hash
{
  wakeAddress = [(HAPAccessoryWakeTuple *)self wakeAddress];
  v4 = [wakeAddress hash];
  wakePattern = [(HAPAccessoryWakeTuple *)self wakePattern];
  v6 = [wakePattern hash] ^ v4;
  wakePort = [(HAPAccessoryWakeTuple *)self wakePort];

  return v6 ^ wakePort;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

    wakePort = [(HAPAccessoryWakeTuple *)self wakePort];
    if (wakePort != [(HAPAccessoryWakeTuple *)v6 wakePort])
    {
      goto LABEL_9;
    }

    wakeAddress = [(HAPAccessoryWakeTuple *)self wakeAddress];
    wakeAddress2 = [(HAPAccessoryWakeTuple *)v6 wakeAddress];
    v10 = HMFEqualObjects();

    if (v10)
    {
      wakePattern = [(HAPAccessoryWakeTuple *)self wakePattern];
      wakePattern2 = [(HAPAccessoryWakeTuple *)v6 wakePattern];
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