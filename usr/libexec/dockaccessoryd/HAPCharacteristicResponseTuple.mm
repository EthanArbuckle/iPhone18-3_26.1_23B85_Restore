@interface HAPCharacteristicResponseTuple
+ (id)responseTupleForCharacteristic:(id)a3 error:(id)a4;
@end

@implementation HAPCharacteristicResponseTuple

+ (id)responseTupleForCharacteristic:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(HAPCharacteristicResponseTuple);
  v8 = v7;
  if (v7)
  {
    [(HAPCharacteristicResponseTuple *)v7 setCharacteristic:v5];
    v9 = [v5 value];
    [(HAPCharacteristicResponseTuple *)v8 setValue:v9];

    v10 = [v5 valueUpdatedTime];
    [(HAPCharacteristicResponseTuple *)v8 setValueUpdatedTime:v10];

    v11 = [v5 stateNumber];
    [(HAPCharacteristicResponseTuple *)v8 setStateNumber:v11];

    v12 = [v5 notificationContext];
    [(HAPCharacteristicResponseTuple *)v8 setNotificationContext:v12];

    [(HAPCharacteristicResponseTuple *)v8 setError:v6];
  }

  return v8;
}

@end