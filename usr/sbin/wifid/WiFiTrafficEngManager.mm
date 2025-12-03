@interface WiFiTrafficEngManager
- (WiFiTrafficEngManager)initWithArgs:(__WiFiLQAMgr *)args;
- (__CFDictionary)retrieveCurrentLinkHealth;
- (__CFDictionary)retrieveEventDetails;
- (void)dealloc;
- (void)discoveryIndication;
- (void)handleCriticalAppEvent:(id)event;
@end

@implementation WiFiTrafficEngManager

- (WiFiTrafficEngManager)initWithArgs:(__WiFiLQAMgr *)args
{
  v9.receiver = self;
  v9.super_class = WiFiTrafficEngManager;
  v4 = [(WiFiTrafficEngManager *)&v9 init];
  if (!v4)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Failed to allocate", "-[WiFiTrafficEngManager initWithArgs:]"}];
    }

    goto LABEL_9;
  }

  v5 = [[WFTrafficEngManager alloc] initWithTrafficEngDelegate:v4];
  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s lqaMgr is nil", "-[WiFiTrafficEngManager initWithArgs:]"}];
    }

LABEL_9:
    objc_autoreleasePoolPop(v8);

    return 0;
  }

  v6 = v5;
  [(WiFiTrafficEngManager *)v4 setLqaMgr:args];
  [(WiFiTrafficEngManager *)v4 setTrafficEng:v6];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WiFiTrafficEngManager;
  [(WiFiTrafficEngManager *)&v3 dealloc];
}

- (__CFDictionary)retrieveCurrentLinkHealth
{
  lqaMgr = [(WiFiTrafficEngManager *)self lqaMgr];

  return sub_100140368(lqaMgr);
}

- (void)handleCriticalAppEvent:(id)event
{
  lqaMgr = [(WiFiTrafficEngManager *)self lqaMgr];

  sub_100048BD4(lqaMgr, event);
}

- (void)discoveryIndication
{
  lqaMgr = [(WiFiTrafficEngManager *)self lqaMgr];

  nullsub_4(lqaMgr, v3);
}

- (__CFDictionary)retrieveEventDetails
{
  lqaMgr = [(WiFiTrafficEngManager *)self lqaMgr];

  return sub_1001405E0(lqaMgr);
}

@end