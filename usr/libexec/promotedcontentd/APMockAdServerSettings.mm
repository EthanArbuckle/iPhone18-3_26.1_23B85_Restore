@interface APMockAdServerSettings
+ (BOOL)isAdResponseMockedForPlacementType:(int64_t)type;
+ (id)adResponseDataForPlacementType:(int64_t)type;
+ (id)storageWithDefaultValues:(id)values;
@end

@implementation APMockAdServerSettings

+ (id)storageWithDefaultValues:(id)values
{
  v3 = NSStringFromSelector("latencyInMilliseconds");
  v8[0] = v3;
  v9[0] = &off_100492C88;
  v4 = NSStringFromSelector("mockingEnabled");
  v8[1] = v4;
  v9[1] = &off_100492CA0;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:v5];

  return v6;
}

+ (BOOL)isAdResponseMockedForPlacementType:(int64_t)type
{
  v3 = 0;
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v4 = +[APMockAdServerSettings settings];
        adResponseVideo = [v4 adResponseVideo];
        goto LABEL_14;
      case 4:
        v4 = +[APMockAdServerSettings settings];
        adResponseVideo = [v4 adResponseNative];
        goto LABEL_14;
      case 7:
        v4 = +[APMockAdServerSettings settings];
        adResponseVideo = [v4 adResponseSponsorship];
        goto LABEL_14;
    }
  }

  else
  {
    switch(type)
    {
      case 0:
        v4 = +[APMockAdServerSettings settings];
        adResponseVideo = [v4 adResponseBanner];
        goto LABEL_14;
      case 1:
        v4 = +[APMockAdServerSettings settings];
        adResponseVideo = [v4 adResponseInterstitial];
        goto LABEL_14;
      case 2:
        v4 = +[APMockAdServerSettings settings];
        adResponseVideo = [v4 adResponseAudio];
LABEL_14:
        v3 = adResponseVideo != 0;

        break;
    }
  }

  return v3;
}

+ (id)adResponseDataForPlacementType:(int64_t)type
{
  v3 = 0;
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v4 = +[APMockAdServerSettings settings];
        adResponseVideo = [v4 adResponseVideo];
        break;
      case 4:
        v4 = +[APMockAdServerSettings settings];
        adResponseVideo = [v4 adResponseNative];
        break;
      case 7:
        v4 = +[APMockAdServerSettings settings];
        adResponseVideo = [v4 adResponseSponsorship];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      v4 = +[APMockAdServerSettings settings];
      adResponseVideo = [v4 adResponseInterstitial];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_15;
      }

      v4 = +[APMockAdServerSettings settings];
      adResponseVideo = [v4 adResponseAudio];
    }
  }

  else
  {
    v4 = +[APMockAdServerSettings settings];
    adResponseVideo = [v4 adResponseBanner];
  }

  v3 = adResponseVideo;

LABEL_15:

  return v3;
}

@end