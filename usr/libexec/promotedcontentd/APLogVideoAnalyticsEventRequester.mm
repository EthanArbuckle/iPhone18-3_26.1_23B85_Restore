@interface APLogVideoAnalyticsEventRequester
- (APLogVideoAnalyticsEventRequester)initWithMetric:(id)metric internalContent:(id)content andContext:(id)context clientInfo:(id)info idAccount:(id)account;
- (id)protoBuffer;
@end

@implementation APLogVideoAnalyticsEventRequester

- (APLogVideoAnalyticsEventRequester)initWithMetric:(id)metric internalContent:(id)content andContext:(id)context clientInfo:(id)info idAccount:(id)account
{
  metricCopy = metric;
  contentCopy = content;
  v83.receiver = self;
  v83.super_class = APLogVideoAnalyticsEventRequester;
  v14 = [(APLegacyMetricRequester *)&v83 initWithMetric:metricCopy internalContent:contentCopy andContext:context clientInfo:info idAccount:account];
  if (!v14)
  {
    goto LABEL_74;
  }

  transientContent = [contentCopy transientContent];
  videoUnloadedSent = [transientContent videoUnloadedSent];

  if (!videoUnloadedSent)
  {
    metric = [(APLegacyMetricRequester *)v14 metric];
    v23 = metricPropertyValue(metric, 0x12);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      metric2 = [(APLegacyMetricRequester *)v14 metric];
      v25 = metricPropertyValue(metric2, 0x12);
      v14->_visiblePercent = [v25 intValue];
    }

    else
    {
      v14->_visiblePercent = -1;
    }

    metric3 = [(APLegacyMetricRequester *)v14 metric];
    v27 = metricPropertyValue(metric3, 8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      metric4 = [(APLegacyMetricRequester *)v14 metric];
      v29 = metricPropertyValue(metric4, 8);
      p_duration = &v14->_duration;
      v14->_duration = [v29 intValue];
    }

    else
    {
      p_duration = &v14->_duration;
      v14->_duration = -1;
    }

    metric5 = [(APLegacyMetricRequester *)v14 metric];
    v32 = metricPropertyValue(metric5, 0x17);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      metric6 = [(APLegacyMetricRequester *)v14 metric];
      v34 = metricPropertyValue(metric6, 0x17);
      intValue = [v34 intValue];
    }

    else
    {
      intValue = -1;
    }

    metric7 = [(APLegacyMetricRequester *)v14 metric];
    v36 = metricPropertyValue(metric7, 0x16);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      metric8 = [(APLegacyMetricRequester *)v14 metric];
      v38 = metricPropertyValue(metric8, 0x16);
      [v38 doubleValue];
      p_position = &v14->_position;
      v14->_position = v40;
    }

    else
    {
      p_position = &v14->_position;
      v14->_position = -1.0;
    }

    metric9 = [(APLegacyMetricRequester *)v14 metric];
    v42 = metricPropertyValue(metric9, 0x2C);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      metric10 = [(APLegacyMetricRequester *)v14 metric];
      v44 = metricPropertyValue(metric10, 0x2C);
      [v44 doubleValue];
      p_volume = &v14->_volume;
      v14->_volume = v46;
    }

    else
    {
      p_volume = &v14->_volume;
      v14->_volume = -1.0;
    }

    v14->_videoState = -1;
    metric11 = [(APLegacyMetricRequester *)v14 metric];
    v47Metric = [metric11 metric];

    if (v47Metric > 1605)
    {
      if (v47Metric > 1608)
      {
        switch(v47Metric)
        {
          case 1609:
            internalContent = [(APLegacyMetricRequester *)v14 internalContent];
            metric12 = [(APLegacyMetricRequester *)v14 metric];
            [internalContent videoStateChanged:objc_msgSend(metric12 fromMetric:{"metric"), intValue / 100.0}];

            if (intValue)
            {
              if ((intValue - 25) > 0x18)
              {
                if ((intValue - 50) > 0x18)
                {
                  if ((intValue - 75) > 0x18)
                  {
                    v59 = 3;
                  }

                  else
                  {
                    v59 = 14;
                  }
                }

                else
                {
                  v59 = 13;
                }
              }

              else
              {
                v59 = 12;
              }
            }

            else
            {
              v59 = 2;
            }

            break;
          case 2503:
            v59 = 16;
            break;
          case 77003:
            v14->_videoState = 1;
            [contentCopy videoUnloaded];
            goto LABEL_73;
          default:
            goto LABEL_60;
        }
      }

      else if (v47Metric == 1606)
      {
        v59 = 9;
      }

      else if (v47Metric == 1607)
      {
        v59 = 10;
      }

      else
      {
        v59 = 11;
      }

LABEL_72:
      v14->_videoState = v59;
      goto LABEL_73;
    }

    if (v47Metric <= 1602)
    {
      if (v47Metric != 1406)
      {
        if (v47Metric != 1600)
        {
          if (v47Metric == 1602)
          {
            internalContent2 = [(APLegacyMetricRequester *)v14 internalContent];
            transientContent2 = [internalContent2 transientContent];
            playbackInProgress = [transientContent2 playbackInProgress];

            internalContent3 = [(APLegacyMetricRequester *)v14 internalContent];
            v53 = *p_position;
            metric13 = [(APLegacyMetricRequester *)v14 metric];
            [internalContent3 videoStateChanged:objc_msgSend(metric13 fromMetric:{"metric"), v53}];

            if (playbackInProgress)
            {
              goto LABEL_7;
            }

            internalContent4 = [(APLegacyMetricRequester *)v14 internalContent];
            transientContent3 = [internalContent4 transientContent];
            [transientContent3 lastPosition];
            v58 = v57;

            if (v58 <= 0.0)
            {
              goto LABEL_7;
            }

            v59 = 5;
            goto LABEL_72;
          }

LABEL_60:
          v17 = APLogForCategory();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }

          v75 = objc_opt_class();
          metric14 = [(APLegacyMetricRequester *)v14 metric];
          v19Metric = [metric14 metric];
          *buf = 138543618;
          v85 = v75;
          v86 = 2048;
          v87 = v19Metric;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid metric type for %{public}@: %ld. Not sending legacy metric.", buf, 0x16u);
          goto LABEL_5;
        }

        v14->_videoState = 0;
        internalContent5 = [(APLegacyMetricRequester *)v14 internalContent];
        [internalContent5 videoLoaded:*p_duration];

LABEL_73:
        [contentCopy incrementVideoEventSequence];
LABEL_74:
        v21 = v14;
        goto LABEL_75;
      }

      v59 = 15;
      goto LABEL_72;
    }

    if (v47Metric == 1603)
    {
      internalContent6 = [(APLegacyMetricRequester *)v14 internalContent];
      v67 = *p_position;
      metric15 = [(APLegacyMetricRequester *)v14 metric];
      [internalContent6 videoStateChanged:objc_msgSend(metric15 fromMetric:{"metric"), v67}];

      v59 = 4;
      goto LABEL_72;
    }

    if (v47Metric == 1604)
    {
      internalContent7 = [(APLegacyMetricRequester *)v14 internalContent];
      v73 = *p_position;
      metric16 = [(APLegacyMetricRequester *)v14 metric];
      [internalContent7 videoStateChanged:objc_msgSend(metric16 fromMetric:{"metric"), v73}];

      v59 = 6;
      goto LABEL_72;
    }

    internalContent8 = [(APLegacyMetricRequester *)v14 internalContent];
    transientContent4 = [internalContent8 transientContent];
    [transientContent4 volume];
    v63 = v62;

    if (v63 > 0.0 && (v64 = *p_volume, *p_volume <= 0.0) || v63 == -1.0 && (v64 = *p_volume, *p_volume <= 0.0))
    {
      v65 = 7;
    }

    else
    {
      if (v63 != 0.0 || (v64 = *p_volume, *p_volume <= 0.0))
      {
        v64 = -1.0;
        if (v63 != -1.0 || (v64 = *p_volume, *p_volume <= 0.0))
        {
LABEL_64:
          internalContent9 = [(APLegacyMetricRequester *)v14 internalContent];
          v78 = *p_position;
          metric17 = [(APLegacyMetricRequester *)v14 metric];
          [internalContent9 videoStateChanged:objc_msgSend(metric17 fromMetric:{"metric"), v78}];

          internalContent10 = [(APLegacyMetricRequester *)v14 internalContent];
          [internalContent10 volumeChanged:*p_volume];

          if (v14->_videoState < 0)
          {
            goto LABEL_7;
          }

          goto LABEL_73;
        }
      }

      v65 = 8;
    }

    v14->_videoState = v65;
    goto LABEL_64;
  }

  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    metric18 = [metricCopy metric];
    metric14 = [contentCopy content];
    identifier = [metric14 identifier];
    *buf = 134218242;
    v85 = metric18;
    v86 = 2114;
    v87 = identifier;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Attempting to send LogVideoAnalytic for metric %ld for content %{public}@, but Unloaded has already been sent.", buf, 0x16u);

LABEL_5:
  }

LABEL_6:

LABEL_7:
  v21 = 0;
LABEL_75:

  return v21;
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBLogVideoAnalyticsEventRequest);
  [(APPBLogVideoAnalyticsEventRequest *)v3 setVideoState:[(APLogVideoAnalyticsEventRequester *)self videoState]];
  logMetadata = [(APLegacyMetricRequester *)self logMetadata];
  [(APPBLogVideoAnalyticsEventRequest *)v3 setMetaData:logMetadata];

  bundleID = [(APServerRequester *)self bundleID];
  [(APPBLogVideoAnalyticsEventRequest *)v3 setBundleID:bundleID];

  internalContent = [(APLegacyMetricRequester *)self internalContent];
  transientContent = [internalContent transientContent];
  [transientContent accumulatedPlaybackTime];
  [(APPBLogVideoAnalyticsEventRequest *)v3 setCurrentPlaybackTime:?];

  internalContent2 = [(APLegacyMetricRequester *)self internalContent];
  transientContent2 = [internalContent2 transientContent];
  [transientContent2 duration];
  [(APPBLogVideoAnalyticsEventRequest *)v3 setTotalDuration:?];

  metric = [(APLegacyMetricRequester *)self metric];
  v10Metric = [metric metric];

  if (v10Metric == 1406)
  {
    [(APLogVideoAnalyticsEventRequester *)self videoVisibility];
    [(APPBLogVideoAnalyticsEventRequest *)v3 setVisiblePercentage:?];
    [(APLogVideoAnalyticsEventRequester *)self visibilityTimestamp];
    [(APPBLogVideoAnalyticsEventRequest *)v3 setTimestamp:?];
  }

  else
  {
    [(APPBLogVideoAnalyticsEventRequest *)v3 setVisiblePercentage:[(APLogVideoAnalyticsEventRequester *)self visiblePercent]/ 100.0];
    v12 = +[NSDate date];
    [v12 timeIntervalSince1970];
    [(APPBLogVideoAnalyticsEventRequest *)v3 setTimestamp:?];
  }

  internalContent3 = [(APLegacyMetricRequester *)self internalContent];
  transientContent3 = [internalContent3 transientContent];
  -[APPBLogVideoAnalyticsEventRequest setEventSequence:](v3, "setEventSequence:", [transientContent3 videoEventSequence]);

  [(APLogVideoAnalyticsEventRequester *)self volume];
  if (v15 >= 0.0)
  {
    [(APLogVideoAnalyticsEventRequester *)self volume];
    *&v16 = v16;
    [(APPBLogVideoAnalyticsEventRequest *)v3 setVolume:v16];
  }

  return v3;
}

@end