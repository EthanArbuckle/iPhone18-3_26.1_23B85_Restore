@interface WRM_QMINasClient
- (WRM_QMINasClient)initWithSub:(int64_t)sub;
- (id).cxx_construct;
- (void)bindQMIClientToSlotType:(int64_t)type;
- (void)dealloc;
- (void)notifyAVStatus:(unsigned __int8)status :(unsigned __int16)a4;
- (void)notifyBBCallState:(unsigned __int8)state :(unsigned __int8)a4 :(unsigned __int8)a5 :(unsigned __int8)a6;
- (void)notifyBBLockState:(unsigned __int8)state :(unsigned __int8)a4;
- (void)notifyFTDupelicationState:(unsigned __int8)state;
- (void)notifyStreamingEBHState:(unsigned __int8)state;
- (void)querySignalSinr;
- (void)registerQmiIndHandler;
- (void)sendNasConfigSigInfo2Request;
- (void)sendNasIndicationRegister;
- (void)sendSisNrAvailableRequest;
- (void)sendWrmSdmLocationDbInfo:(int64_t)info dbAvailable:(BOOL)available mcc:(unsigned int)mcc mnc:(unsigned int)mnc cellId:(unint64_t)id;
- (void)setBBSAState:(BOOL)state :(unsigned __int8)a4;
- (void)setHandlerLocationDbInfo;
- (void)setHandlerNasSigInfoInd;
- (void)setHandlerNasVoiceLqmInd;
- (void)setHandlerSisNrAvailableInfoInd;
- (void)setWrmSdmLocationDbPushOneEntryForCellType:(int64_t)type cellType:(int)cellType anchorCellBandwidth:(unsigned int)bandwidth mmWavePresent:(BOOL)present downlinkThroughput:(unsigned int)throughput sampleCount:(unsigned int)count deploymentCount:(unsigned int)deploymentCount;
- (void)start;
- (void)started;
- (void)stop;
- (void)stopped;
@end

@implementation WRM_QMINasClient

- (WRM_QMINasClient)initWithSub:(int64_t)sub
{
  v7.receiver = self;
  v7.super_class = WRM_QMINasClient;
  v4 = [(WRM_QMINasClient *)&v7 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.WirelessRadioManager.QMINasClient", 0);
    v4->mQueue = v5;
    if (!v5)
    {
      [WCM_Logging logLevel:16 message:@"QMI: failed to create the client queue, use main_queue instead."];
      v4->mQueue = &_dispatch_main_q;
    }

    v4->mSub = sub;
    [(WRM_QMINasClient *)v4 initNewClient];
    v4->mQmiClientRunning = 0;
    v4->mIsEnhancedSisSupported = 0;
    v4->mLastIsSaDisabled = 0;
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
    [(WRM_QMINasClient *)self stop];
    qmi::Client::release(self->mClient);
  }

  v4.receiver = self;
  v4.super_class = WRM_QMINasClient;
  [(WRM_QMINasClient *)&v4 dealloc];
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

- (void)registerQmiIndHandler
{
  [(WRM_QMINasClient *)self bindQMIClientToSlotType:self->mSub];
  [(WRM_QMINasClient *)self sendNasIndicationRegister];
  [(WRM_QMINasClient *)self sendNasConfigSigInfo2Request];
  [(WRM_QMINasClient *)self setHandlerNasSigInfoInd];
  [(WRM_QMINasClient *)self setHandlerNasVoiceLqmInd];
  [(WRM_QMINasClient *)self setHandlerSisNrAvailableInfoInd];

  [(WRM_QMINasClient *)self setHandlerLocationDbInfo];
}

- (void)started
{
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  self->mIsEnhancedSisSupported = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: client started.\n", self->mSub];
  [(WRM_QMINasClient *)self registerQmiIndHandler];
  [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: client register sig info.\n", self->mSub];
  self->mQmiClientRunning = 1;
  self->mLastIsSaDisabled = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AE540;
  block[3] = &unk_10023DC80;
  block[4] = v3;
  block[5] = self;
  dispatch_async([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")], block);
}

- (void)stopped
{
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: client stopped.\n", self->mSub];
  self->mQmiClientRunning = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AE614;
  block[3] = &unk_10023DC80;
  block[4] = v3;
  block[5] = self;
  dispatch_async([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")], block);
}

- (void)sendNasIndicationRegister
{
  qmi::MutableMessageBase::MutableMessageBase(v8, 3u);
  *sub_1000B358C(v8, 25) = 1;
  *sub_1000B3794(v8, 224) = 1;
  if (self->mIsEnhancedSisSupported)
  {
    *sub_1000B399C(v8, 225) = 1;
  }

  *sub_1000B3BA4(v8, 226) = 1;
  v4[5] = self->mClient;
  v4[6] = QMIServiceMsg::create(v8, v3);
  v5 = 25000;
  v6 = 0;
  v7 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AE7F0;
  v4[3] = &unk_10023E9A0;
  v4[4] = self;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1000B3DAC;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = v4;
  v7 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v7)
  {
    _Block_release(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v8);
}

- (void)sendSisNrAvailableRequest
{
  if (self->mClient && self->mIsEnhancedSisSupported)
  {
    qmi::MutableMessageBase::MutableMessageBase(v8, 0x5570u);
    [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: nas::SisNrAvailable::Request sent.", self->mSub];
    v4[5] = self->mClient;
    v4[6] = QMIServiceMsg::create(v8, v3);
    v5 = 25000;
    v6 = 0;
    v7 = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000AE9D8;
    v4[3] = &unk_10023E9A0;
    v4[4] = self;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1000B3F4C;
    aBlock[3] = &unk_10023EB40;
    aBlock[4] = v4;
    v7 = _Block_copy(aBlock);
    qmi::Client::send();
    if (v7)
    {
      _Block_release(v7);
    }

    qmi::MutableMessageBase::~MutableMessageBase(v8);
  }
}

- (void)sendNasConfigSigInfo2Request
{
  qmi::MutableMessageBase::MutableMessageBase(v17, 0x6Cu);
  v3 = sub_1000B40EC(v17, 34);
  LOWORD(aBlock[0]) = -1000;
  sub_1000AECA4(v3, aBlock);
  LOWORD(aBlock[0]) = -150;
  sub_1000AECA4(v3, aBlock);
  v4 = sub_1000B4498(v17, 36);
  sub_1000AED80(v4, v4);
  v5 = sub_1000B4790(v17, 38);
  sub_1000AEDF4(v5, v5);
  v6 = sub_1000B4A88(v17, 40);
  sub_1000AEE6C(v6, v6);
  v7 = sub_1000B4D80(v17, 51);
  sub_1000AED80(v7, v7);
  v8 = sub_1000B5078(v17, 56);
  sub_1000AEDF4(v8, v8);
  v9 = sub_1000B5370(v17, 53);
  sub_1000AEE6C(v9, v9);
  v10 = sub_1000B5668(v17, 30);
  LOWORD(aBlock[0]) = -1000;
  sub_1000AECA4(v10, aBlock);
  LOWORD(aBlock[0]) = -150;
  sub_1000AECA4(v10, aBlock);
  v11 = sub_1000B5960(v17, 32);
  sub_1000AEF5C(v11, v11);
  *sub_1000B5C58(v17, 42) = 769;
  *sub_1000B5E68(v17, 55) = 769;
  v13[5] = self->mClient;
  v13[6] = QMIServiceMsg::create(v17, v12);
  v14 = 25000;
  v15 = 0;
  v16 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AEFFC;
  v13[3] = &unk_10023E9A0;
  v13[4] = self;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1000B6078;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = v13;
  v16 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v16)
  {
    _Block_release(v16);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v17);
}

- (void)setHandlerNasSigInfoInd
{
  v3 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  mClient = self->mClient;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014D7C;
  v7[3] = &unk_1002404A0;
  v7[4] = v3;
  v7[5] = self;
  keys[0] = _NSConcreteStackBlock;
  keys[1] = 3221225472;
  v10 = sub_100014C20;
  v11 = &unk_10023EB40;
  v12 = v7;
  qmi::Client::setIndHandler();
  if (self->mSub == 1)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    *keys = *off_1002404C0;
    values[0] = xpc_uint64_create(0x198uLL);
    values[1] = v5;
    v6 = xpc_dictionary_create(keys, values, 2uLL);
    [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    xpc_release(values[0]);
    xpc_release(v6);
    xpc_release(v5);
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: Non primary sub, skip update WRMCoreTelephonyRawLinkQuality", self->mSub];
  }
}

- (void)setHandlerSisNrAvailableInfoInd
{
  if (self->mClient)
  {
    if (self->mIsEnhancedSisSupported)
    {
      v4[10] = v2;
      v4[11] = v3;
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_1000AF3CC;
      v4[3] = &unk_10023E9A0;
      v4[4] = self;
      v4[5] = _NSConcreteStackBlock;
      v4[6] = 3221225472;
      v4[7] = sub_1000B63C0;
      v4[8] = &unk_10023EB40;
      v4[9] = v4;
      qmi::Client::setIndHandler();
    }
  }
}

- (void)setHandlerNasVoiceLqmInd
{
  if (self->mSub == 1)
  {
    mClient = self->mClient;
    qmi::Client::setIndHandler();
  }
}

- (void)bindQMIClientToSlotType:(int64_t)type
{
  qmi::MutableMessageBase::MutableMessageBase(v12, 0x45u);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AF954;
  v11[3] = &unk_100240540;
  v11[4] = type;
  v5 = sub_1000B6804(v12, 1);
  sub_1000AF954(v11, v5);
  v7[5] = self->mClient;
  v7[6] = QMIServiceMsg::create(v12, v6);
  v8 = 25000;
  v9 = 0;
  v10 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AF968;
  v7[3] = &unk_10023E9A0;
  v7[4] = self;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1000B6A0C;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = v7;
  v10 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v10)
  {
    _Block_release(v10);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v12);
}

- (void)querySignalSinr
{
  qmi::MutableMessageBase::MutableMessageBase(v6, 2u);
  *sub_1000B6BAC(v6, 19) = 0;
  *sub_1000B6DBC(v6, 20) = 0;
  *sub_1000B6FCC(v6, 21) = 0;
  *sub_1000B71DC(v6, 24) = 0;
  *sub_1000B73EC(v6, 27) = 0;
  *sub_1000B7600(v6, 28) = 0;
  mClient = self->mClient;
  QMIServiceMsg::create(v6, v3);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1000B7810;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = &stru_100240560;
  v5 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v5)
  {
    _Block_release(v5);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v6);
}

- (void)notifyBBCallState:(unsigned __int8)state :(unsigned __int8)a4 :(unsigned __int8)a5 :(unsigned __int8)a6
{
  qmi::MutableMessageBase::MutableMessageBase(v22, 0x5568u);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AFD7C;
  v17[3] = &unk_100240588;
  stateCopy = state;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v17[4] = self;
  v11 = sub_1000B79B0(v22, 16);
  sub_1000AFD7C(v17, v11);
  v13[5] = self->mClient;
  v13[6] = QMIServiceMsg::create(v22, v12);
  v14 = 25000;
  v15 = 0;
  v16 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AFDE8;
  v13[3] = &unk_10023E9A0;
  v13[4] = self;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_10001467C;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = v13;
  v16 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v16)
  {
    _Block_release(v16);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v22);
}

- (void)notifyBBLockState:(unsigned __int8)state :(unsigned __int8)a4
{
  qmi::MutableMessageBase::MutableMessageBase(v16, 0x5568u);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B0034;
  v13[3] = &unk_1002405B0;
  stateCopy = state;
  v15 = a4;
  v13[4] = self;
  v7 = sub_1000147D8(v16, 17);
  sub_1000B0034(v13, v7);
  v9[5] = self->mClient;
  v9[6] = QMIServiceMsg::create(v16, v8);
  v10 = 25000;
  v11 = 0;
  v12 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B008C;
  v9[3] = &unk_10023E9A0;
  v9[4] = self;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_10001467C;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = v9;
  v12 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v12)
  {
    _Block_release(v12);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v16);
}

- (void)notifyAVStatus:(unsigned __int8)status :(unsigned __int16)a4
{
  qmi::MutableMessageBase::MutableMessageBase(v16, 0x5568u);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B02D8;
  v13[3] = &unk_1002405D8;
  statusCopy = status;
  v14 = a4;
  v13[4] = self;
  v7 = sub_1000B7C6C(v16, 18);
  sub_1000B02D8(v13, v7);
  v9[5] = self->mClient;
  v9[6] = QMIServiceMsg::create(v16, v8);
  v10 = 25000;
  v11 = 0;
  v12 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B0330;
  v9[3] = &unk_10023E9A0;
  v9[4] = self;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_10001467C;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = v9;
  v12 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v12)
  {
    _Block_release(v12);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v16);
}

- (void)notifyFTDupelicationState:(unsigned __int8)state
{
  v5 = qmi::MutableMessageBase::MutableMessageBase(v14, 0x5568u);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B0568;
  v12[3] = &unk_100240600;
  stateCopy = state;
  v12[4] = self;
  v6 = sub_1000B7E80(v5, 19);
  sub_1000B0568(v12, v6);
  v8[5] = self->mClient;
  v8[6] = QMIServiceMsg::create(v14, v7);
  v9 = 25000;
  v10 = 0;
  v11 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B05B4;
  v8[3] = &unk_10023E9A0;
  v8[4] = self;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_10001467C;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = v8;
  v11 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v11)
  {
    _Block_release(v11);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v14);
}

- (void)notifyStreamingEBHState:(unsigned __int8)state
{
  v5 = qmi::MutableMessageBase::MutableMessageBase(v14, 0x5568u);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B07EC;
  v12[3] = &unk_100240628;
  stateCopy = state;
  v12[4] = self;
  v6 = sub_1000B8088(v5, 20);
  sub_1000B07EC(v12, v6);
  v8[5] = self->mClient;
  v8[6] = QMIServiceMsg::create(v14, v7);
  v9 = 25000;
  v10 = 0;
  v11 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B0838;
  v8[3] = &unk_10023E9A0;
  v8[4] = self;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_10001467C;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = v8;
  v11 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v11)
  {
    _Block_release(v11);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v14);
}

- (void)setBBSAState:(BOOL)state :(unsigned __int8)a4
{
  if (self->mLastIsSaDisabled != state)
  {
    self->mLastIsSaDisabled = state;
    v7 = qmi::MutableMessageBase::MutableMessageBase(v19, 0x556Au);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B0AEC;
    v17[3] = &unk_100240650;
    stateCopy = state;
    v17[4] = self;
    v8 = sub_1000B8290(v7, 16);
    sub_1000B0AEC(v17, v8);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B0B38;
    v15[3] = &unk_100240678;
    v16 = a4;
    v15[4] = self;
    v9 = sub_1000B8498(v19, 18);
    sub_1000B0B38(v15, v9);
    v11[5] = self->mClient;
    v11[6] = QMIServiceMsg::create(v19, v10);
    v12 = 25000;
    v13 = 0;
    v14 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B0B84;
    v11[3] = &unk_10023E9A0;
    v11[4] = self;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1000B86A0;
    aBlock[3] = &unk_10023EB40;
    aBlock[4] = v11;
    v14 = _Block_copy(aBlock);
    qmi::Client::send();
    if (v14)
    {
      _Block_release(v14);
    }

    qmi::MutableMessageBase::~MutableMessageBase(v19);
  }
}

- (void)setHandlerLocationDbInfo
{
  mClient = self->mClient;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B0E78;
  v12[3] = &unk_10023E9A0;
  v12[4] = self;
  aBlock = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000B8944;
  v16 = &unk_10023EB40;
  v17 = v12;
  qmi::Client::setIndHandler();
  v4 = self->mClient;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B0F6C;
  v11[3] = &unk_10023E9A0;
  v11[4] = self;
  aBlock = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000B8CEC;
  v16 = &unk_10023EB40;
  v17 = v11;
  qmi::Client::setIndHandler();
  [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: send nas::WrmSdmLocationDbInfoRegister::Request", self->mSub];
  qmi::MutableMessageBase::MutableMessageBase(v10, 0x556Cu);
  v6[5] = self->mClient;
  v6[6] = QMIServiceMsg::create(v10, v5);
  v7 = 25000;
  v8 = 0;
  v9 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B1194;
  v6[3] = &unk_10023E9A0;
  v6[4] = self;
  aBlock = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000B8F90;
  v16 = &unk_10023EB40;
  v17 = v6;
  v9 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v9)
  {
    _Block_release(v9);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v10);
}

- (void)setWrmSdmLocationDbPushOneEntryForCellType:(int64_t)type cellType:(int)cellType anchorCellBandwidth:(unsigned int)bandwidth mmWavePresent:(BOOL)present downlinkThroughput:(unsigned int)throughput sampleCount:(unsigned int)count deploymentCount:(unsigned int)deploymentCount
{
  mQueue = self->mQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B1360;
  v10[3] = &unk_10023E8A8;
  v10[4] = self;
  cellTypeCopy = cellType;
  bandwidthCopy = bandwidth;
  presentCopy = present;
  throughputCopy = throughput;
  countCopy = count;
  deploymentCountCopy = deploymentCount;
  dispatch_async(mQueue, v10);
}

- (void)sendWrmSdmLocationDbInfo:(int64_t)info dbAvailable:(BOOL)available mcc:(unsigned int)mcc mnc:(unsigned int)mnc cellId:(unint64_t)id
{
  mQueue = self->mQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B16C8;
  v8[3] = &unk_100240858;
  availableCopy = available;
  mccCopy = mcc;
  mncCopy = mnc;
  v8[4] = self;
  v8[5] = id;
  dispatch_async(mQueue, v8);
}

- (id).cxx_construct
{
  *(self + 152) = 0u;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  return self;
}

@end