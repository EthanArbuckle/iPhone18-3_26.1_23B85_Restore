@interface WRM_QMIDsdClient
- (WRM_QMIDsdClient)initWithSub:(int64_t)sub;
- (void)bindQMIClientToSlotType:(int)type;
- (void)dealloc;
- (void)handleBandwidthEstimationInd:(Indication *)ind;
- (void)handleDataSystemStatusInd:(Indication *)ind;
- (void)sendRegisterIndicationRequest;
- (void)start;
- (void)started;
- (void)stop;
- (void)stopped;
@end

@implementation WRM_QMIDsdClient

- (WRM_QMIDsdClient)initWithSub:(int64_t)sub
{
  v7.receiver = self;
  v7.super_class = WRM_QMIDsdClient;
  v4 = [(WRM_QMIDsdClient *)&v7 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.WirelessRadioManager.QMIDsdClient", 0);
    v4->mQueue = v5;
    if (!v5)
    {
      [WCM_Logging logLevel:16 message:@"QMI.DSD failed to create the DSD client queue, use main_queue instead."];
      v4->mQueue = &_dispatch_main_q;
    }

    v4->mSub = sub;
    [(WRM_QMIDsdClient *)v4 initNewClient];
    v4->mQmiClientRunning = 0;
    v4->mSlotOneCellID = 0;
    v4->mSlotTwoCellID = 0;
  }

  return v4;
}

- (void)dealloc
{
  mQueue = self->mQueue;
  if (mQueue)
  {
    dispatch_release(mQueue);
  }

  if (self->mClient)
  {
    [(WRM_QMIDsdClient *)self stop];
    qmi::Client::release(self->mClient);
  }

  v4.receiver = self;
  v4.super_class = WRM_QMIDsdClient;
  [(WRM_QMIDsdClient *)&v4 dealloc];
}

- (void)start
{
  mClient = self->mClient;
  if (mClient)
  {
    qmi::Client::start(mClient);
  }
}

- (void)stop
{
  mClient = self->mClient;
  if (mClient)
  {
    qmi::Client::stop(mClient, a2);
  }
}

- (void)started
{
  [WCM_Logging logLevel:22 message:@"QMI.DSD client started.\n"];
  if (self->mSub == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(WRM_QMIDsdClient *)self bindQMIClientToSlotType:v3];
  self->mQmiClientRunning = 1;
}

- (void)stopped
{
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  [WCM_Logging logLevel:22 message:@"QMI.DSD client stopped.\n"];
  self->mQmiClientRunning = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100052C38;
  v4[3] = &unk_10023DC80;
  v4[4] = v3;
  v4[5] = self;
  dispatch_async([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")], v4);
}

- (void)handleDataSystemStatusInd:(Indication *)ind
{
  [WCM_Logging logLevel:22 message:@"QMI.DSD client system status report received\n"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100052D00;
  v5[3] = &unk_10023E9A0;
  v5[4] = self;
  v6 = v5;
  sub_10005468C(ind, 16, &v6);
}

- (void)handleBandwidthEstimationInd:(Indication *)ind
{
  v5 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
  v6 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  [WCM_Logging logLevel:22 message:@"==========QMI.DSD client Bandwidth Estimation received=========\n"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100053260;
  v13[3] = &unk_10023E9C8;
  v13[4] = v14;
  v13[5] = v16;
  v13[6] = &v22;
  v26 = v13;
  sub_1000547BC(ind, 22, &v26);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000532D0;
  v12[3] = &unk_10023E9F0;
  v12[8] = v14;
  v12[9] = v16;
  v12[4] = self;
  v12[5] = v6;
  v12[10] = v20;
  v12[11] = v18;
  v12[6] = v5;
  v12[7] = &v22;
  v26 = v12;
  sub_1000548C0(ind, 1, &v26);
  [WCM_Logging logLevel:22 message:@"===QMI.DSD.%u Configured Max Bandwidth===\n", *(v23 + 24)];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100053628;
  v11[3] = &unk_10023EA18;
  v11[4] = v6;
  v11[5] = &v22;
  v26 = v11;
  sub_1000549C4(ind, 16, &v26);
  [WCM_Logging logLevel:22 message:@"===QMI.DSD.%u Downlink Bandwidth Estimation===\n", *(v23 + 24)];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000536E4;
  v10[3] = &unk_10023EA40;
  v10[5] = v5;
  v10[6] = &v22;
  v10[4] = v6;
  v26 = v10;
  sub_100054AC8(ind, 17, &v26);
  [WCM_Logging logLevel:22 message:@"===QMI.DSD.%u Uplink Bandwidth Estimation===\n", *(v23 + 24)];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100053814;
  v9[3] = &unk_10023EA68;
  v9[5] = v5;
  v9[6] = &v22;
  v9[4] = v6;
  v26 = v9;
  sub_100054BDC(ind, 18, &v26);
  [WCM_Logging logLevel:22 message:@"===QMI.DSD.%u Connected State Summary===\n", *(v23 + 24)];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100053918;
  v8[3] = &unk_10023EA90;
  v8[6] = &v22;
  v8[7] = v20;
  v8[4] = v6;
  v8[5] = v5;
  v8[8] = v18;
  v26 = v8;
  sub_100054CE8(ind, 19, &v26);
  [WCM_Logging logLevel:22 message:@"===QMI.DSD.%u RLGS Info===\n", *(v23 + 24)];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053DC0;
  v7[3] = &unk_10023EAB8;
  v7[5] = v5;
  v7[6] = &v22;
  v7[4] = v6;
  v26 = v7;
  sub_100054DEC(ind, 20, &v26);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);
}

- (void)sendRegisterIndicationRequest
{
  [WCM_Logging logLevel:22 message:@"QMI.DSD send dsd::RegisterIndication::Request\n"];
  qmi::MutableMessageBase::MutableMessageBase(v6, 0x38u);
  *sub_100054EF0(v6, 161) = 1;
  mClient = self->mClient;
  QMIServiceMsg::create(v6, v3);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1000550F8;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = &stru_10023EAF8;
  v5 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v5)
  {
    _Block_release(v5);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v6);
}

- (void)bindQMIClientToSlotType:(int)type
{
  qmi::MutableMessageBase::MutableMessageBase(v13, 0x27u);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000541F4;
  v11[3] = &unk_10023EB18;
  typeCopy = type;
  v5 = sub_100055298(v13, 1);
  sub_1000541F4(v11, v5);
  v7[5] = self->mClient;
  v7[6] = QMIServiceMsg::create(v13, v6);
  v8 = 25000;
  v9 = 0;
  v10 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100054200;
  v7[3] = &unk_10023E9A0;
  v7[4] = self;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1000554A8;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = v7;
  v10 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v10)
  {
    _Block_release(v10);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v13);
}

@end