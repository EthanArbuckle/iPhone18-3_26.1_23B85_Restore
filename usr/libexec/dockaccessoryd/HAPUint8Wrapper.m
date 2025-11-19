@interface HAPUint8Wrapper
+ (id)wrappertlv:(unint64_t)a3 name:(id)a4;
@end

@implementation HAPUint8Wrapper

+ (id)wrappertlv:(unint64_t)a3 name:(id)a4
{
  v5 = a4;
  v6 = [(HAPFieldWrapper *)[HAPUint8Wrapper alloc] initWithTlvId:a3 name:v5];

  return v6;
}

@end