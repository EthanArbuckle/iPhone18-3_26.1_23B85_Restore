@interface HAPCharacteristicEnableEventCompletionTuple
+ (id)enableEventCompletionTupleWithHandler:(id)a3 queue:(id)a4;
@end

@implementation HAPCharacteristicEnableEventCompletionTuple

+ (id)enableEventCompletionTupleWithHandler:(id)a3 queue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HAPCharacteristicEnableEventCompletionTuple);
  [(HAPCharacteristicEnableEventCompletionTuple *)v7 setHandler:v6];

  [(HAPCharacteristicEnableEventCompletionTuple *)v7 setCompletionQueue:v5];

  return v7;
}

@end