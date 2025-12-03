@interface RSDPreferences
- (RSDPreferences)initWithPrefDomain:(id)domain;
- (id)valueForKey:(id)key;
- (void)eraseAll;
- (void)migrateContentsOnDisk;
- (void)setValue:(id)value forKey:(id)key;
- (void)synchronize;
@end

@implementation RSDPreferences

- (RSDPreferences)initWithPrefDomain:(id)domain
{
  domainCopy = domain;
  v10.receiver = self;
  v10.super_class = RSDPreferences;
  v6 = [(RSDPreferences *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_prefDomain, domain);
    prefDomain = v7->_prefDomain;
    _CFPreferencesSetBackupDisabled();
  }

  return v7;
}

- (void)migrateContentsOnDisk
{
  v3 = [(RSDPreferences *)self valueForKey:@"remoted-prefs-version"];
  if (!v3)
  {
    v3 = &off_10005F2C8;
  }

  v4 = v3;
  if (([v3 isEqual:&off_10005F2E0] & 1) == 0)
  {
    if ([v4 compare:&off_10005F2E0] == -1)
    {
      [(RSDPreferences *)self eraseAll];
    }

    [(RSDPreferences *)self setValue:&off_10005F2E0 forKey:@"remoted-prefs-version"];
    [(RSDPreferences *)self synchronize];
  }

  _objc_release_x1();
}

- (void)eraseAll
{
  prefDomain = [(RSDPreferences *)self prefDomain];
  v4 = CFPreferencesCopyKeyList(prefDomain, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

  if (v4)
  {
    prefDomain2 = [(RSDPreferences *)self prefDomain];
    CFPreferencesSetMultiple(0, v4, prefDomain2, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

    CFRelease(v4);
  }
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  prefDomain = [(RSDPreferences *)self prefDomain];
  v6 = CFPreferencesCopyValue(keyCopy, prefDomain, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

  return v6;
}

- (void)setValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  prefDomain = [(RSDPreferences *)self prefDomain];
  CFPreferencesSetValue(keyCopy, valueCopy, prefDomain, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
}

- (void)synchronize
{
  prefDomain = [(RSDPreferences *)self prefDomain];
  CFPreferencesAppSynchronize(prefDomain);
}

@end