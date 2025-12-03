@interface MIWatchKitAppSnapshot
- (BOOL)createSnapshotWithError:(id *)error;
- (MIWatchKitAppSnapshot)initWithBundleID:(id)d snapshotTo:(id)to onlyV1AppIfPresent:(BOOL)present placeholderOnly:(BOOL)only;
- (void)dealloc;
@end

@implementation MIWatchKitAppSnapshot

- (MIWatchKitAppSnapshot)initWithBundleID:(id)d snapshotTo:(id)to onlyV1AppIfPresent:(BOOL)present placeholderOnly:(BOOL)only
{
  dCopy = d;
  toCopy = to;
  v16.receiver = self;
  v16.super_class = MIWatchKitAppSnapshot;
  v13 = [(MIWatchKitAppSnapshot *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_bundleID, d);
    v14->_onlyV1 = present;
    v14->_placeholderOnly = only;
    objc_storeStrong(&v14->_destURL, to);
    v14->_identifierLocked = 0;
  }

  return v14;
}

- (void)dealloc
{
  if ([(MIWatchKitAppSnapshot *)self identifierLocked])
  {
    bundleID = [(MIWatchKitAppSnapshot *)self bundleID];
    sub_100054780(bundleID);
  }

  v4.receiver = self;
  v4.super_class = MIWatchKitAppSnapshot;
  [(MIWatchKitAppSnapshot *)&v4 dealloc];
}

- (BOOL)createSnapshotWithError:(id *)error
{
  bundleID = [(MIWatchKitAppSnapshot *)self bundleID];
  sub_100054628(bundleID);

  [(MIWatchKitAppSnapshot *)self setIdentifierLocked:1];
  v6 = +[MIHelperServiceClient sharedInstance];
  bundleID2 = [(MIWatchKitAppSnapshot *)self bundleID];
  destURL = [(MIWatchKitAppSnapshot *)self destURL];
  v14 = 0;
  v9 = [v6 createAppSnapshotWithBundleID:bundleID2 snapshotToURL:destURL onlyV1AppIfPresent:-[MIWatchKitAppSnapshot onlyV1](self placeholderOnly:"onlyV1") withError:{-[MIWatchKitAppSnapshot placeholderOnly](self, "placeholderOnly"), &v14}];
  v10 = v14;

  bundleID3 = [(MIWatchKitAppSnapshot *)self bundleID];
  sub_100054780(bundleID3);

  [(MIWatchKitAppSnapshot *)self setIdentifierLocked:0];
  if (v9)
  {
    [(MIWatchKitAppSnapshot *)self setResultDict:v9];
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  if (error && v10)
  {
    v12 = v10;
    *error = v10;
  }

  return v9 != 0;
}

@end