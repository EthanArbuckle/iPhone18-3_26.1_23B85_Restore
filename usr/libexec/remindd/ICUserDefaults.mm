@interface ICUserDefaults
- (ICUserDefaults)init;
- (ICUserDefaults)initWithCloudSchemaCatchUpSyncSchedulingStateStorage:(id)storage;
- (id)userDefaults;
@end

@implementation ICUserDefaults

- (id)userDefaults
{
  v2 = +[REMUserDefaults daemonUserDefaults];
  userDefaults = [v2 userDefaults];

  return userDefaults;
}

- (ICUserDefaults)initWithCloudSchemaCatchUpSyncSchedulingStateStorage:(id)storage
{
  storageCopy = storage;
  v8.receiver = self;
  v8.super_class = ICUserDefaults;
  v5 = [(ICUserDefaults *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICUserDefaults *)v5 setCloudSchemaCatchUpSyncSchedulingStateStorage:storageCopy];
  }

  return v6;
}

- (ICUserDefaults)init
{
  v3 = +[REMUserDefaults daemonUserDefaults];
  v4 = [(ICUserDefaults *)self initWithCloudSchemaCatchUpSyncSchedulingStateStorage:v3];

  return v4;
}

@end