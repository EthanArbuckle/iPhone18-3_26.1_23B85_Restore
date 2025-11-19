@interface RSDPreferences
- (RSDPreferences)initWithPrefDomain:(id)a3;
- (id)valueForKey:(id)a3;
- (void)eraseAll;
- (void)migrateContentsOnDisk;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)synchronize;
@end

@implementation RSDPreferences

- (RSDPreferences)initWithPrefDomain:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = RSDPreferences;
  v6 = [(RSDPreferences *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_prefDomain, a3);
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
  v3 = [(RSDPreferences *)self prefDomain];
  v4 = CFPreferencesCopyKeyList(v3, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

  if (v4)
  {
    v5 = [(RSDPreferences *)self prefDomain];
    CFPreferencesSetMultiple(0, v4, v5, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

    CFRelease(v4);
  }
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = [(RSDPreferences *)self prefDomain];
  v6 = CFPreferencesCopyValue(v4, v5, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

  return v6;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RSDPreferences *)self prefDomain];
  CFPreferencesSetValue(v6, v7, v8, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
}

- (void)synchronize
{
  v2 = [(RSDPreferences *)self prefDomain];
  CFPreferencesAppSynchronize(v2);
}

@end