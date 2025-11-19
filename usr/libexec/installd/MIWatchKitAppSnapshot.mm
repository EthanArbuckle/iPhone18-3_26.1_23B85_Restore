@interface MIWatchKitAppSnapshot
- (BOOL)createSnapshotWithError:(id *)a3;
- (MIWatchKitAppSnapshot)initWithBundleID:(id)a3 snapshotTo:(id)a4 onlyV1AppIfPresent:(BOOL)a5 placeholderOnly:(BOOL)a6;
- (void)dealloc;
@end

@implementation MIWatchKitAppSnapshot

- (MIWatchKitAppSnapshot)initWithBundleID:(id)a3 snapshotTo:(id)a4 onlyV1AppIfPresent:(BOOL)a5 placeholderOnly:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = MIWatchKitAppSnapshot;
  v13 = [(MIWatchKitAppSnapshot *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_bundleID, a3);
    v14->_onlyV1 = a5;
    v14->_placeholderOnly = a6;
    objc_storeStrong(&v14->_destURL, a4);
    v14->_identifierLocked = 0;
  }

  return v14;
}

- (void)dealloc
{
  if ([(MIWatchKitAppSnapshot *)self identifierLocked])
  {
    v3 = [(MIWatchKitAppSnapshot *)self bundleID];
    sub_100054780(v3);
  }

  v4.receiver = self;
  v4.super_class = MIWatchKitAppSnapshot;
  [(MIWatchKitAppSnapshot *)&v4 dealloc];
}

- (BOOL)createSnapshotWithError:(id *)a3
{
  v5 = [(MIWatchKitAppSnapshot *)self bundleID];
  sub_100054628(v5);

  [(MIWatchKitAppSnapshot *)self setIdentifierLocked:1];
  v6 = +[MIHelperServiceClient sharedInstance];
  v7 = [(MIWatchKitAppSnapshot *)self bundleID];
  v8 = [(MIWatchKitAppSnapshot *)self destURL];
  v14 = 0;
  v9 = [v6 createAppSnapshotWithBundleID:v7 snapshotToURL:v8 onlyV1AppIfPresent:-[MIWatchKitAppSnapshot onlyV1](self placeholderOnly:"onlyV1") withError:{-[MIWatchKitAppSnapshot placeholderOnly](self, "placeholderOnly"), &v14}];
  v10 = v14;

  v11 = [(MIWatchKitAppSnapshot *)self bundleID];
  sub_100054780(v11);

  [(MIWatchKitAppSnapshot *)self setIdentifierLocked:0];
  if (v9)
  {
    [(MIWatchKitAppSnapshot *)self setResultDict:v9];
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  if (a3 && v10)
  {
    v12 = v10;
    *a3 = v10;
  }

  return v9 != 0;
}

@end