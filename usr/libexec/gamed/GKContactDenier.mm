@interface GKContactDenier
- (id)deniedContactIdentifiers;
- (id)denyListLocation:(id)a3;
- (void)clearFriendSuggestionsDenyList;
- (void)denyContact:(id)a3 replyQueue:(id)a4 handler:(id)a5;
@end

@implementation GKContactDenier

- (void)denyContact:(id)a3 replyQueue:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[GKContactDenier denyContact:replyQueue:handler:]";
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Attempting to deny contact: %@", buf, 0x16u);
  }

  if (v8)
  {
    [(GKContactDenier *)self friendSuggestionsDenyListLocation];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011795C;
    v15 = block[3] = &unk_100360FC8;
    v16 = v8;
    v17 = v10;
    v13 = v15;
    dispatch_async(v9, block);
  }

  else
  {
    v13 = [NSError errorWithDomain:@"gamed" code:17 userInfo:0];
    (*(v10 + 2))(v10, v13);
  }
}

- (id)denyListLocation:(id)a3
{
  v3 = a3;
  v4 = GKInsecureCacheRoot();
  v5 = [v4 stringByAppendingPathComponent:v3];

  v6 = GKInsecureCacheRoot();
  v7 = gkEnsureDirectory();

  return v5;
}

- (void)clearFriendSuggestionsDenyList
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117AE4;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)deniedContactIdentifiers
{
  v2 = [(GKContactDenier *)self friendSuggestionsDenyListLocation];
  v3 = [NSURL fileURLWithPath:v2];

  v9 = 0;
  v4 = [NSDictionary dictionaryWithContentsOfURL:v3 error:&v9];
  v5 = v9;
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_10028E1B8(v5, v7);
    }
  }

  return v4;
}

@end