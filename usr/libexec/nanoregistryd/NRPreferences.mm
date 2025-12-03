@interface NRPreferences
- (BOOL)synchronize;
- (NRPreferences)init;
- (NRPreferences)initWithDomain:(id)domain;
- (id)_objectForKeyedSubscript:(id)subscript;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)_clear;
- (void)setDomain:(id)domain;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation NRPreferences

- (NRPreferences)init
{
  v7.receiver = self;
  v7.super_class = NRPreferences;
  v2 = [(NRPreferences *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoRegistry.NRPreferences", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (NRPreferences)initWithDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(NRPreferences *)self init];
  v6 = v5;
  if (v5)
  {
    [(NRPreferences *)v5 setDomain:domainCopy];
  }

  return v6;
}

- (BOOL)synchronize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000122F4;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10001245C;
  v16 = sub_10001246C;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012474;
  block[3] = &unk_100175BE0;
  v10 = subscriptCopy;
  v11 = &v12;
  block[4] = self;
  v6 = subscriptCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_objectForKeyedSubscript:(id)subscript
{
  v3 = CFPreferencesCopyAppValue(subscript, self->_domain);

  return v3;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000125B8;
  block[3] = &unk_1001758F8;
  block[4] = self;
  v12 = objectCopy;
  v13 = subscriptCopy;
  v9 = subscriptCopy;
  v10 = objectCopy;
  dispatch_async(queue, block);
}

- (void)_clear
{
  v4 = CFPreferencesCopyMultiple(0, self->_domain, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  allKeys = [(__CFDictionary *)v4 allKeys];
  CFPreferencesSetMultiple(0, allKeys, self->_domain, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
}

- (void)setDomain:(id)domain
{
  domainCopy = domain;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001270C;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = domainCopy;
  v6 = domainCopy;
  dispatch_async(queue, v7);
}

@end