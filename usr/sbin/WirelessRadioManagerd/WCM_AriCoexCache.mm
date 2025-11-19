@interface WCM_AriCoexCache
- (WCM_AriCoexCache)init;
- (void)removeKey:(id)a3 subId:(unsigned int)a4;
@end

@implementation WCM_AriCoexCache

- (WCM_AriCoexCache)init
{
  v8.receiver = self;
  v8.super_class = WCM_AriCoexCache;
  v2 = [(WCM_AriCoexCache *)&v8 init];
  v3 = objc_alloc_init(NSMutableDictionary);
  mProperty0 = v2->mProperty0;
  v2->mProperty0 = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  mProperty1 = v2->mProperty1;
  v2->mProperty1 = v5;

  return v2;
}

- (void)removeKey:(id)a3 subId:(unsigned int)a4
{
  v7 = a3;
  if (v7)
  {
    v6 = 16;
    if (!a4)
    {
      v6 = 8;
    }

    [*(&self->super.isa + v6) removeObjectForKey:v7];
  }
}

@end