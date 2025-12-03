@interface PRGlobalDebugSettings
+ (id)sharedSettings;
- (BOOL)BOOLForKey:(id)key;
- (PRGlobalDebugSettings)init;
- (id)objectForKey:(id)key ofClass:(Class)class;
- (int64_t)integerForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation PRGlobalDebugSettings

+ (id)sharedSettings
{
  if (qword_1009F7970 != -1)
  {
    sub_1004C68F0();
  }

  v3 = qword_1009F7968;

  return v3;
}

- (PRGlobalDebugSettings)init
{
  v6.receiver = self;
  v6.super_class = PRGlobalDebugSettings;
  v2 = [(PRGlobalDebugSettings *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    dict = v2->_dict;
    v2->_dict = v3;
  }

  return v2;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  [(PRGlobalDebugSettings *)self willChangeValueForKey:keyCopy];
  [(NSMutableDictionary *)self->_dict setObject:objectCopy forKey:keyCopy];

  [(PRGlobalDebugSettings *)self didChangeValueForKey:keyCopy];
}

- (id)objectForKey:(id)key ofClass:(Class)class
{
  v4 = [(NSMutableDictionary *)self->_dict objectForKey:key];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [(PRGlobalDebugSettings *)self objectForKey:keyCopy ofClass:objc_opt_class()];

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  v5 = [(PRGlobalDebugSettings *)self objectForKey:keyCopy ofClass:objc_opt_class()];

  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

@end