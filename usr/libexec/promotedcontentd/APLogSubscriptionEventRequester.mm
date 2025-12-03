@interface APLogSubscriptionEventRequester
- (APLogSubscriptionEventRequester)initWithMetric:(id)metric bundleID:(id)d;
- (id)protoBuffer;
- (void)addParameter:(id)parameter value:(id)value parameters:(id)parameters;
@end

@implementation APLogSubscriptionEventRequester

- (APLogSubscriptionEventRequester)initWithMetric:(id)metric bundleID:(id)d
{
  metricCopy = metric;
  dCopy = d;
  v8 = +[NSUUID UUID];
  v9 = +[APIDAccountProvider privateUserAccount];
  v10 = [(APServerRequester *)self initWithBundleID:dCopy requestIdentifier:v8 contextIdentifier:0 contentIdentifier:0 idAccount:v9];

  if (v10)
  {
    v11 = metricPropertyValue(metricCopy, 0x24);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v13 = metricPropertyValue(metricCopy, 0x24);
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&v10->_qToken, v13);
    if (isKindOfClass)
    {
    }

    v14 = metricPropertyValue(metricCopy, 0x23);
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if (v15)
    {
      v16 = metricPropertyValue(metricCopy, 0x23);
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&v10->_subscriptionSourceID, v16);
    if (v15)
    {
    }

    v17 = metricPropertyValue(metricCopy, 0x25);
    objc_opt_class();
    v30 = dCopy;
    if (objc_opt_isKindOfClass())
    {
      v18 = metricPropertyValue(metricCopy, 0x25);
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
          internalProperties = [metricCopy internalProperties];
          v28 = [internalProperties objectForKeyedSubscript:v26];

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

    dCopy = v30;
  }

  return v10;
}

- (void)addParameter:(id)parameter value:(id)value parameters:(id)parameters
{
  if (parameter && value)
  {
    parametersCopy = parameters;
    valueCopy = value;
    parameterCopy = parameter;
    v10 = objc_alloc_init(APPBParameter);
    [(APPBParameter *)v10 setKey:parameterCopy];

    [(APPBParameter *)v10 setValue:valueCopy];
    [parametersCopy addObject:v10];
  }
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBLogSubscriptionEventRequest);
  v4 = +[APEncryptedIDProvider provider];
  idAccount = [(APServerRequester *)self idAccount];
  v6 = [v4 encryptedIDsForIDAccountPrivate:idAccount];

  anonymousDemandID = [v6 anonymousDemandID];
  [(APPBLogSubscriptionEventRequest *)v3 setAnonymousDemandiAdID:anonymousDemandID];

  contentID = [v6 contentID];
  [(APPBLogSubscriptionEventRequest *)v3 setContentiAdID:contentID];

  [(APPBLogSubscriptionEventRequest *)v3 setEvent:[(APLogSubscriptionEventRequester *)self subscriptionType]];
  v9 = +[NSDate date];
  [v9 timeIntervalSince1970];
  [(APPBLogSubscriptionEventRequest *)v3 setEventTime:?];

  iAdID = [v6 iAdID];
  [(APPBLogSubscriptionEventRequest *)v3 setIAdID:iAdID];

  qToken = [(APLogSubscriptionEventRequester *)self qToken];
  [(APPBLogSubscriptionEventRequest *)v3 setQToken:qToken];

  subscriptionSourceID = [(APLogSubscriptionEventRequester *)self subscriptionSourceID];
  [(APPBLogSubscriptionEventRequest *)v3 setSubscriptionSourceID:subscriptionSourceID];

  parameters = [(APLogSubscriptionEventRequester *)self parameters];
  [(APPBLogSubscriptionEventRequest *)v3 setInfos:parameters];

  return v3;
}

@end