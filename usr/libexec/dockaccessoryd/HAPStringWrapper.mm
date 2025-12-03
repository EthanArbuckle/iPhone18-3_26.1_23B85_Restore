@interface HAPStringWrapper
+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name;
@end

@implementation HAPStringWrapper

+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name
{
  nameCopy = name;
  v6 = [(HAPFieldWrapper *)[HAPStringWrapper alloc] initWithTlvId:wrappertlv name:nameCopy];

  return v6;
}

@end