@interface HAPCharacteristicEvent
+ (id)eventWithCharacteristic:(id)a3;
- (HAPCharacteristicEvent)initWithCharacteristic:(id)a3;
@end

@implementation HAPCharacteristicEvent

+ (id)eventWithCharacteristic:(id)a3
{
  v3 = a3;
  v4 = [[HAPCharacteristicEvent alloc] initWithCharacteristic:v3];

  return v4;
}

- (HAPCharacteristicEvent)initWithCharacteristic:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HAPCharacteristicEvent;
  v5 = [(HAPCharacteristicEvent *)&v23 init];
  if (v5)
  {
    v6 = [v4 service];
    v7 = [v6 accessory];
    v8 = [v7 serverIdentifier];
    serverIdentifier = v5->_serverIdentifier;
    v5->_serverIdentifier = v8;

    v10 = [v7 instanceID];
    accessoryInstanceID = v5->_accessoryInstanceID;
    v5->_accessoryInstanceID = v10;

    v12 = [v6 instanceID];
    serviceInstanceID = v5->_serviceInstanceID;
    v5->_serviceInstanceID = v12;

    v14 = [v4 instanceID];
    characteristicInstanceID = v5->_characteristicInstanceID;
    v5->_characteristicInstanceID = v14;

    v16 = [v4 value];
    value = v5->_value;
    v5->_value = v16;

    v18 = [v4 stateNumber];
    stateNumber = v5->_stateNumber;
    v5->_stateNumber = v18;

    v20 = [v4 valueUpdatedTime];
    updateTime = v5->_updateTime;
    v5->_updateTime = v20;
  }

  return v5;
}

@end