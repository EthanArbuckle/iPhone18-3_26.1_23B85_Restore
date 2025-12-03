@interface UARPMetaDataHostTriggerBatteryLevel
- (UARPMetaDataHostTriggerBatteryLevel)init;
- (UARPMetaDataHostTriggerBatteryLevel)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataHostTriggerBatteryLevel)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataHostTriggerBatteryLevel

- (UARPMetaDataHostTriggerBatteryLevel)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataHostTriggerBatteryLevel;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -1003827191;
    v2->super._tlvLength = 4;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Host Trigger Battery Level";
  }

  return v3;
}

- (UARPMetaDataHostTriggerBatteryLevel)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataHostTriggerBatteryLevel *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataHostTriggerBatteryLevel;
  v8 = [(UARPMetaData *)&v11 numberFromPlistValue:valueCopy];
  v9 = v8;
  if (v8)
  {
    v7->_batteryLevel = [(UARPMetaDataHostTriggerBatteryLevel *)v8 unsignedLongValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (UARPMetaDataHostTriggerBatteryLevel)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataHostTriggerBatteryLevel *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataHostTriggerBatteryLevel;
  v8 = [(UARPMetaData *)&v11 numberWithLength:length value:value];
  v9 = v8;
  if (v8)
  {
    v7->_batteryLevel = [(UARPMetaDataHostTriggerBatteryLevel *)v8 unsignedLongValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (id)tlvValue
{
  v4.receiver = self;
  v4.super_class = UARPMetaDataHostTriggerBatteryLevel;
  v2 = [(UARPMetaData *)&v4 tlvValueWithUInt32:[(UARPMetaDataHostTriggerBatteryLevel *)self batteryLevel]];

  return v2;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  v4 = [NSString stringWithFormat:@"<%@: %u>", tlvName, [(UARPMetaDataHostTriggerBatteryLevel *)self batteryLevel]];

  return v4;
}

@end