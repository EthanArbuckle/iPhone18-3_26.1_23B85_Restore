@interface GKBulletinAction
- (GKBulletinAction)init;
- (GKBulletinAction)initWithCoder:(id)coder;
- (GKBulletinAction)initWithDictionary:(id)dictionary;
- (NSDictionary)actionDictionary;
- (id)appLaunchTrampolineURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (GKBulletinAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(GKBulletinAction *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [dictionaryCopy objectForKey:@"info"];
    info = v5->_info;
    v5->_info = v7;

    v9 = [dictionaryCopy objectForKey:@"adamID"];
    adamID = v5->_adamID;
    v5->_adamID = v9;

    v11 = [dictionaryCopy objectForKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v11;

    v13 = [dictionaryCopy objectForKey:@"playerID"];
    playerID = v5->_playerID;
    v5->_playerID = v13;
  }

  return v5;
}

- (GKBulletinAction)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v7->_type = [v8 integerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v7->_title;
    v7->_title = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"info"];
    info = v7->_info;
    v7->_info = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
    adamID = v7->_adamID;
    v7->_adamID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v7->_bundleID;
    v7->_bundleID = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playerID"];
    playerID = v7->_playerID;
    v7->_playerID = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isDestructive"];
    v7->_isDestructive = [v19 BOOLValue];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inAlertView"];
    v7->_inAlertView = [v20 BOOLValue];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inBannerView"];
    v7->_inBannerView = [v21 BOOLValue];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
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
  [coderCopy encodeObject:v7 forKey:@"type"];

  title = [(GKBulletinAction *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  info = [(GKBulletinAction *)self info];
  [coderCopy encodeObject:info forKey:@"info"];

  adamID = [(GKBulletinAction *)self adamID];
  [coderCopy encodeObject:adamID forKey:@"adamID"];

  bundleID = [(GKBulletinAction *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  playerID = [(GKBulletinAction *)self playerID];
  [coderCopy encodeObject:playerID forKey:@"playerID"];

  v13 = [NSNumber numberWithBool:[(GKBulletinAction *)self isDestructive]];
  [coderCopy encodeObject:v13 forKey:@"isDestructive"];

  v14 = [NSNumber numberWithBool:[(GKBulletinAction *)self inAlertView]];
  [coderCopy encodeObject:v14 forKey:@"inAlertView"];

  v15 = [NSNumber numberWithBool:[(GKBulletinAction *)self inBannerView]];
  [coderCopy encodeObject:v15 forKey:@"inBannerView"];
}

- (id)copyWithZone:(_NSZone *)zone
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

  info = [(GKBulletinAction *)self info];

  if (info)
  {
    info2 = [(GKBulletinAction *)self info];
    [v5 setObject:info2 forKey:@"info"];
  }

  adamID = [(GKBulletinAction *)self adamID];

  if (adamID)
  {
    adamID2 = [(GKBulletinAction *)self adamID];
    [v5 setObject:adamID2 forKey:@"adamID"];
  }

  bundleID = [(GKBulletinAction *)self bundleID];

  if (bundleID)
  {
    bundleID2 = [(GKBulletinAction *)self bundleID];
    [v5 setObject:bundleID2 forKey:@"bundleID"];
  }

  playerID = [(GKBulletinAction *)self playerID];

  if (playerID)
  {
    playerID2 = [(GKBulletinAction *)self playerID];
    [v5 setObject:playerID2 forKey:@"playerID"];
  }

  return v5;
}

- (id)description
{
  type = [(GKBulletinAction *)self type];
  v4 = @"NO TYPE";
  if (!type)
  {
    v4 = @"NoAction";
  }

  if (type == 1)
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
  title = [(GKBulletinAction *)self title];
  info = [(GKBulletinAction *)self info];
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

  v12 = [v6 stringByAppendingFormat:@"\n\ttitle:%@\n\ttype:%@\n\tinfo:%@\n\tisDestructive:%@\n\tinBannerView:%@\n\tinAlertView:%@", title, v5, info, v9, v10, v11];

  return v12;
}

- (id)appLaunchTrampolineURL
{
  adamID = [(GKBulletinAction *)self adamID];
  if (adamID && (v4 = adamID, [(GKBulletinAction *)self bundleID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    adamID2 = [(GKBulletinAction *)self adamID];
    stringValue = [adamID2 stringValue];
    bundleID = [(GKBulletinAction *)self bundleID];
    v9 = +[NSBundle mainBundle];
    bundleIdentifier = [v9 bundleIdentifier];
    v11 = [ASCAppLaunchTrampolineURL URLWithAdamId:stringValue bundleId:bundleID localizedName:0 sourceApplication:bundleIdentifier topic:0];
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