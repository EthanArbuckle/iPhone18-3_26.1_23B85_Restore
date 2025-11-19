@interface WCM_BTConnectedDevicesMetrics
- (WCM_BTConnectedDevicesMetrics)initWithBTConnections:(WCM_BTConnections *)a3 at:(double)a4;
- (id)getEnumerationString;
- (void)dealloc;
- (void)startTimer:(double)a3;
- (void)stopTimer:(double)a3 wifi2GStartTime:(double)a4;
- (void)stopWiFi2GTimer:(double)a3 wifi2GStartTime:(double)mTimestamp;
@end

@implementation WCM_BTConnectedDevicesMetrics

- (WCM_BTConnectedDevicesMetrics)initWithBTConnections:(WCM_BTConnections *)a3 at:(double)a4
{
  v10.receiver = self;
  v10.super_class = WCM_BTConnectedDevicesMetrics;
  result = [(WCM_BTConnectedDevicesMetrics *)&v10 init];
  if (result)
  {
    v7 = *&a3->numA2DP;
    v8 = *&a3->numeSCO;
    numLEA = a3->numLEA;
    *&result->mBTConnections.numHID = *&a3->numHID;
    *&result->mBTConnections.numeSCO = v8;
    *&result->mBTConnections.numA2DP = v7;
    result->mTimestamp = a4;
    result->mBTConnections.numLEA = numLEA;
    result->mDuration = 0.0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WCM_BTConnectedDevicesMetrics;
  [(WCM_BTConnectedDevicesMetrics *)&v2 dealloc];
}

- (void)stopWiFi2GTimer:(double)a3 wifi2GStartTime:(double)mTimestamp
{
  if (mTimestamp != 0.0)
  {
    if (self->mTimestamp >= mTimestamp)
    {
      mTimestamp = self->mTimestamp;
    }

    self->mDurInWiFi2G = a3 - mTimestamp + self->mDurInWiFi2G;
  }
}

- (void)stopTimer:(double)a3 wifi2GStartTime:(double)a4
{
  mTimestamp = self->mTimestamp;
  if (mTimestamp != 0.0)
  {
    self->mDuration = a3 - mTimestamp + self->mDuration;
    [WCM_BTConnectedDevicesMetrics stopWiFi2GTimer:"stopWiFi2GTimer:wifi2GStartTime:" wifi2GStartTime:?];
    self->mTimestamp = 0.0;
  }
}

- (void)startTimer:(double)a3
{
  if (self->mTimestamp == 0.0)
  {
    self->mTimestamp = a3;
  }
}

- (id)getEnumerationString
{
  if (self->mBTConnections.numA2DP)
  {
    if ([&stru_100255120 length])
    {
      v3 = @",";
    }

    else
    {
      v3 = &stru_100255120;
    }

    v4 = [NSString stringWithFormat:@"%@%@%luA2DP", &stru_100255120, v3, self->mBTConnections.numA2DP];
  }

  else
  {
    v4 = &stru_100255120;
  }

  if (self->mBTConnections.numLLA)
  {
    if ([(__CFString *)v4 length])
    {
      v5 = @",";
    }

    else
    {
      v5 = &stru_100255120;
    }

    v4 = [NSString stringWithFormat:@"%@%@%luLLA", v4, v5, self->mBTConnections.numLLA];
  }

  if (self->mBTConnections.numHID)
  {
    if ([(__CFString *)v4 length])
    {
      v6 = @",";
    }

    else
    {
      v6 = &stru_100255120;
    }

    v4 = [NSString stringWithFormat:@"%@%@%luHID", v4, v6, self->mBTConnections.numHID];
  }

  if (self->mBTConnections.numSCO)
  {
    if ([(__CFString *)v4 length])
    {
      v7 = @",";
    }

    else
    {
      v7 = &stru_100255120;
    }

    v4 = [NSString stringWithFormat:@"%@%@%luSCO", v4, v7, self->mBTConnections.numSCO];
  }

  if (self->mBTConnections.numeSCO)
  {
    if ([(__CFString *)v4 length])
    {
      v8 = @",";
    }

    else
    {
      v8 = &stru_100255120;
    }

    v4 = [NSString stringWithFormat:@"%@%@%lueSCO", v4, v8, self->mBTConnections.numeSCO];
  }

  if (self->mBTConnections.numLE)
  {
    if ([(__CFString *)v4 length])
    {
      v9 = @",";
    }

    else
    {
      v9 = &stru_100255120;
    }

    v4 = [NSString stringWithFormat:@"%@%@%luLE", v4, v9, self->mBTConnections.numLE];
  }

  if (!self->mBTConnections.numLEA)
  {
    return v4;
  }

  if ([(__CFString *)v4 length])
  {
    v10 = @",";
  }

  else
  {
    v10 = &stru_100255120;
  }

  return [NSString stringWithFormat:@"%@%@%luLEA", v4, v10, self->mBTConnections.numLEA];
}

@end