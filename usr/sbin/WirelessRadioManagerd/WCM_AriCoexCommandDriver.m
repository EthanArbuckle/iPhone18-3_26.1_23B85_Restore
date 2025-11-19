@interface WCM_AriCoexCommandDriver
+ (id)singleton;
- (WCM_AriCoexCommandDriver)init;
- (void)connectBaseband;
- (void)createCommandHandlerForAriVersion:(unsigned int)a3;
- (void)handleEvent:(id)a3;
- (void)setAntennaBlockingPolicyForPlatformId:(unint64_t)a3 activeSubId:(unint64_t)a4 AntBlockPowerLimitPlist:(id)a5;
- (void)setCellularController:(id)a3;
@end

@implementation WCM_AriCoexCommandDriver

+ (id)singleton
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = dlopen("/usr/lib/libARI.dylib", 1);
  v4 = dlopen("/usr/lib/libICEClient.dylib", 1);
  v5 = 0;
  if (v3 && v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BA29C;
    block[3] = &unk_10023DD00;
    block[4] = v2;
    if (qword_1002B7EF8 != -1)
    {
      dispatch_once(&qword_1002B7EF8, block);
    }

    v5 = qword_1002B7EF0;
  }

  objc_sync_exit(v2);

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

- (void)createCommandHandlerForAriVersion:(unsigned int)a3
{
  if (a3 == 1)
  {
    v4 = off_10023D268;
  }

  else
  {
    if (a3 != 2)
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

- (void)handleEvent:(id)a3
{
  v4 = a3;
  mAriCoexCommandHandler = self->mAriCoexCommandHandler;
  v6 = v4;
  if (mAriCoexCommandHandler)
  {
    [(WCM_AriCoexCommandHandler *)mAriCoexCommandHandler handleEvent:v4];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Error: ARI driver handle event -- WCM_AriCoexCommandHandler is NULL..."];
  }
}

- (void)setCellularController:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->mCellularController, a3);
  mAriCoexCommandHandler = self->mAriCoexCommandHandler;
  if (mAriCoexCommandHandler)
  {
    [(WCM_AriCoexCommandHandler *)mAriCoexCommandHandler setCellularController:v6];
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

- (void)setAntennaBlockingPolicyForPlatformId:(unint64_t)a3 activeSubId:(unint64_t)a4 AntBlockPowerLimitPlist:(id)a5
{
  v8 = a5;
  mAriCoexCommandHandler = self->mAriCoexCommandHandler;
  v10 = v8;
  if (mAriCoexCommandHandler)
  {
    [(WCM_AriCoexCommandHandler *)mAriCoexCommandHandler setAntennaBlockingPolicyForPlatformId:a3 activeSubId:a4 AntBlockPowerLimitPlist:v8];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Error: ARI driver set antenna blocking policy -- WCM_AriCoexCommandHandler is NULL..."];
  }
}

@end