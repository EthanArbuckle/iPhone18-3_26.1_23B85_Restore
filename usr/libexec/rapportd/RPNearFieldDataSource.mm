@interface RPNearFieldDataSource
- (RPNearFieldDataSource)initWithDispatchQueue:(id)queue;
- (id)_AWDLBonjourTransportServiceMetadata;
- (id)_identityForNFCDeviceDiscovery;
- (id)_requestMessageMetadata;
- (id)_selfIdentity;
- (id)_transportServiceMetadataWithServiceType:(unint64_t)type;
- (id)createAuthenticationPayloadWithPkData:(id)data bonjourListenerUUID:(id)d;
- (id)createRequestMessageWithApplicationLabel:(id)label payload:(id)payload;
- (id)createResponseWithApplicationLabel:(id)label payload:(id)payload forRequestMessage:(id)message;
- (id)createTapEventWithApplicationLabel:(id)label singleBandAWDLModeRequested:(BOOL)requested pkData:(id)data bonjourListenerUUID:(id)d identity:(id)identity isUnsupportedApplicationLabel:(BOOL)applicationLabel flags:(unsigned int)flags;
@end

@implementation RPNearFieldDataSource

- (RPNearFieldDataSource)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = RPNearFieldDataSource;
  v6 = [(RPNearFieldDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
    sub_100053724();
  }

  return v7;
}

- (id)createAuthenticationPayloadWithPkData:(id)data bonjourListenerUUID:(id)d
{
  dCopy = d;
  dataCopy = data;
  v8 = [RPNearFieldAuthenticationPayload alloc];
  v9 = +[NSDate now];
  _identityForNFCDeviceDiscovery = [(RPNearFieldDataSource *)self _identityForNFCDeviceDiscovery];
  v11 = [(RPNearFieldAuthenticationPayload *)v8 initWithTimeStamp:v9 pkData:dataCopy bonjourListenerUUID:dCopy selfIdentity:_identityForNFCDeviceDiscovery];

  return v11;
}

- (id)createRequestMessageWithApplicationLabel:(id)label payload:(id)payload
{
  payloadCopy = payload;
  labelCopy = label;
  if ([payloadCopy type] == 1)
  {
    [(RPNearFieldDataSource *)self _requestMessageMetadata];
  }

  else
  {
    +[NSArray array];
  }
  v8 = ;
  v9 = [RPTransportServiceHandoverMessage messageWithMetadata:v8 applicationLabel:labelCopy payload:payloadCopy version:@"1.1"];

  return v9;
}

- (id)createResponseWithApplicationLabel:(id)label payload:(id)payload forRequestMessage:(id)message
{
  labelCopy = label;
  payloadCopy = payload;
  messageCopy = message;
  v11 = objc_alloc_init(NSMutableArray);
  if (sub_1000583E8([payloadCopy type]))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    transportServicesMetadata = [messageCopy transportServicesMetadata];
    v13 = [transportServicesMetadata countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(transportServicesMetadata);
          }

          serviceType = [*(*(&v21 + 1) + 8 * i) serviceType];
          if (sub_100072894(serviceType))
          {
            v18 = [(RPNearFieldDataSource *)self _transportServiceMetadataWithServiceType:serviceType];
            if (v18)
            {
              [v11 addObject:v18];
            }
          }
        }

        v14 = [transportServicesMetadata countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  v19 = [RPTransportServiceHandoverMessage messageWithMetadata:v11 applicationLabel:labelCopy payload:payloadCopy version:@"1.1"];

  return v19;
}

- (id)createTapEventWithApplicationLabel:(id)label singleBandAWDLModeRequested:(BOOL)requested pkData:(id)data bonjourListenerUUID:(id)d identity:(id)identity isUnsupportedApplicationLabel:(BOOL)applicationLabel flags:(unsigned int)flags
{
  identityCopy = identity;
  dispatchQueue = self->_dispatchQueue;
  dCopy = d;
  dataCopy = data;
  labelCopy = label;
  dispatch_assert_queue_V2(dispatchQueue);
  type = [identityCopy type];
  contactID = [identityCopy contactID];
  accountID = [identityCopy accountID];
  idsDeviceID = [identityCopy idsDeviceID];
  if (idsDeviceID)
  {
    if (requested)
    {
LABEL_3:
      v22 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v23 = +[NSUUID UUID];
    idsDeviceID = [v23 UUIDString];

    if (requested)
    {
      goto LABEL_3;
    }
  }

  v22 = sub_100053724();
LABEL_6:
  HIDWORD(v28) = flags;
  BYTE2(v28) = applicationLabel;
  BYTE1(v28) = identityCopy != 0;
  LOBYTE(v28) = v22;
  v24 = [RPNearFieldTapEvent initWithIdentifier:"initWithIdentifier:applicationLabel:pkData:bonjourListenerUUID:isSameAccount:contactID:accountID:forceSingleBandAWDLMode:knownIdentity:isUnsupportedApplicationLabel:flags:" applicationLabel:idsDeviceID pkData:labelCopy bonjourListenerUUID:dataCopy isSameAccount:dCopy contactID:type == 2 accountID:contactID forceSingleBandAWDLMode:accountID knownIdentity:v28 isUnsupportedApplicationLabel:? flags:?];

  if (type == 2)
  {
    name = [identityCopy name];
    [(RPNearFieldTapEvent *)v24 setDeviceName:name];

    model = [identityCopy model];
    [(RPNearFieldTapEvent *)v24 setDeviceModel:model];
  }

  return v24;
}

- (id)_selfIdentity
{
  v2 = +[RPIdentityDaemon sharedIdentityDaemon];
  v3 = [v2 identityOfSelfAndReturnError:0];

  v4 = objc_opt_new();
  edPKData = [v3 edPKData];
  [v4 setEdPKData:edPKData];

  edSKData = [v3 edSKData];
  [v4 setEdSKData:edSKData];

  deviceIRKData = [v3 deviceIRKData];
  [v4 setDeviceIRKData:deviceIRKData];

  sepPrivateKey = [v3 sepPrivateKey];
  if (sepPrivateKey)
  {
    [v4 updateWithSEPPrivateKey:sepPrivateKey];
  }

  return v4;
}

- (id)_identityForNFCDeviceDiscovery
{
  _selfIdentity = [(RPNearFieldDataSource *)self _selfIdentity];
  if (!_selfIdentity)
  {
    if (dword_1001D3860 <= 60 && (dword_1001D3860 != -1 || _LogCategory_Initialize()))
    {
      sub_100117850();
    }

    _selfIdentity = [[RPIdentity alloc] initWithType:14];
    v3 = NSRandomData();
    [_selfIdentity setDeviceIRKData:v3];
  }

  v4 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  localDeviceInfo = [v4 localDeviceInfo];
  model = [localDeviceInfo model];
  [_selfIdentity setModel:model];

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  sessionPairingIdentifier = [v7 sessionPairingIdentifier];
  uUIDString = [sessionPairingIdentifier UUIDString];
  [_selfIdentity setIdentifier:uUIDString];

  return _selfIdentity;
}

- (id)_transportServiceMetadataWithServiceType:(unint64_t)type
{
  if (type == 1)
  {
    _AWDLBonjourTransportServiceMetadata = [(RPNearFieldDataSource *)self _AWDLBonjourTransportServiceMetadata];
  }

  else
  {
    _AWDLBonjourTransportServiceMetadata = 0;
  }

  return _AWDLBonjourTransportServiceMetadata;
}

- (id)_AWDLBonjourTransportServiceMetadata
{
  v2 = [[RPAWDLBonjourTransportServiceMetadata alloc] initWithSingleBandModeRequired:sub_100053724()];

  return v2;
}

- (id)_requestMessageMetadata
{
  v3 = objc_opt_new();
  if (sub_100072894(1))
  {
    v4 = [(RPNearFieldDataSource *)self _transportServiceMetadataWithServiceType:1];
    if (v4)
    {
      [v3 addObject:v4];
    }
  }

  return v3;
}

@end