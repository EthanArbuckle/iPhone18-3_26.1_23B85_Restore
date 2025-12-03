@interface WCM_AriCoexCommandDriver
+ (id)singleton;
- (WCM_AriCoexCommandDriver)init;
- (void)connectBaseband;
- (void)createCommandHandlerForAriVersion:(unsigned int)version;
- (void)handleEvent:(id)event;
- (void)setAntennaBlockingPolicyForPlatformId:(unint64_t)id activeSubId:(unint64_t)subId AntBlockPowerLimitPlist:(id)plist;
- (void)setCellularController:(id)controller;
@end

@implementation WCM_AriCoexCommandDriver

+ (id)singleton
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = dlopen("/usr/lib/libARI.dylib", 1);
  v4 = dlopen("/usr/lib/libICEClient.dylib", 1);
  v5 = 0;
  if (v3 && v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BA29C;
    block[3] = &unk_10023DD00;
    block[4] = selfCopy;
    if (qword_1002B7EF8 != -1)
    {
      dispatch_once(&qword_1002B7EF8, block);
    }

    v5 = qword_1002B7EF0;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (WCM_AriCoexCommandDriver)init
{
  v7.receiver = self;
  v7.super_class = WCM_AriCoexCommandDriver;
  v2 = [(WCM_AriCoexCommandDriver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    mAriCoexCommandHandler = v2->mAriCoexCommandHandler;
    v2->mAriCoexCommandHandler = 0;

    mCellularController = v3->mCellularController;
    v3->mCellularController = 0;
  }

  return v3;
}

- (void)createCommandHandlerForAriVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = off_10023D268;
  }

  else
  {
    if (version != 2)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v4 = off_10023D270;
  }

  v5 = objc_alloc_init(*v4);
LABEL_7:
  mAriCoexCommandHandler = self->mAriCoexCommandHandler;
  self->mAriCoexCommandHandler = v5;

  v7 = self->mAriCoexCommandHandler;
  if (v7 && self->mCellularController)
  {

    [(WCM_AriCoexCommandHandler *)v7 setCellularController:?];
  }
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  mAriCoexCommandHandler = self->mAriCoexCommandHandler;
  v6 = eventCopy;
  if (mAriCoexCommandHandler)
  {
    [(WCM_AriCoexCommandHandler *)mAriCoexCommandHandler handleEvent:eventCopy];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Error: ARI driver handle event -- WCM_AriCoexCommandHandler is NULL..."];
  }
}

- (void)setCellularController:(id)controller
{
  controllerCopy = controller;
  objc_storeStrong(&self->mCellularController, controller);
  mAriCoexCommandHandler = self->mAriCoexCommandHandler;
  if (mAriCoexCommandHandler)
  {
    [(WCM_AriCoexCommandHandler *)mAriCoexCommandHandler setCellularController:controllerCopy];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Warning: ARI driver set cellular controller-- WCM_AriCoexCommandHandler is NULL. Will set it later..."];
  }
}

- (void)connectBaseband
{
  mAriCoexCommandHandler = self->mAriCoexCommandHandler;
  if (mAriCoexCommandHandler)
  {
    [(WCM_AriCoexCommandHandler *)mAriCoexCommandHandler connectBaseband];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Error: ARI driver connect baseband -- WCM_AriCoexCommandHandler is NULL..."];
  }
}

- (void)setAntennaBlockingPolicyForPlatformId:(unint64_t)id activeSubId:(unint64_t)subId AntBlockPowerLimitPlist:(id)plist
{
  plistCopy = plist;
  mAriCoexCommandHandler = self->mAriCoexCommandHandler;
  v10 = plistCopy;
  if (mAriCoexCommandHandler)
  {
    [(WCM_AriCoexCommandHandler *)mAriCoexCommandHandler setAntennaBlockingPolicyForPlatformId:id activeSubId:subId AntBlockPowerLimitPlist:plistCopy];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Error: ARI driver set antenna blocking policy -- WCM_AriCoexCommandHandler is NULL..."];
  }
}

@end