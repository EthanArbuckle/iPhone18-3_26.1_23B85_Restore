@interface HAPUUIDWrapper
+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name;
@end

@implementation HAPUUIDWrapper

+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name
{
  nameCopy = name;
  v6 = [(HAPFieldWrapper *)[HAPUUIDWrapper alloc] initWithTlvId:wrappertlv name:nameCopy];

  return v6;
}

@end