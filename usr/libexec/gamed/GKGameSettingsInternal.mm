@interface GKGameSettingsInternal
- (id)initWithGameSettings:(id)settings;
@end

@implementation GKGameSettingsInternal

- (id)initWithGameSettings:(id)settings
{
  settingsCopy = settings;
  v12.receiver = self;
  v12.super_class = GKGameSettingsInternal;
  v5 = [(GKGameSettingsInternal *)&v12 init];
  if (v5)
  {
    bundleID = [settingsCopy bundleID];
    [(GKGameSettingsInternal *)v5 setBundleID:bundleID];

    allowFriendListAccess = [settingsCopy allowFriendListAccess];
    v8 = [&off_1003832F8 objectForKeyedSubscript:allowFriendListAccess];

    if (v8)
    {
      allowFriendListAccess2 = [settingsCopy allowFriendListAccess];
      v10 = [&off_1003832F8 objectForKeyedSubscript:allowFriendListAccess2];

      -[GKGameSettingsInternal setAllowFriendListAccess:](v5, "setAllowFriendListAccess:", [v10 integerValue]);
    }

    else
    {
      [(GKGameSettingsInternal *)v5 setAllowFriendListAccess:-1];
    }
  }

  return v5;
}

@end