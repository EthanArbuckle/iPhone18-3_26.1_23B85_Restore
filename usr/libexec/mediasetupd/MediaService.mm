@interface MediaService
- (id)_getAppleMusicAccountName:(id)name;
- (id)_getLocalIconImagePath:(id)path remoteIconURL:(id)l;
- (void)populateMediaService:(id)service homeID:(id)d homeUserID:(id)iD;
@end

@implementation MediaService

- (void)populateMediaService:(id)service homeID:(id)d homeUserID:(id)iD
{
  dCopy = d;
  serviceCopy = service;
  serviceID = [(MediaService *)self serviceID];
  uUIDString = [serviceID UUIDString];
  v10 = [uUIDString isEqualToString:kAppleMusicServiceIdentifier];

  if (v10)
  {
    v11 = [(MediaService *)self _getAppleMusicAccountName:dCopy];
    [(MediaService *)self setAccountName:v11];
  }

  serviceIconPath = [serviceCopy serviceIconPath];
  [(MediaService *)self setRemoteIconURL:serviceIconPath];

  serviceType = [serviceCopy serviceType];
  v14 = [serviceType copy];
  [(MediaService *)self setServiceType:v14];

  serviceName = [serviceCopy serviceName];
  v16 = [serviceName copy];
  [(MediaService *)self setServiceName:v16];

  bundleIDS = [serviceCopy bundleIDS];
  v18 = [bundleIDS copy];
  [(MediaService *)self setAlternateBundleIdentifiers:v18];

  configurationPublicKey = [serviceCopy configurationPublicKey];
  v20 = [configurationPublicKey copy];
  [(MediaService *)self setConfigPublicKey:v20];

  bundleIDS2 = [serviceCopy bundleIDS];
  firstObject = [bundleIDS2 firstObject];
  v23 = [firstObject copy];
  [(MediaService *)self setBundleIdentifier:v23];

  serviceID2 = [(MediaService *)self serviceID];
  uUIDString2 = [serviceID2 UUIDString];
  serviceIconPath2 = [serviceCopy serviceIconPath];

  v27 = [(MediaService *)self _getLocalIconImagePath:uUIDString2 remoteIconURL:serviceIconPath2];
  [(MediaService *)self setIconImageURL:v27];
}

- (id)_getAppleMusicAccountName:(id)name
{
  nameCopy = name;
  v4 = [[MSDAccount alloc] initWithHomeIdentifier:nameCopy];

  iTunesAccountName = [(MSDAccount *)v4 iTunesAccountName];

  return iTunesAccountName;
}

- (id)_getLocalIconImagePath:(id)path remoteIconURL:(id)l
{
  lCopy = l;
  pathCopy = path;
  v7 = [[MSDArtworkManager alloc] initWithServiceID:pathCopy remoteImageURL:lCopy];

  getLocalCachedImageURL = [(MSDArtworkManager *)v7 getLocalCachedImageURL];

  return getLocalCachedImageURL;
}

@end