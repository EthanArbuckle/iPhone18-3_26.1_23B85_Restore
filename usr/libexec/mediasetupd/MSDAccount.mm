@interface MSDAccount
+ (ACAccount)activeiTunesAccount;
- (BOOL)_accountHasLocalPlayableContent:(id)content;
- (BOOL)hasValidSubscription;
- (MSDAccount)initWithHomeIdentifier:(id)identifier;
- (MSDAccount)initWithHomeUserIdentifier:(id)identifier;
- (NSString)iTunesAccountName;
@end

@implementation MSDAccount

- (MSDAccount)initWithHomeUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MSDAccount;
  v6 = [(MSDAccount *)&v11 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (identifierCopy)
  {
    objc_storeStrong(&v6->_homeUserIdentifier, identifier);
    v7->_syncLock._os_unfair_lock_opaque = 0;
LABEL_4:
    v8 = v7;
    goto LABEL_8;
  }

  v9 = sub_100030FE4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1000195B8();
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (MSDAccount)initWithHomeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MSDAccount;
  v6 = [(MSDAccount *)&v11 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (identifierCopy)
  {
    objc_storeStrong(&v6->_homeIdentifier, identifier);
LABEL_4:
    v8 = v7;
    goto LABEL_8;
  }

  v9 = sub_100030FE4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1000195F8();
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (NSString)iTunesAccountName
{
  v3 = +[ACAccountStore ams_sharedAccountStore];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100018C70;
  v16 = sub_100018C80;
  v17 = 0;
  os_unfair_lock_lock(&self->_syncLock);
  objc_initWeak(&location, self);
  v4 = [v3 ams_mediaAccountForHomeWithIdentifier:self->_homeIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100018C88;
  v9[3] = &unk_100051818;
  objc_copyWeak(&v10, &location);
  v9[4] = &v12;
  [v4 resultWithTimeout:v9 completion:2.0];
  v5 = sub_100030FE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    username = [v13[5] username];
    *buf = 138412290;
    v19 = username;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User Active iTunes Account: %@", buf, 0xCu);
  }

  username2 = [v13[5] username];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v12, 8);

  return username2;
}

- (BOOL)hasValidSubscription
{
  if (qword_100059A80 != -1)
  {
    sub_1000196C4();
  }

  v3 = +[ACAccountStore ams_sharedAccountStore];
  v4 = [v3 ams_iTunesAccountWithHomeUserIdentifier:self->_homeUserIdentifier];

  if (v4)
  {
    ams_DSID = [v4 ams_DSID];
    v6 = [qword_100059A78 objectForKey:ams_DSID];
    v7 = v6;
    if (v6)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 1;
      v9 = dispatch_semaphore_create(0);
      v10 = sub_100030FE4();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v35 = v4;
        v36 = 2113;
        v37 = ams_DSID;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UserAccount %{private}@ with DSID %{private}@", buf, 0x16u);
      }

      v11 = [ICUserIdentity specificAccountWithDSID:ams_DSID];
      v12 = sub_100030FE4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v35 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "UserIdentity %{private}@", buf, 0xCu);
      }

      v24 = [[ICStoreRequestContext alloc] initWithIdentity:v11];
      v13 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:v24];
      [v13 setShouldReturnLastKnownStatusOnly:1];
      v14 = MSDGenerateSignpostID();
      v15 = MSDSignpostFacility();
      v16 = v15;
      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CheckSubscriptionStatus", &unk_10003DCC2, buf, 2u);
      }

      objc_initWeak(buf, self);
      v17 = +[ICMusicSubscriptionStatusController sharedStatusController];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000191FC;
      v25[3] = &unk_100051860;
      v28 = &v30;
      objc_copyWeak(v29, buf);
      v18 = v11;
      v26 = v18;
      v29[1] = v14;
      v19 = v9;
      v27 = v19;
      [v17 performSubscriptionStatusRequest:v13 withStatusHandler:v25];
      v20 = dispatch_time(0, 1000000000 * MSiTunesCloudSubscriptionStatusMaxTimeOut);
      dispatch_semaphore_wait(v19, v20);
      v21 = qword_100059A78;
      v22 = [NSNumber numberWithBool:*(v31 + 24)];
      [v21 setObject:v22 forKey:ams_DSID];

      bOOLValue = *(v31 + 24);
      objc_destroyWeak(v29);

      objc_destroyWeak(buf);
      _Block_object_dispose(&v30, 8);
    }
  }

  else
  {
    ams_DSID = sub_100030FE4();
    if (os_log_type_enabled(ams_DSID, OS_LOG_TYPE_ERROR))
    {
      sub_1000196D8(&self->_homeUserIdentifier);
    }

    bOOLValue = 0;
  }

  return bOOLValue & 1;
}

- (BOOL)_accountHasLocalPlayableContent:(id)content
{
  contentCopy = content;
  v4 = +[MPMediaQuery songsQuery];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:contentCopy];

  [v4 setIgnoreSystemFilterPredicates:1];
  [v4 setMediaLibrary:v5];
  v6 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyHasNonPurgeableAsset];
  [v4 addFilterPredicate:v6];

  LOBYTE(v6) = [v4 _hasItems];
  return v6;
}

+ (ACAccount)activeiTunesAccount
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v2 ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

@end