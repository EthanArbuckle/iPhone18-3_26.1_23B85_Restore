@interface APLogImpressionRequester
- (id)protoBuffer;
- (void)makeDelayedRequest:(double)a3 requestSentHandler:(id)a4 responseCallback:(id)a5;
@end

@implementation APLogImpressionRequester

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBLogImpressionRequest);
  [(APPBLogImpressionRequest *)v3 setType:[(APLogImpressionRequester *)self type]];
  v4 = [(APLegacyMetricRequester *)self logMetadata];
  [(APPBLogImpressionRequest *)v3 setMetaData:v4];

  v5 = [(APLegacyMetricRequester *)self internalContent];
  v6 = [v5 transientContent];
  [v6 accumulatedPlaybackTime];
  v8 = v7;

  if (v8 > 0.0)
  {
    v9 = [(APLegacyMetricRequester *)self internalContent];
    v10 = [v9 transientContent];
    [v10 accumulatedPlaybackTime];
    *&v11 = v11;
    [(APPBLogImpressionRequest *)v3 setPlaybackTime:v11];

    [(APPBLogImpressionRequest *)v3 playbackTime];
    v13 = v12;
    v14 = [(APLegacyMetricRequester *)self internalContent];
    v15 = [v14 content];
    [v15 impressionThreshold];
    v17 = v16;

    if (v17 > v13)
    {
      [(APPBLogImpressionRequest *)v3 setInsufficientPlaybackTime:1];
    }
  }

  if ([(APLogImpressionRequester *)self isViewableImpression])
  {
    v18 = [(APLegacyMetricRequester *)self metric];
    v19 = metricPropertyValue(v18, 0x15);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [(APLegacyMetricRequester *)self metric];
      v21 = metricPropertyValue(v20, 0x15);
      v22 = [v21 intValue];

      if (v22 != -1)
      {
        v23 = v22;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v24 = [(APLegacyMetricRequester *)self internalContent];
    v25 = [v24 content];
    if (v25)
    {
      v26 = v25;
      v27 = [(APLegacyMetricRequester *)self internalContent];
      v28 = [v27 content];
      v29 = [v28 representations];
      v30 = [v29 count];

      if (!v30)
      {
        v23 = -1;
        goto LABEL_15;
      }

      v24 = [(APLegacyMetricRequester *)self internalContent];
      v31 = [v24 content];
      v32 = [v31 getRepresentation];
      v23 = [v32 placementType];
    }

    else
    {
      v23 = -1;
    }

LABEL_15:
    v33 = [(APLegacyMetricRequester *)self context];
    v34 = [(APLegacyMetricRequester *)self internalContent];
    v35 = [v34 content];
    v36 = [v35 identifier];
    v37 = [v33 contextJSONForRequest:v36 andPlacementType:v23];
    [(APPBLogImpressionRequest *)v3 setContextString:v37];
  }

  return v3;
}

- (void)makeDelayedRequest:(double)a3 requestSentHandler:(id)a4 responseCallback:(id)a5
{
  v8 = a4;
  v9 = a5;
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

      a3 = 0.0;
    }
  }

  v13.receiver = self;
  v13.super_class = APLogImpressionRequester;
  [(APServerRequester *)&v13 makeDelayedRequest:v8 requestSentHandler:v9 responseCallback:a3];
}

@end