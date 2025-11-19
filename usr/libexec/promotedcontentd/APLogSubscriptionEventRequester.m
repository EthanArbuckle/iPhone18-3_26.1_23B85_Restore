@interface APLogSubscriptionEventRequester
- (APLogSubscriptionEventRequester)initWithMetric:(id)a3 bundleID:(id)a4;
- (id)protoBuffer;
- (void)addParameter:(id)a3 value:(id)a4 parameters:(id)a5;
@end

@implementation APLogSubscriptionEventRequester

- (APLogSubscriptionEventRequester)initWithMetric:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSUUID UUID];
  v9 = +[APIDAccountProvider privateUserAccount];
  v10 = [(APServerRequester *)self initWithBundleID:v7 requestIdentifier:v8 contextIdentifier:0 contentIdentifier:0 idAccount:v9];

  if (v10)
  {
    v11 = metricPropertyValue(v6, 0x24);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v13 = metricPropertyValue(v6, 0x24);
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&v10->_qToken, v13);
    if (isKindOfClass)
    {
    }

    v14 = metricPropertyValue(v6, 0x23);
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if (v15)
    {
      v16 = metricPropertyValue(v6, 0x23);
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&v10->_subscriptionSourceID, v16);
    if (v15)
    {
    }

    v17 = metricPropertyValue(v6, 0x25);
    objc_opt_class();
    v30 = v7;
    if (objc_opt_isKindOfClass())
    {
      v18 = metricPropertyValue(v6, 0x25);
      v10->_subscriptionType = [v18 intValue];
    }

    else
    {
      v10->_subscriptionType = 0;
    }

    v19 = +[NSMutableArray array];
    parameters = v10->_parameters;
    v10->_parameters = v19;

    v36[0] = kAPMetricSubscriptionPrice;
    v36[1] = kAPMetricSubscriptionCurrency;
    v36[2] = kAPMetricSubscriptionPurchase;
    v36[3] = kAPMetricSubscriptionIdentifier;
    [NSArray arrayWithObjects:v36 count:4];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = v34 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        v25 = 0;
        do
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v31 + 1) + 8 * v25);
          v27 = [v6 internalProperties];
          v28 = [v27 objectForKeyedSubscript:v26];

          if (v28)
          {
            [(APLogSubscriptionEventRequester *)v10 addParameter:v26 value:v28 parameters:v10->_parameters];
          }

          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v23);
    }

    v7 = v30;
  }

  return v10;
}

- (void)addParameter:(id)a3 value:(id)a4 parameters:(id)a5
{
  if (a3 && a4)
  {
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v10 = objc_alloc_init(APPBParameter);
    [(APPBParameter *)v10 setKey:v9];

    [(APPBParameter *)v10 setValue:v8];
    [v7 addObject:v10];
  }
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBLogSubscriptionEventRequest);
  v4 = +[APEncryptedIDProvider provider];
  v5 = [(APServerRequester *)self idAccount];
  v6 = [v4 encryptedIDsForIDAccountPrivate:v5];

  v7 = [v6 anonymousDemandID];
  [(APPBLogSubscriptionEventRequest *)v3 setAnonymousDemandiAdID:v7];

  v8 = [v6 contentID];
  [(APPBLogSubscriptionEventRequest *)v3 setContentiAdID:v8];

  [(APPBLogSubscriptionEventRequest *)v3 setEvent:[(APLogSubscriptionEventRequester *)self subscriptionType]];
  v9 = +[NSDate date];
  [v9 timeIntervalSince1970];
  [(APPBLogSubscriptionEventRequest *)v3 setEventTime:?];

  v10 = [v6 iAdID];
  [(APPBLogSubscriptionEventRequest *)v3 setIAdID:v10];

  v11 = [(APLogSubscriptionEventRequester *)self qToken];
  [(APPBLogSubscriptionEventRequest *)v3 setQToken:v11];

  v12 = [(APLogSubscriptionEventRequester *)self subscriptionSourceID];
  [(APPBLogSubscriptionEventRequest *)v3 setSubscriptionSourceID:v12];

  v13 = [(APLogSubscriptionEventRequester *)self parameters];
  [(APPBLogSubscriptionEventRequest *)v3 setInfos:v13];

  return v3;
}

@end