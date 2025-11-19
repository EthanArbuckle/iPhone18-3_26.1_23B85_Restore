@interface WifiScannerSettings
- (WifiScannerSettings)initWithChannels:(id)a3 dwell:(duration<long)long scanType:()std:(1000>>)a4 :(int)a5 ratio<1 includingOffChannelResults:(BOOL)a6 atDutyCycle:(float)a7 asLowPriority:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)updateFrom:(id)a3;
@end

@implementation WifiScannerSettings

- (WifiScannerSettings)initWithChannels:(id)a3 dwell:(duration<long)long scanType:()std:(1000>>)a4 :(int)a5 ratio<1 includingOffChannelResults:(BOOL)a6 atDutyCycle:(float)a7 asLowPriority:(BOOL)a8
{
  v14 = a3;
  v20.receiver = self;
  v20.super_class = WifiScannerSettings;
  v15 = [(WifiScannerSettings *)&v20 init];
  if (v15)
  {
    v16 = [v14 copy];
    channels = v15->_channels;
    v15->_channels = v16;

    v15->_dwell = a4;
    v15->_scanType = a5;
    v15->_includeOffChannelResults = a6;
    v15->_dutyCycle = a7;
    v15->_lowPriorityScan = a8;
    v18 = v15;
  }

  return v15;
}

- (void)updateFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 channels];
    v7 = [v6 copy];
    channels = self->_channels;
    self->_channels = v7;

    self->_dwell.__rep_ = [v5 dwell];
    self->_scanType = [v5 scanType];
    self->_includeOffChannelResults = [v5 includeOffChannelResults];
    [v5 dutyCycle];
    self->_dutyCycle = v9;
    self->_lowPriorityScan = [v5 lowPriorityScan];
LABEL_3:

    return;
  }

  if (qword_10045B050 == -1)
  {
    v10 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100386B70();
    v10 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_3;
    }
  }

  *v11 = 0;
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Invalid settings to update from - cannot be nil", v11, 2u);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WifiScannerSettings allocWithZone:a3];
  channels = self->_channels;
  rep = self->_dwell.__rep_;
  scanType = self->_scanType;
  includeOffChannelResults = self->_includeOffChannelResults;
  *&v9 = self->_dutyCycle;
  lowPriorityScan = self->_lowPriorityScan;

  return [(WifiScannerSettings *)v4 initWithChannels:channels dwell:rep scanType:scanType includingOffChannelResults:includeOffChannelResults atDutyCycle:lowPriorityScan asLowPriority:v9];
}

- (id)description
{
  v3 = [(NSArray *)self->_channels componentsJoinedByString:@", "];
  v4 = [NSString alloc];
  v5 = "false";
  if (self->_includeOffChannelResults)
  {
    v6 = "true";
  }

  else
  {
    v6 = "false";
  }

  if (self->_lowPriorityScan)
  {
    v5 = "true";
  }

  v7 = [v4 initWithFormat:@"{channels:[%@], dwell:%lld ms, scanType: %d, offchannel: %s, dutyCycle: %f, lowPriority: %s}", v3, self->_dwell.__rep_, self->_scanType, v6, self->_dutyCycle, v5];

  return v7;
}

@end