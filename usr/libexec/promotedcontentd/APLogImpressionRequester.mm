@interface APLogImpressionRequester
- (id)protoBuffer;
- (void)makeDelayedRequest:(double)request requestSentHandler:(id)handler responseCallback:(id)callback;
@end

@implementation APLogImpressionRequester

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBLogImpressionRequest);
  [(APPBLogImpressionRequest *)v3 setType:[(APLogImpressionRequester *)self type]];
  logMetadata = [(APLegacyMetricRequester *)self logMetadata];
  [(APPBLogImpressionRequest *)v3 setMetaData:logMetadata];

  internalContent = [(APLegacyMetricRequester *)self internalContent];
  transientContent = [internalContent transientContent];
  [transientContent accumulatedPlaybackTime];
  v8 = v7;

  if (v8 > 0.0)
  {
    internalContent2 = [(APLegacyMetricRequester *)self internalContent];
    transientContent2 = [internalContent2 transientContent];
    [transientContent2 accumulatedPlaybackTime];
    *&v11 = v11;
    [(APPBLogImpressionRequest *)v3 setPlaybackTime:v11];

    [(APPBLogImpressionRequest *)v3 playbackTime];
    v13 = v12;
    internalContent3 = [(APLegacyMetricRequester *)self internalContent];
    content = [internalContent3 content];
    [content impressionThreshold];
    v17 = v16;

    if (v17 > v13)
    {
      [(APPBLogImpressionRequest *)v3 setInsufficientPlaybackTime:1];
    }
  }

  if ([(APLogImpressionRequester *)self isViewableImpression])
  {
    metric = [(APLegacyMetricRequester *)self metric];
    v19 = metricPropertyValue(metric, 0x15);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      metric2 = [(APLegacyMetricRequester *)self metric];
      v21 = metricPropertyValue(metric2, 0x15);
      intValue = [v21 intValue];

      if (intValue != -1)
      {
        placementType = intValue;
        goto LABEL_15;
      }
    }

    else
    {
    }

    internalContent4 = [(APLegacyMetricRequester *)self internalContent];
    content2 = [internalContent4 content];
    if (content2)
    {
      v26 = content2;
      internalContent5 = [(APLegacyMetricRequester *)self internalContent];
      content3 = [internalContent5 content];
      representations = [content3 representations];
      v30 = [representations count];

      if (!v30)
      {
        placementType = -1;
        goto LABEL_15;
      }

      internalContent4 = [(APLegacyMetricRequester *)self internalContent];
      content4 = [internalContent4 content];
      getRepresentation = [content4 getRepresentation];
      placementType = [getRepresentation placementType];
    }

    else
    {
      placementType = -1;
    }

LABEL_15:
    context = [(APLegacyMetricRequester *)self context];
    internalContent6 = [(APLegacyMetricRequester *)self internalContent];
    content5 = [internalContent6 content];
    identifier = [content5 identifier];
    v37 = [context contextJSONForRequest:identifier andPlacementType:placementType];
    [(APPBLogImpressionRequest *)v3 setContextString:v37];
  }

  return v3;
}

- (void)makeDelayedRequest:(double)request requestSentHandler:(id)handler responseCallback:(id)callback
{
  handlerCopy = handler;
  callbackCopy = callback;
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v10 = [NSUserDefaults alloc];
    v11 = [v10 initWithSuiteName:APDefaultsBundleID];
    if ([v11 BOOLForKey:@"disableDelayForRequests"])
    {
      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v15 = "[APLogImpressionRequester makeDelayedRequest:requestSentHandler:responseCallback:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}s Overriding delay to 0 seconds", buf, 0xCu);
      }

      request = 0.0;
    }
  }

  v13.receiver = self;
  v13.super_class = APLogImpressionRequester;
  [(APServerRequester *)&v13 makeDelayedRequest:handlerCopy requestSentHandler:callbackCopy responseCallback:request];
}

@end