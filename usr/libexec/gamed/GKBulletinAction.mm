@interface GKBulletinAction
- (GKBulletinAction)init;
- (GKBulletinAction)initWithCoder:(id)a3;
- (GKBulletinAction)initWithDictionary:(id)a3;
- (NSDictionary)actionDictionary;
- (id)appLaunchTrampolineURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKBulletinAction

- (GKBulletinAction)init
{
  v3.receiver = self;
  v3.super_class = GKBulletinAction;
  result = [(GKBulletinAction *)&v3 init];
  if (result)
  {
    *&result->_inAlertView = 257;
  }

  return result;
}

- (GKBulletinAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(GKBulletinAction *)self init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [v4 objectForKey:@"info"];
    info = v5->_info;
    v5->_info = v7;

    v9 = [v4 objectForKey:@"adamID"];
    adamID = v5->_adamID;
    v5->_adamID = v9;

    v11 = [v4 objectForKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v11;

    v13 = [v4 objectForKey:@"playerID"];
    playerID = v5->_playerID;
    v5->_playerID = v13;
  }

  return v5;
}

- (GKBulletinAction)initWithCoder:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletinAction initWithCoder:", buf, 2u);
  }

  v23.receiver = self;
  v23.super_class = GKBulletinAction;
  v7 = [(GKBulletinAction *)&v23 init];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v7->_type = [v8 integerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v7->_title;
    v7->_title = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"info"];
    info = v7->_info;
    v7->_info = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
    adamID = v7->_adamID;
    v7->_adamID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v7->_bundleID;
    v7->_bundleID = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playerID"];
    playerID = v7->_playerID;
    v7->_playerID = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isDestructive"];
    v7->_isDestructive = [v19 BOOLValue];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inAlertView"];
    v7->_inAlertView = [v20 BOOLValue];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inBannerView"];
    v7->_inBannerView = [v21 BOOLValue];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKBulletinAction encodeWithCoder:", v16, 2u);
  }

  v7 = [NSNumber numberWithInteger:[(GKBulletinAction *)self type]];
  [v4 encodeObject:v7 forKey:@"type"];

  v8 = [(GKBulletinAction *)self title];
  [v4 encodeObject:v8 forKey:@"title"];

  v9 = [(GKBulletinAction *)self info];
  [v4 encodeObject:v9 forKey:@"info"];

  v10 = [(GKBulletinAction *)self adamID];
  [v4 encodeObject:v10 forKey:@"adamID"];

  v11 = [(GKBulletinAction *)self bundleID];
  [v4 encodeObject:v11 forKey:@"bundleID"];

  v12 = [(GKBulletinAction *)self playerID];
  [v4 encodeObject:v12 forKey:@"playerID"];

  v13 = [NSNumber numberWithBool:[(GKBulletinAction *)self isDestructive]];
  [v4 encodeObject:v13 forKey:@"isDestructive"];

  v14 = [NSNumber numberWithBool:[(GKBulletinAction *)self inAlertView]];
  [v4 encodeObject:v14 forKey:@"inAlertView"];

  v15 = [NSNumber numberWithBool:[(GKBulletinAction *)self inBannerView]];
  [v4 encodeObject:v15 forKey:@"inBannerView"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[GKBulletinAction allocWithZone:?]];
  v4->_type = self->_type;
  objc_storeStrong(&v4->_info, self->_info);
  objc_storeStrong(&v4->_title, self->_title);
  objc_storeStrong(&v4->_adamID, self->_adamID);
  objc_storeStrong(&v4->_bundleID, self->_bundleID);
  objc_storeStrong(&v4->_playerID, self->_playerID);
  v4->_isDestructive = self->_isDestructive;
  v4->_inBannerView = self->_inBannerView;
  v4->_inAlertView = self->_inAlertView;
  return v4;
}

- (NSDictionary)actionDictionary
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKBulletinAction actionDictionary", v16, 2u);
  }

  v5 = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithLong:[(GKBulletinAction *)self type]];
  [v5 setObject:v6 forKey:@"type"];

  v7 = [(GKBulletinAction *)self info];

  if (v7)
  {
    v8 = [(GKBulletinAction *)self info];
    [v5 setObject:v8 forKey:@"info"];
  }

  v9 = [(GKBulletinAction *)self adamID];

  if (v9)
  {
    v10 = [(GKBulletinAction *)self adamID];
    [v5 setObject:v10 forKey:@"adamID"];
  }

  v11 = [(GKBulletinAction *)self bundleID];

  if (v11)
  {
    v12 = [(GKBulletinAction *)self bundleID];
    [v5 setObject:v12 forKey:@"bundleID"];
  }

  v13 = [(GKBulletinAction *)self playerID];

  if (v13)
  {
    v14 = [(GKBulletinAction *)self playerID];
    [v5 setObject:v14 forKey:@"playerID"];
  }

  return v5;
}

- (id)description
{
  v3 = [(GKBulletinAction *)self type];
  v4 = @"NO TYPE";
  if (!v3)
  {
    v4 = @"NoAction";
  }

  if (v3 == 1)
  {
    v5 = @"LaunchTrampoline";
  }

  else
  {
    v5 = v4;
  }

  v14.receiver = self;
  v14.super_class = GKBulletinAction;
  v6 = [(GKBulletinAction *)&v14 description];
  v7 = [(GKBulletinAction *)self title];
  v8 = [(GKBulletinAction *)self info];
  if ([(GKBulletinAction *)self isDestructive])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(GKBulletinAction *)self inBannerView])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(GKBulletinAction *)self inAlertView])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v6 stringByAppendingFormat:@"\n\ttitle:%@\n\ttype:%@\n\tinfo:%@\n\tisDestructive:%@\n\tinBannerView:%@\n\tinAlertView:%@", v7, v5, v8, v9, v10, v11];

  return v12;
}

- (id)appLaunchTrampolineURL
{
  v3 = [(GKBulletinAction *)self adamID];
  if (v3 && (v4 = v3, [(GKBulletinAction *)self bundleID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(GKBulletinAction *)self adamID];
    v7 = [v6 stringValue];
    v8 = [(GKBulletinAction *)self bundleID];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 bundleIdentifier];
    v11 = [ASCAppLaunchTrampolineURL URLWithAdamId:v7 bundleId:v8 localizedName:0 sourceApplication:v10 topic:0];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100294D48(v13, self);
    }

    v11 = 0;
  }

  return v11;
}

@end