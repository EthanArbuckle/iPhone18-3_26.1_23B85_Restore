@interface CryptexPathMap
- (CryptexPathMap)init;
@end

@implementation CryptexPathMap

- (CryptexPathMap)init
{
  v6.receiver = self;
  v6.super_class = CryptexPathMap;
  v2 = [(CryptexPathMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    dict = v2->_dict;
    v2->_dict = v3;
  }

  return v2;
}

@end