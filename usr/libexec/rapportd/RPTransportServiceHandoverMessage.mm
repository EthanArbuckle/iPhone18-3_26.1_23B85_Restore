@interface RPTransportServiceHandoverMessage
+ (RPTransportServiceHandoverMessage)messageWithConnectionHandoverRequest:(id)request;
+ (RPTransportServiceHandoverMessage)messageWithConnectionHandoverSelect:(id)select;
+ (RPTransportServiceHandoverMessage)messageWithMetadata:(id)metadata applicationLabel:(id)label payload:(id)payload version:(id)version;
- (RPTransportServiceHandoverMessage)initWithMetadata:(id)metadata applicationLabel:(id)label payload:(id)payload version:(id)version;
- (id)connectionHandoverRequest;
- (id)connectionHandoverSelect;
- (id)transportServicesMetadataDictionaryRepresentation;
@end

@implementation RPTransportServiceHandoverMessage

- (RPTransportServiceHandoverMessage)initWithMetadata:(id)metadata applicationLabel:(id)label payload:(id)payload version:(id)version
{
  metadataCopy = metadata;
  labelCopy = label;
  payloadCopy = payload;
  versionCopy = version;
  v22.receiver = self;
  v22.super_class = RPTransportServiceHandoverMessage;
  v14 = [(RPTransportServiceHandoverMessage *)&v22 init];
  if (v14)
  {
    v15 = [metadataCopy copy];
    transportServicesMetadata = v14->_transportServicesMetadata;
    v14->_transportServicesMetadata = v15;

    v17 = [labelCopy copy];
    applicationLabel = v14->_applicationLabel;
    v14->_applicationLabel = v17;

    objc_storeStrong(&v14->_payload, payload);
    v19 = [versionCopy copy];
    version = v14->_version;
    v14->_version = v19;
  }

  return v14;
}

+ (RPTransportServiceHandoverMessage)messageWithMetadata:(id)metadata applicationLabel:(id)label payload:(id)payload version:(id)version
{
  versionCopy = version;
  payloadCopy = payload;
  labelCopy = label;
  metadataCopy = metadata;
  v13 = [objc_alloc(objc_opt_class()) initWithMetadata:metadataCopy applicationLabel:labelCopy payload:payloadCopy version:versionCopy];

  return v13;
}

- (id)transportServicesMetadataDictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_transportServicesMetadata;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dictionaryRepresentation = [*(*(&v11 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (RPTransportServiceHandoverMessage)messageWithConnectionHandoverSelect:(id)select
{
  selectCopy = select;
  transportServiceList = [selectCopy transportServiceList];
  v5 = sub_1000734EC(transportServiceList);

  userInfo = [selectCopy userInfo];
  if (userInfo)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = userInfo;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if ((isKindOfClass & 1) != 0 && ((v10 = [[RPNearFieldAuthenticationPayload alloc] initWithDictionary:userInfo]) != 0 || (v10 = [[RPNearFieldValidationPayload alloc] initWithDictionary:userInfo]) != 0))
    {
      v11 = v10;
      v12 = objc_opt_class();
      applicationLabel = [selectCopy applicationLabel];
      version = [selectCopy version];
      v15 = [v12 messageWithMetadata:v5 applicationLabel:applicationLabel payload:v11 version:version];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (RPTransportServiceHandoverMessage)messageWithConnectionHandoverRequest:(id)request
{
  requestCopy = request;
  transportServiceList = [requestCopy transportServiceList];
  v5 = sub_1000734EC(transportServiceList);

  userInfo = [requestCopy userInfo];
  if (!userInfo)
  {
    v10 = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = userInfo;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = 0;
  if (isKindOfClass)
  {
    v11 = NSDictionaryGetNSNumber();
    v12 = v11;
    if (!v11 || (v13 = [v11 integerValue], v13 == 1))
    {
      v14 = off_1001A9AA8;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_14;
      }

      v14 = off_1001A9AB0;
    }

    v15 = [objc_alloc(*v14) initWithDictionary:userInfo];
    if (v15)
    {
      v16 = v15;
      v17 = objc_opt_class();
      applicationLabel = [requestCopy applicationLabel];
      version = [requestCopy version];
      v10 = [v17 messageWithMetadata:v5 applicationLabel:applicationLabel payload:v16 version:version];

LABEL_15:
      goto LABEL_16;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:

  return v10;
}

- (id)connectionHandoverSelect
{
  payload = [(RPTransportServiceHandoverMessage *)self payload];
  dictionaryRepresentation = [payload dictionaryRepresentation];

  transportServicesMetadataDictionaryRepresentation = [(RPTransportServiceHandoverMessage *)self transportServicesMetadataDictionaryRepresentation];
  v6 = objc_alloc(off_1001D3FE0[0]());
  version = [(RPTransportServiceHandoverMessage *)self version];
  applicationLabel = [(RPTransportServiceHandoverMessage *)self applicationLabel];
  v9 = [v6 initWithVersion:version applicationLabel:applicationLabel serivceList:transportServicesMetadataDictionaryRepresentation userInfo:dictionaryRepresentation];

  return v9;
}

- (id)connectionHandoverRequest
{
  payload = [(RPTransportServiceHandoverMessage *)self payload];
  dictionaryRepresentation = [payload dictionaryRepresentation];

  transportServicesMetadataDictionaryRepresentation = [(RPTransportServiceHandoverMessage *)self transportServicesMetadataDictionaryRepresentation];
  v6 = objc_alloc(off_1001D3FE8());
  version = [(RPTransportServiceHandoverMessage *)self version];
  applicationLabel = [(RPTransportServiceHandoverMessage *)self applicationLabel];
  v9 = [v6 initWithVersion:version applicationLabel:applicationLabel serivceList:transportServicesMetadataDictionaryRepresentation userInfo:dictionaryRepresentation];

  return v9;
}

@end