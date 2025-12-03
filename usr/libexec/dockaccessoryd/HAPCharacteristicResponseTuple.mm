@interface HAPCharacteristicResponseTuple
+ (id)responseTupleForCharacteristic:(id)characteristic error:(id)error;
@end

@implementation HAPCharacteristicResponseTuple

+ (id)responseTupleForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  errorCopy = error;
  v7 = objc_alloc_init(HAPCharacteristicResponseTuple);
  v8 = v7;
  if (v7)
  {
    [(HAPCharacteristicResponseTuple *)v7 setCharacteristic:characteristicCopy];
    value = [characteristicCopy value];
    [(HAPCharacteristicResponseTuple *)v8 setValue:value];

    valueUpdatedTime = [characteristicCopy valueUpdatedTime];
    [(HAPCharacteristicResponseTuple *)v8 setValueUpdatedTime:valueUpdatedTime];

    stateNumber = [characteristicCopy stateNumber];
    [(HAPCharacteristicResponseTuple *)v8 setStateNumber:stateNumber];

    notificationContext = [characteristicCopy notificationContext];
    [(HAPCharacteristicResponseTuple *)v8 setNotificationContext:notificationContext];

    [(HAPCharacteristicResponseTuple *)v8 setError:errorCopy];
  }

  return v8;
}

@end