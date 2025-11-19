@interface DYGPUStatsReport
- (DYGPUStatsReport)init;
- (void)dealloc;
- (void)setup;
- (void)startCollectingStats;
- (void)stopCollectingStats;
@end

@implementation DYGPUStatsReport

- (DYGPUStatsReport)init
{
  v3.receiver = self;
  v3.super_class = DYGPUStatsReport;
  return [(DYGPUStatsReport *)&v3 init];
}

- (void)dealloc
{
  [(DYGPUStatsReport *)self stopCollectingStats];
  powerSubscription = self->_powerSubscription;
  if (powerSubscription)
  {
    CFRelease(powerSubscription);
    self->_powerSubscription = 0;
  }

  v4.receiver = self;
  v4.super_class = DYGPUStatsReport;
  [(DYGPUStatsReport *)&v4 dealloc];
}

- (void)setup
{
  v3 = IOReportCopyChannelsInCategories();
  powerAllChannels = self->_powerAllChannels;
  self->_powerAllChannels = v3;

  if ((IOReportPrune() & 1) == 0)
  {
    Subscription = IOReportCreateSubscription();
    powerSubbedChannels = self->_powerSubbedChannels;
    self->_powerSubbedChannels = 0;
    self->_powerSubscription = Subscription;
  }
}

- (void)startCollectingStats
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v4 = dispatch_queue_create("reporting_queue", v3);

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004FB8;
  v7[3] = &unk_10000C688;
  v7[4] = self;
  v5 = sub_100004C38(1, v4, v7);
  timer = self->_timer;
  self->_timer = v5;
}

- (void)stopCollectingStats
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

@end