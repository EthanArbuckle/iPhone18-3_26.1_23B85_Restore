@interface MediaService
- (id)_getAppleMusicAccountName:(id)a3;
- (id)_getLocalIconImagePath:(id)a3 remoteIconURL:(id)a4;
- (void)populateMediaService:(id)a3 homeID:(id)a4 homeUserID:(id)a5;
@end

@implementation MediaService

- (void)populateMediaService:(id)a3 homeID:(id)a4 homeUserID:(id)a5
{
  v28 = a4;
  v7 = a3;
  v8 = [(MediaService *)self serviceID];
  v9 = [v8 UUIDString];
  v10 = [v9 isEqualToString:kAppleMusicServiceIdentifier];

  if (v10)
  {
    v11 = [(MediaService *)self _getAppleMusicAccountName:v28];
    [(MediaService *)self setAccountName:v11];
  }

  v12 = [v7 serviceIconPath];
  [(MediaService *)self setRemoteIconURL:v12];

  v13 = [v7 serviceType];
  v14 = [v13 copy];
  [(MediaService *)self setServiceType:v14];

  v15 = [v7 serviceName];
  v16 = [v15 copy];
  [(MediaService *)self setServiceName:v16];

  v17 = [v7 bundleIDS];
  v18 = [v17 copy];
  [(MediaService *)self setAlternateBundleIdentifiers:v18];

  v19 = [v7 configurationPublicKey];
  v20 = [v19 copy];
  [(MediaService *)self setConfigPublicKey:v20];

  v21 = [v7 bundleIDS];
  v22 = [v21 firstObject];
  v23 = [v22 copy];
  [(MediaService *)self setBundleIdentifier:v23];

  v24 = [(MediaService *)self serviceID];
  v25 = [v24 UUIDString];
  v26 = [v7 serviceIconPath];

  v27 = [(MediaService *)self _getLocalIconImagePath:v25 remoteIconURL:v26];
  [(MediaService *)self setIconImageURL:v27];
}

- (id)_getAppleMusicAccountName:(id)a3
{
  v3 = a3;
  v4 = [[MSDAccount alloc] initWithHomeIdentifier:v3];

  v5 = [(MSDAccount *)v4 iTunesAccountName];

  return v5;
}

- (id)_getLocalIconImagePath:(id)a3 remoteIconURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MSDArtworkManager alloc] initWithServiceID:v6 remoteImageURL:v5];

  v8 = [(MSDArtworkManager *)v7 getLocalCachedImageURL];

  return v8;
}

@end