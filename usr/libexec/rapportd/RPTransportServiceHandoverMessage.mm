@interface RPTransportServiceHandoverMessage
+ (RPTransportServiceHandoverMessage)messageWithConnectionHandoverRequest:(id)a3;
+ (RPTransportServiceHandoverMessage)messageWithConnectionHandoverSelect:(id)a3;
+ (RPTransportServiceHandoverMessage)messageWithMetadata:(id)a3 applicationLabel:(id)a4 payload:(id)a5 version:(id)a6;
- (RPTransportServiceHandoverMessage)initWithMetadata:(id)a3 applicationLabel:(id)a4 payload:(id)a5 version:(id)a6;
- (id)connectionHandoverRequest;
- (id)connectionHandoverSelect;
- (id)transportServicesMetadataDictionaryRepresentation;
@end

@implementation RPTransportServiceHandoverMessage

- (RPTransportServiceHandoverMessage)initWithMetadata:(id)a3 applicationLabel:(id)a4 payload:(id)a5 version:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = RPTransportServiceHandoverMessage;
  v14 = [(RPTransportServiceHandoverMessage *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    transportServicesMetadata = v14->_transportServicesMetadata;
    v14->_transportServicesMetadata = v15;

    v17 = [v11 copy];
    applicationLabel = v14->_applicationLabel;
    v14->_applicationLabel = v17;

    objc_storeStrong(&v14->_payload, a5);
    v19 = [v13 copy];
    version = v14->_version;
    v14->_version = v19;
  }

  return v14;
}

+ (RPTransportServiceHandoverMessage)messageWithMetadata:(id)a3 applicationLabel:(id)a4 payload:(id)a5 version:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_alloc(objc_opt_class()) initWithMetadata:v12 applicationLabel:v11 payload:v10 version:v9];

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

        v9 = [*(*(&v11 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (RPTransportServiceHandoverMessage)messageWithConnectionHandoverSelect:(id)a3
{
  v3 = a3;
  v4 = [v3 transportServiceList];
  v5 = sub_1000734EC(v4);

  v6 = [v3 userInfo];
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if ((isKindOfClass & 1) != 0 && ((v10 = [[RPNearFieldAuthenticationPayload alloc] initWithDictionary:v6]) != 0 || (v10 = [[RPNearFieldValidationPayload alloc] initWithDictionary:v6]) != 0))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = [v3 applicationLabel];
      v14 = [v3 version];
      v15 = [v12 messageWithMetadata:v5 applicationLabel:v13 payload:v11 version:v14];
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

+ (RPTransportServiceHandoverMessage)messageWithConnectionHandoverRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 transportServiceList];
  v5 = sub_1000734EC(v4);

  v6 = [v3 userInfo];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v6;
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

    v15 = [objc_alloc(*v14) initWithDictionary:v6];
    if (v15)
    {
      v16 = v15;
      v17 = objc_opt_class();
      v18 = [v3 applicationLabel];
      v19 = [v3 version];
      v10 = [v17 messageWithMetadata:v5 applicationLabel:v18 payload:v16 version:v19];

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
  v3 = [(RPTransportServiceHandoverMessage *)self payload];
  v4 = [v3 dictionaryRepresentation];

  v5 = [(RPTransportServiceHandoverMessage *)self transportServicesMetadataDictionaryRepresentation];
  v6 = objc_alloc(off_1001D3FE0[0]());
  v7 = [(RPTransportServiceHandoverMessage *)self version];
  v8 = [(RPTransportServiceHandoverMessage *)self applicationLabel];
  v9 = [v6 initWithVersion:v7 applicationLabel:v8 serivceList:v5 userInfo:v4];

  return v9;
}

- (id)connectionHandoverRequest
{
  v3 = [(RPTransportServiceHandoverMessage *)self payload];
  v4 = [v3 dictionaryRepresentation];

  v5 = [(RPTransportServiceHandoverMessage *)self transportServicesMetadataDictionaryRepresentation];
  v6 = objc_alloc(off_1001D3FE8());
  v7 = [(RPTransportServiceHandoverMessage *)self version];
  v8 = [(RPTransportServiceHandoverMessage *)self applicationLabel];
  v9 = [v6 initWithVersion:v7 applicationLabel:v8 serivceList:v5 userInfo:v4];

  return v9;
}

@end