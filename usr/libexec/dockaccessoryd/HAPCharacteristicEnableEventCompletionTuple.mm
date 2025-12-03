@interface HAPCharacteristicEnableEventCompletionTuple
+ (id)enableEventCompletionTupleWithHandler:(id)handler queue:(id)queue;
@end

@implementation HAPCharacteristicEnableEventCompletionTuple

+ (id)enableEventCompletionTupleWithHandler:(id)handler queue:(id)queue
{
  queueCopy = queue;
  handlerCopy = handler;
  v7 = objc_alloc_init(HAPCharacteristicEnableEventCompletionTuple);
  [(HAPCharacteristicEnableEventCompletionTuple *)v7 setHandler:handlerCopy];

  [(HAPCharacteristicEnableEventCompletionTuple *)v7 setCompletionQueue:queueCopy];

  return v7;
}

@end