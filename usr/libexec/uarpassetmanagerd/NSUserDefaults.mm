@interface NSUserDefaults
+ (id)AUDeveloperSettingsObjectWithKey:(id)key;
+ (void)AUDeveloperSettingsSetObject:(id)object withKey:(id)key;
+ (void)AUDeveloperSettingsUpdateAccessory:(id)accessory withKey:(id)key;
@end

@implementation NSUserDefaults

+ (void)AUDeveloperSettingsSetObject:(id)object withKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, object);
  v11 = 0;
  objc_storeStrong(&v11, key);
  if (getuid() == 278)
  {
    v5 = [NSUserDefaults alloc];
    v6 = MapPreferenceSuiteToString(1);
    v10 = [v5 initWithSuiteName:?];

    [v10 setObject:location[0] forKey:v11];
    v9 = 1;
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v4 = +[AUHelperInstance sharedInstance];
    remoteObject = [(AUHelperInstance *)v4 remoteObject];

    [(AUHelperServiceProtocol *)remoteObject userPreferenceSetObject:location[0] forSuite:1 withKey:v11];
    objc_storeStrong(&remoteObject, 0);
    v9 = 0;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

+ (void)AUDeveloperSettingsUpdateAccessory:(id)accessory withKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accessory);
  v7 = 0;
  objc_storeStrong(&v7, key);
  v5 = +[AUHelperInstance sharedInstance];
  remoteObject = [(AUHelperInstance *)v5 remoteObject];

  [(AUHelperServiceProtocol *)remoteObject userPreferenceUpdateAccessorySettings:location[0] withKey:v7];
  objc_storeStrong(&remoteObject, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

+ (id)AUDeveloperSettingsObjectWithKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  if (getuid() == 278)
  {
    v6 = [NSUserDefaults alloc];
    v7 = MapPreferenceSuiteToString(1);
    v17 = [v6 initWithSuiteName:?];

    v19 = [v17 objectForKey:location[0]];
    v16 = 1;
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v5 = +[AUHelperInstance sharedInstance];
    remoteObject = [(AUHelperInstance *)v5 remoteObject];

    v8 = 0;
    v9 = &v8;
    v10 = 838860800;
    v11 = 48;
    v12 = __Block_byref_object_copy_;
    v13 = __Block_byref_object_dispose_;
    v14 = 0;
    [remoteObject userPreferenceObjectForSuite:1 withKey:location[0] withReply:?];
    v19 = v9[5];
    v16 = 1;
    _Block_object_dispose(&v8, 8);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&remoteObject, 0);
  }

  objc_storeStrong(location, 0);
  v3 = v19;

  return v3;
}

void __67__NSUserDefaults_AUHelperExtend__AUDeveloperSettingsObjectWithKey___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  objc_storeStrong(location, 0);
}

@end