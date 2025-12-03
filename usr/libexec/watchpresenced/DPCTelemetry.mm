@interface DPCTelemetry
+ (DPCTelemetry)sharedInstance;
- (DPCTelemetry)init;
- (void)registerError:(unint64_t)error;
- (void)registerWatchConnectivity:(BOOL)connectivity;
- (void)registerWatchEvent:(unint64_t)event rssiValue:(int64_t)value;
- (void)registerWatchSwitch;
- (void)registerWatchWristEvent:(int64_t)event;
@end

@implementation DPCTelemetry

+ (DPCTelemetry)sharedInstance
{
  if (qword_100016AA0 != -1)
  {
    sub_100007678();
  }

  v3 = qword_100016AA8;

  return v3;
}

- (DPCTelemetry)init
{
  v3.receiver = self;
  v3.super_class = DPCTelemetry;
  result = [(DPCTelemetry *)&v3 init];
  if (result)
  {
    result->_plClientID = 120;
    result->_plEventName = @"WatchPresence";
  }

  return result;
}

- (void)registerWatchEvent:(unint64_t)event rssiValue:(int64_t)value
{
  v14[0] = @"Timestamp";
  v7 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v8 = v7;
  v9 = @"WatchPresence";
  if (event == 2)
  {
    v9 = @"WatchAbsence";
  }

  v15[0] = v7;
  v15[1] = v9;
  v14[1] = @"Event";
  v14[2] = @"RSSI";
  v10 = [NSNumber numberWithInteger:value];
  v15[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  plClientID = self->_plClientID;
  plEventName = self->_plEventName;
  PLLogRegisteredEvent();
}

- (void)registerWatchConnectivity:(BOOL)connectivity
{
  connectivityCopy = connectivity;
  v10[0] = @"Timestamp";
  v5 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v10[1] = @"Event";
  v11[0] = v5;
  v6 = @"WatchDisconnected";
  if (connectivityCopy)
  {
    v6 = @"WatchConnected";
  }

  v11[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  plClientID = self->_plClientID;
  plEventName = self->_plEventName;
  PLLogRegisteredEvent();
}

- (void)registerError:(unint64_t)error
{
  if (error == 4)
  {
    v4 = @"WatchUnreachable";
  }

  else
  {
    v4 = @"Unknown";
  }

  if (error == 2)
  {
    v4 = @"WatchUnavailable";
  }

  v10[0] = @"Timestamp";
  v5 = v4;
  v6 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v10[1] = @"Event";
  v11[0] = v6;
  v11[1] = v5;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  plClientID = self->_plClientID;
  plEventName = self->_plEventName;
  PLLogRegisteredEvent();
}

- (void)registerWatchWristEvent:(int64_t)event
{
  if (event == 3)
  {
    v4 = @"WatchWristStatusOnWrist";
  }

  else
  {
    v4 = @"WatchWristStatusUnknown";
  }

  if (event == 2)
  {
    v4 = @"WatchWristStatusOffWrist";
  }

  if (event == 1)
  {
    v4 = @"WatchWristStatusDisabled";
  }

  v10[0] = @"Timestamp";
  v5 = v4;
  v6 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v10[1] = @"Event";
  v11[0] = v6;
  v11[1] = v5;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  plClientID = self->_plClientID;
  plEventName = self->_plEventName;
  PLLogRegisteredEvent();
}

- (void)registerWatchSwitch
{
  v7[0] = @"Timestamp";
  v3 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v7[1] = @"Event";
  v8[0] = v3;
  v8[1] = @"WatchSwitched";
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  plClientID = self->_plClientID;
  plEventName = self->_plEventName;
  PLLogRegisteredEvent();
}

@end