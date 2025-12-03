@interface AntBlockPowerLimitCameraPolicy
- (AntBlockPowerLimitCameraPolicy)init;
- (id)constructXpcMessage;
- (void)extractPolicy:(id)policy;
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

- (void)extractPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = AntBlockPowerLimitCameraPolicy;
  policyCopy = policy;
  [(AntBlockPowerLimitBasePolicy *)&v9 extractPolicy:policyCopy];
  v5 = [policyCopy objectForKey:{@"SKU", v9.receiver, v9.super_class}];

  if (v5)
  {
    uTF8String = [v5 UTF8String];
    if (uTF8String)
    {
      v7 = *uTF8String;
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

      if (*uTF8String)
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
  constructXpcMessage = [(AntBlockPowerLimitBasePolicy *)&v6 constructXpcMessage];
  v4 = constructXpcMessage;
  if (constructXpcMessage)
  {
    xpc_dictionary_set_uint64(constructXpcMessage, "kWCMCellularSetAntBlocking_SKU", self->_mSKU);
  }

  return v4;
}

@end