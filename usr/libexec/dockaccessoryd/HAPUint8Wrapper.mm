@interface HAPUint8Wrapper
+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name;
@end

@implementation HAPUint8Wrapper

+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name
{
  nameCopy = name;
  v6 = [(HAPFieldWrapper *)[HAPUint8Wrapper alloc] initWithTlvId:wrappertlv name:nameCopy];

  return v6;
}

@end