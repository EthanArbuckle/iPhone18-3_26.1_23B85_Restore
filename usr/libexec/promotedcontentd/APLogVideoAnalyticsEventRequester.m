@interface APLogVideoAnalyticsEventRequester
- (APLogVideoAnalyticsEventRequester)initWithMetric:(id)a3 internalContent:(id)a4 andContext:(id)a5 clientInfo:(id)a6 idAccount:(id)a7;
- (id)protoBuffer;
@end

@implementation APLogVideoAnalyticsEventRequester

- (APLogVideoAnalyticsEventRequester)initWithMetric:(id)a3 internalContent:(id)a4 andContext:(id)a5 clientInfo:(id)a6 idAccount:(id)a7
{
  v12 = a3;
  v13 = a4;
  v83.receiver = self;
  v83.super_class = APLogVideoAnalyticsEventRequester;
  v14 = [(APLegacyMetricRequester *)&v83 initWithMetric:v12 internalContent:v13 andContext:a5 clientInfo:a6 idAccount:a7];
  if (!v14)
  {
    goto LABEL_74;
  }

  v15 = [v13 transientContent];
  v16 = [v15 videoUnloadedSent];

  if (!v16)
  {
    v22 = [(APLegacyMetricRequester *)v14 metric];
    v23 = metricPropertyValue(v22, 0x12);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [(APLegacyMetricRequester *)v14 metric];
      v25 = metricPropertyValue(v24, 0x12);
      v14->_visiblePercent = [v25 intValue];
    }

    else
    {
      v14->_visiblePercent = -1;
    }

    v26 = [(APLegacyMetricRequester *)v14 metric];
    v27 = metricPropertyValue(v26, 8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [(APLegacyMetricRequester *)v14 metric];
      v29 = metricPropertyValue(v28, 8);
      p_duration = &v14->_duration;
      v14->_duration = [v29 intValue];
    }

    else
    {
      p_duration = &v14->_duration;
      v14->_duration = -1;
    }

    v31 = [(APLegacyMetricRequester *)v14 metric];
    v32 = metricPropertyValue(v31, 0x17);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [(APLegacyMetricRequester *)v14 metric];
      v34 = metricPropertyValue(v33, 0x17);
      v82 = [v34 intValue];
    }

    else
    {
      v82 = -1;
    }

    v35 = [(APLegacyMetricRequester *)v14 metric];
    v36 = metricPropertyValue(v35, 0x16);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [(APLegacyMetricRequester *)v14 metric];
      v38 = metricPropertyValue(v37, 0x16);
      [v38 doubleValue];
      p_position = &v14->_position;
      v14->_position = v40;
    }

    else
    {
      p_position = &v14->_position;
      v14->_position = -1.0;
    }

    v41 = [(APLegacyMetricRequester *)v14 metric];
    v42 = metricPropertyValue(v41, 0x2C);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [(APLegacyMetricRequester *)v14 metric];
      v44 = metricPropertyValue(v43, 0x2C);
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
    v47 = [(APLegacyMetricRequester *)v14 metric];
    v48 = [v47 metric];

    if (v48 > 1605)
    {
      if (v48 > 1608)
      {
        switch(v48)
        {
          case 1609:
            v69 = [(APLegacyMetricRequester *)v14 internalContent];
            v70 = [(APLegacyMetricRequester *)v14 metric];
            [v69 videoStateChanged:objc_msgSend(v70 fromMetric:{"metric"), v82 / 100.0}];

            if (v82)
            {
              if ((v82 - 25) > 0x18)
              {
                if ((v82 - 50) > 0x18)
                {
                  if ((v82 - 75) > 0x18)
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
            [v13 videoUnloaded];
            goto LABEL_73;
          default:
            goto LABEL_60;
        }
      }

      else if (v48 == 1606)
      {
        v59 = 9;
      }

      else if (v48 == 1607)
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

    if (v48 <= 1602)
    {
      if (v48 != 1406)
      {
        if (v48 != 1600)
        {
          if (v48 == 1602)
          {
            v49 = [(APLegacyMetricRequester *)v14 internalContent];
            v50 = [v49 transientContent];
            v51 = [v50 playbackInProgress];

            v52 = [(APLegacyMetricRequester *)v14 internalContent];
            v53 = *p_position;
            v54 = [(APLegacyMetricRequester *)v14 metric];
            [v52 videoStateChanged:objc_msgSend(v54 fromMetric:{"metric"), v53}];

            if (v51)
            {
              goto LABEL_7;
            }

            v55 = [(APLegacyMetricRequester *)v14 internalContent];
            v56 = [v55 transientContent];
            [v56 lastPosition];
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
          v19 = [(APLegacyMetricRequester *)v14 metric];
          v76 = [v19 metric];
          *buf = 138543618;
          v85 = v75;
          v86 = 2048;
          v87 = v76;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid metric type for %{public}@: %ld. Not sending legacy metric.", buf, 0x16u);
          goto LABEL_5;
        }

        v14->_videoState = 0;
        v71 = [(APLegacyMetricRequester *)v14 internalContent];
        [v71 videoLoaded:*p_duration];

LABEL_73:
        [v13 incrementVideoEventSequence];
LABEL_74:
        v21 = v14;
        goto LABEL_75;
      }

      v59 = 15;
      goto LABEL_72;
    }

    if (v48 == 1603)
    {
      v66 = [(APLegacyMetricRequester *)v14 internalContent];
      v67 = *p_position;
      v68 = [(APLegacyMetricRequester *)v14 metric];
      [v66 videoStateChanged:objc_msgSend(v68 fromMetric:{"metric"), v67}];

      v59 = 4;
      goto LABEL_72;
    }

    if (v48 == 1604)
    {
      v72 = [(APLegacyMetricRequester *)v14 internalContent];
      v73 = *p_position;
      v74 = [(APLegacyMetricRequester *)v14 metric];
      [v72 videoStateChanged:objc_msgSend(v74 fromMetric:{"metric"), v73}];

      v59 = 6;
      goto LABEL_72;
    }

    v60 = [(APLegacyMetricRequester *)v14 internalContent];
    v61 = [v60 transientContent];
    [v61 volume];
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
          v77 = [(APLegacyMetricRequester *)v14 internalContent];
          v78 = *p_position;
          v79 = [(APLegacyMetricRequester *)v14 metric];
          [v77 videoStateChanged:objc_msgSend(v79 fromMetric:{"metric"), v78}];

          v80 = [(APLegacyMetricRequester *)v14 internalContent];
          [v80 volumeChanged:*p_volume];

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
    v18 = [v12 metric];
    v19 = [v13 content];
    v20 = [v19 identifier];
    *buf = 134218242;
    v85 = v18;
    v86 = 2114;
    v87 = v20;
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
  v4 = [(APLegacyMetricRequester *)self logMetadata];
  [(APPBLogVideoAnalyticsEventRequest *)v3 setMetaData:v4];

  v5 = [(APServerRequester *)self bundleID];
  [(APPBLogVideoAnalyticsEventRequest *)v3 setBundleID:v5];

  v6 = [(APLegacyMetricRequester *)self internalContent];
  v7 = [v6 transientContent];
  [v7 accumulatedPlaybackTime];
  [(APPBLogVideoAnalyticsEventRequest *)v3 setCurrentPlaybackTime:?];

  v8 = [(APLegacyMetricRequester *)self internalContent];
  v9 = [v8 transientContent];
  [v9 duration];
  [(APPBLogVideoAnalyticsEventRequest *)v3 setTotalDuration:?];

  v10 = [(APLegacyMetricRequester *)self metric];
  v11 = [v10 metric];

  if (v11 == 1406)
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

  v13 = [(APLegacyMetricRequester *)self internalContent];
  v14 = [v13 transientContent];
  -[APPBLogVideoAnalyticsEventRequest setEventSequence:](v3, "setEventSequence:", [v14 videoEventSequence]);

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