@interface RPNearFieldDataSource
- (RPNearFieldDataSource)initWithDispatchQueue:(id)a3;
- (id)_AWDLBonjourTransportServiceMetadata;
- (id)_identityForNFCDeviceDiscovery;
- (id)_requestMessageMetadata;
- (id)_selfIdentity;
- (id)_transportServiceMetadataWithServiceType:(unint64_t)a3;
- (id)createAuthenticationPayloadWithPkData:(id)a3 bonjourListenerUUID:(id)a4;
- (id)createRequestMessageWithApplicationLabel:(id)a3 payload:(id)a4;
- (id)createResponseWithApplicationLabel:(id)a3 payload:(id)a4 forRequestMessage:(id)a5;
- (id)createTapEventWithApplicationLabel:(id)a3 singleBandAWDLModeRequested:(BOOL)a4 pkData:(id)a5 bonjourListenerUUID:(id)a6 identity:(id)a7 isUnsupportedApplicationLabel:(BOOL)a8 flags:(unsigned int)a9;
@end

@implementation RPNearFieldDataSource

- (RPNearFieldDataSource)initWithDispatchQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RPNearFieldDataSource;
  v6 = [(RPNearFieldDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, a3);
    sub_100053724();
  }

  return v7;
}

- (id)createAuthenticationPayloadWithPkData:(id)a3 bonjourListenerUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [RPNearFieldAuthenticationPayload alloc];
  v9 = +[NSDate now];
  v10 = [(RPNearFieldDataSource *)self _identityForNFCDeviceDiscovery];
  v11 = [(RPNearFieldAuthenticationPayload *)v8 initWithTimeStamp:v9 pkData:v7 bonjourListenerUUID:v6 selfIdentity:v10];

  return v11;
}

- (id)createRequestMessageWithApplicationLabel:(id)a3 payload:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 type] == 1)
  {
    [(RPNearFieldDataSource *)self _requestMessageMetadata];
  }

  else
  {
    +[NSArray array];
  }
  v8 = ;
  v9 = [RPTransportServiceHandoverMessage messageWithMetadata:v8 applicationLabel:v7 payload:v6 version:@"1.1"];

  return v9;
}

- (id)createResponseWithApplicationLabel:(id)a3 payload:(id)a4 forRequestMessage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableArray);
  if (sub_1000583E8([v9 type]))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v10 transportServicesMetadata];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v21 + 1) + 8 * i) serviceType];
          if (sub_100072894(v17))
          {
            v18 = [(RPNearFieldDataSource *)self _transportServiceMetadataWithServiceType:v17];
            if (v18)
            {
              [v11 addObject:v18];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  v19 = [RPTransportServiceHandoverMessage messageWithMetadata:v11 applicationLabel:v8 payload:v9 version:@"1.1"];

  return v19;
}

- (id)createTapEventWithApplicationLabel:(id)a3 singleBandAWDLModeRequested:(BOOL)a4 pkData:(id)a5 bonjourListenerUUID:(id)a6 identity:(id)a7 isUnsupportedApplicationLabel:(BOOL)a8 flags:(unsigned int)a9
{
  v14 = a7;
  dispatchQueue = self->_dispatchQueue;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v19 = [v14 type];
  v20 = [v14 contactID];
  v30 = [v14 accountID];
  v21 = [v14 idsDeviceID];
  if (v21)
  {
    if (a4)
    {
LABEL_3:
      v22 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v23 = +[NSUUID UUID];
    v21 = [v23 UUIDString];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v22 = sub_100053724();
LABEL_6:
  HIDWORD(v28) = a9;
  BYTE2(v28) = a8;
  BYTE1(v28) = v14 != 0;
  LOBYTE(v28) = v22;
  v24 = [RPNearFieldTapEvent initWithIdentifier:"initWithIdentifier:applicationLabel:pkData:bonjourListenerUUID:isSameAccount:contactID:accountID:forceSingleBandAWDLMode:knownIdentity:isUnsupportedApplicationLabel:flags:" applicationLabel:v21 pkData:v18 bonjourListenerUUID:v17 isSameAccount:v16 contactID:v19 == 2 accountID:v20 forceSingleBandAWDLMode:v30 knownIdentity:v28 isUnsupportedApplicationLabel:? flags:?];

  if (v19 == 2)
  {
    v25 = [v14 name];
    [(RPNearFieldTapEvent *)v24 setDeviceName:v25];

    v26 = [v14 model];
    [(RPNearFieldTapEvent *)v24 setDeviceModel:v26];
  }

  return v24;
}

- (id)_selfIdentity
{
  v2 = +[RPIdentityDaemon sharedIdentityDaemon];
  v3 = [v2 identityOfSelfAndReturnError:0];

  v4 = objc_opt_new();
  v5 = [v3 edPKData];
  [v4 setEdPKData:v5];

  v6 = [v3 edSKData];
  [v4 setEdSKData:v6];

  v7 = [v3 deviceIRKData];
  [v4 setDeviceIRKData:v7];

  v8 = [v3 sepPrivateKey];
  if (v8)
  {
    [v4 updateWithSEPPrivateKey:v8];
  }

  return v4;
}

- (id)_identityForNFCDeviceDiscovery
{
  v2 = [(RPNearFieldDataSource *)self _selfIdentity];
  if (!v2)
  {
    if (dword_1001D3860 <= 60 && (dword_1001D3860 != -1 || _LogCategory_Initialize()))
    {
      sub_100117850();
    }

    v2 = [[RPIdentity alloc] initWithType:14];
    v3 = NSRandomData();
    [v2 setDeviceIRKData:v3];
  }

  v4 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  v5 = [v4 localDeviceInfo];
  v6 = [v5 model];
  [v2 setModel:v6];

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  v8 = [v7 sessionPairingIdentifier];
  v9 = [v8 UUIDString];
  [v2 setIdentifier:v9];

  return v2;
}

- (id)_transportServiceMetadataWithServiceType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = [(RPNearFieldDataSource *)self _AWDLBonjourTransportServiceMetadata];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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