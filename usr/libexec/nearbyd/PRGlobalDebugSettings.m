@interface PRGlobalDebugSettings
+ (id)sharedSettings;
- (BOOL)BOOLForKey:(id)a3;
- (PRGlobalDebugSettings)init;
- (id)objectForKey:(id)a3 ofClass:(Class)a4;
- (int64_t)integerForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
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

- (void)setObject:(id)a3 forKey:(id)a4
{
  v7 = a4;
  v6 = a3;
  [(PRGlobalDebugSettings *)self willChangeValueForKey:v7];
  [(NSMutableDictionary *)self->_dict setObject:v6 forKey:v7];

  [(PRGlobalDebugSettings *)self didChangeValueForKey:v7];
}

- (id)objectForKey:(id)a3 ofClass:(Class)a4
{
  v4 = [(NSMutableDictionary *)self->_dict objectForKey:a3];
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

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(PRGlobalDebugSettings *)self objectForKey:v4 ofClass:objc_opt_class()];

  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v5 = [(PRGlobalDebugSettings *)self objectForKey:v4 ofClass:objc_opt_class()];

  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end