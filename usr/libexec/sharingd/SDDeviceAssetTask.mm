@interface SDDeviceAssetTask
- (BOOL)isEqual:(id)equal;
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
  state = [(SDDeviceAssetTask *)self state];
  if (state > 2)
  {
    v6 = "?";
  }

  else
  {
    v6 = (&off_1008CE4F8)[state];
  }

  date = [(SDDeviceAssetTask *)self date];
  query = [(SDDeviceAssetTask *)self query];
  stringIdentifier = [query stringIdentifier];
  v10 = [NSString stringWithFormat:@"<%@: %p, state: %s, date: %@, query: %@>", v4, self, v6, date, stringIdentifier];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      state = [(SDDeviceAssetTask *)self state];
      if (state == [(SDDeviceAssetTask *)v5 state])
      {
        date = [(SDDeviceAssetTask *)self date];
        date2 = [(SDDeviceAssetTask *)v5 date];
        if ([date isEqual:date2])
        {
          query = [(SDDeviceAssetTask *)self query];
          query2 = [(SDDeviceAssetTask *)v5 query];
          v11 = [query isEqual:query2];
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
  date = [(SDDeviceAssetTask *)self date];
  v4 = [date hash];
  query = [(SDDeviceAssetTask *)self query];
  v6 = [query hash];

  return v6 ^ v4;
}

@end