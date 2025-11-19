@interface GKGameSettingsInternal
- (id)initWithGameSettings:(id)a3;
@end

@implementation GKGameSettingsInternal

- (id)initWithGameSettings:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GKGameSettingsInternal;
  v5 = [(GKGameSettingsInternal *)&v12 init];
  if (v5)
  {
    v6 = [v4 bundleID];
    [(GKGameSettingsInternal *)v5 setBundleID:v6];

    v7 = [v4 allowFriendListAccess];
    v8 = [&off_1003832F8 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [v4 allowFriendListAccess];
      v10 = [&off_1003832F8 objectForKeyedSubscript:v9];

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