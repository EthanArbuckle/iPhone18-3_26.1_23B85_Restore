@interface APThirdPartySegmentUpdateRequester
- (APThirdPartySegmentUpdateRequester)initWithBundleID:(id)d identifier:(id)identifier segmentIdentifiers:(id)identifiers replaceExisting:(BOOL)existing privateSegment:(BOOL)segment;
- (id)protoBuffer;
@end

@implementation APThirdPartySegmentUpdateRequester

- (APThirdPartySegmentUpdateRequester)initWithBundleID:(id)d identifier:(id)identifier segmentIdentifiers:(id)identifiers replaceExisting:(BOOL)existing privateSegment:(BOOL)segment
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  dCopy = d;
  v16 = +[APIDAccountProvider privateUserAccount];
  v19.receiver = self;
  v19.super_class = APThirdPartySegmentUpdateRequester;
  v17 = [(APServerRequester *)&v19 initWithBundleID:dCopy requestIdentifier:identifierCopy contextIdentifier:0 contentIdentifier:0 idAccount:v16];

  if (v17)
  {
    objc_storeStrong(&v17->_segmentIdentifiers, identifiers);
    v17->_replaceExisting = existing;
    v17->_privateSegment = segment;
  }

  return v17;
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBThirdPartySegmentUpdateRequest);
  v4 = +[APEncryptedIDProvider provider];
  idAccount = [(APServerRequester *)self idAccount];
  v6 = [v4 encryptedIDsForIDAccountPrivate:idAccount];

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

  toroID = [v6 toroID];
  [(APPBThirdPartySegmentUpdateRequest *)v3 setToroID:toroID];

  dPID = [v6 DPID];
  [(APPBThirdPartySegmentUpdateRequest *)v3 setDPID:dPID];

  segmentIdentifiers = [(APThirdPartySegmentUpdateRequester *)self segmentIdentifiers];
  v11 = [segmentIdentifiers mutableCopy];
  [(APPBThirdPartySegmentUpdateRequest *)v3 setSegmentIdentifiers:v11];

  [(APPBThirdPartySegmentUpdateRequest *)v3 setResetSegmentMembership:[(APThirdPartySegmentUpdateRequester *)self replaceExisting]];
  bundleID = [(APServerRequester *)self bundleID];
  [(APPBThirdPartySegmentUpdateRequest *)v3 setAppID:bundleID];

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