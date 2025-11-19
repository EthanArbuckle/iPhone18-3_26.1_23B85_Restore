@interface SDDeviceAssetTask
- (BOOL)isEqual:(id)a3;
- (SDDeviceAssetTask)init;
- (id)description;
- (unint64_t)hash;
@end

@implementation SDDeviceAssetTask

- (SDDeviceAssetTask)init
{
  v3.receiver = self;
  v3.super_class = SDDeviceAssetTask;
  result = [(SDDeviceAssetTask *)&v3 init];
  if (result)
  {
    result->_state = 0;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(SDDeviceAssetTask *)self state];
  if (v5 > 2)
  {
    v6 = "?";
  }

  else
  {
    v6 = (&off_1008CE4F8)[v5];
  }

  v7 = [(SDDeviceAssetTask *)self date];
  v8 = [(SDDeviceAssetTask *)self query];
  v9 = [v8 stringIdentifier];
  v10 = [NSString stringWithFormat:@"<%@: %p, state: %s, date: %@, query: %@>", v4, self, v6, v7, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SDDeviceAssetTask *)self state];
      if (v6 == [(SDDeviceAssetTask *)v5 state])
      {
        v7 = [(SDDeviceAssetTask *)self date];
        v8 = [(SDDeviceAssetTask *)v5 date];
        if ([v7 isEqual:v8])
        {
          v9 = [(SDDeviceAssetTask *)self query];
          v10 = [(SDDeviceAssetTask *)v5 query];
          v11 = [v9 isEqual:v10];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(SDDeviceAssetTask *)self date];
  v4 = [v3 hash];
  v5 = [(SDDeviceAssetTask *)self query];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end