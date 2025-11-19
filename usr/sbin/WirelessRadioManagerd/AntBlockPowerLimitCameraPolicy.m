@interface AntBlockPowerLimitCameraPolicy
- (AntBlockPowerLimitCameraPolicy)init;
- (id)constructXpcMessage;
- (void)extractPolicy:(id)a3;
@end

@implementation AntBlockPowerLimitCameraPolicy

- (AntBlockPowerLimitCameraPolicy)init
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitCameraPolicy;
  result = [(AntBlockPowerLimitBasePolicy *)&v3 init];
  result->_mSKU = 8;
  return result;
}

- (void)extractPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = AntBlockPowerLimitCameraPolicy;
  v4 = a3;
  [(AntBlockPowerLimitBasePolicy *)&v9 extractPolicy:v4];
  v5 = [v4 objectForKey:{@"SKU", v9.receiver, v9.super_class}];

  if (v5)
  {
    v6 = [v5 UTF8String];
    if (v6)
    {
      v7 = *v6;
      if (v7 > 0x42)
      {
        if (v7 == 67)
        {
          v8 = 3;
          goto LABEL_14;
        }

        if (v7 == 68)
        {
          v8 = 4;
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      if (*v6)
      {
        if (v7 == 65)
        {
          v8 = 1;
          goto LABEL_14;
        }

        if (v7 == 66)
        {
          v8 = 2;
LABEL_14:
          self->_mSKU = v8;
          goto LABEL_15;
        }

LABEL_10:
        v8 = 8;
        goto LABEL_14;
      }
    }
  }

LABEL_15:
}

- (id)constructXpcMessage
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitCameraPolicy;
  v3 = [(AntBlockPowerLimitBasePolicy *)&v6 constructXpcMessage];
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_uint64(v3, "kWCMCellularSetAntBlocking_SKU", self->_mSKU);
  }

  return v4;
}

@end