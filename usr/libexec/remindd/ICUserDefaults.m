@interface ICUserDefaults
- (ICUserDefaults)init;
- (ICUserDefaults)initWithCloudSchemaCatchUpSyncSchedulingStateStorage:(id)a3;
- (id)userDefaults;
@end

@implementation ICUserDefaults

- (id)userDefaults
{
  v2 = +[REMUserDefaults daemonUserDefaults];
  v3 = [v2 userDefaults];

  return v3;
}

- (ICUserDefaults)initWithCloudSchemaCatchUpSyncSchedulingStateStorage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICUserDefaults;
  v5 = [(ICUserDefaults *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICUserDefaults *)v5 setCloudSchemaCatchUpSyncSchedulingStateStorage:v4];
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