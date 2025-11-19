@interface APThirdPartySegmentUpdateRequester
- (APThirdPartySegmentUpdateRequester)initWithBundleID:(id)a3 identifier:(id)a4 segmentIdentifiers:(id)a5 replaceExisting:(BOOL)a6 privateSegment:(BOOL)a7;
- (id)protoBuffer;
@end

@implementation APThirdPartySegmentUpdateRequester

- (APThirdPartySegmentUpdateRequester)initWithBundleID:(id)a3 identifier:(id)a4 segmentIdentifiers:(id)a5 replaceExisting:(BOOL)a6 privateSegment:(BOOL)a7
{
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = +[APIDAccountProvider privateUserAccount];
  v19.receiver = self;
  v19.super_class = APThirdPartySegmentUpdateRequester;
  v17 = [(APServerRequester *)&v19 initWithBundleID:v15 requestIdentifier:v14 contextIdentifier:0 contentIdentifier:0 idAccount:v16];

  if (v17)
  {
    objc_storeStrong(&v17->_segmentIdentifiers, a5);
    v17->_replaceExisting = a6;
    v17->_privateSegment = a7;
  }

  return v17;
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBThirdPartySegmentUpdateRequest);
  v4 = +[APEncryptedIDProvider provider];
  v5 = [(APServerRequester *)self idAccount];
  v6 = [v4 encryptedIDsForIDAccountPrivate:v5];

  if ([(APThirdPartySegmentUpdateRequester *)self privateSegment])
  {
    [v6 contentID];
  }

  else
  {
    [v6 iAdID];
  }
  v7 = ;
  [(APPBThirdPartySegmentUpdateRequest *)v3 setIAdID:v7];

  v8 = [v6 toroID];
  [(APPBThirdPartySegmentUpdateRequest *)v3 setToroID:v8];

  v9 = [v6 DPID];
  [(APPBThirdPartySegmentUpdateRequest *)v3 setDPID:v9];

  v10 = [(APThirdPartySegmentUpdateRequester *)self segmentIdentifiers];
  v11 = [v10 mutableCopy];
  [(APPBThirdPartySegmentUpdateRequest *)v3 setSegmentIdentifiers:v11];

  [(APPBThirdPartySegmentUpdateRequest *)v3 setResetSegmentMembership:[(APThirdPartySegmentUpdateRequester *)self replaceExisting]];
  v12 = [(APServerRequester *)self bundleID];
  [(APPBThirdPartySegmentUpdateRequest *)v3 setAppID:v12];

  if (+[APSystemInternal isAppleInternalInstall])
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [(APPBThirdPartySegmentUpdateRequest *)v3 setRunState:v13];
  [(APPBThirdPartySegmentUpdateRequest *)v3 setPrivateSegment:[(APThirdPartySegmentUpdateRequester *)self privateSegment]];

  return v3;
}

@end