@interface HAPArrayWrapper
+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name objectCreator:(id)creator;
@end

@implementation HAPArrayWrapper

+ (id)wrappertlv:(unint64_t)wrappertlv name:(id)name objectCreator:(id)creator
{
  creatorCopy = creator;
  nameCopy = name;
  v9 = [(HAPFieldWrapper *)[HAPArrayWrapper alloc] initWithTlvId:wrappertlv name:nameCopy];

  [(HAPArrayWrapper *)v9 setObjectCreator:creatorCopy];

  return v9;
}

@end