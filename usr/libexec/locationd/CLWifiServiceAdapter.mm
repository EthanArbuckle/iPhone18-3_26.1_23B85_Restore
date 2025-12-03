@interface CLWifiServiceAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)syncgetAssociatedNetwork:(void *)network;
- (BOOL)syncgetHostedNetwork:(void *)network;
- (BOOL)syncgetIsAssociated;
- (BOOL)syncgetIsAvailable;
- (BOOL)syncgetIsSimulationEnabled;
- (BOOL)syncgetIsWifiPowered;
- (BOOL)syncgetIsWifiPoweredWithStatus:(BOOL *)status;
- (BOOL)syncgetSetAutoJoin:(BOOL)join;
- (BOOL)syncgetStartScanWithParameters:(id)parameters;
- (BOOL)syncgetStartScanWithType:(char)type lowPriority:(BOOL)priority lowLatency:(BOOL)latency passive:(BOOL)passive requester:(const char *)requester channels:(const void *)channels;
- (BOOL)syncgetStartScanWithType:(char)type lowPriority:(BOOL)priority passive:(BOOL)passive requester:(const char *)requester;
- (CLWifiServiceAdapter)init;
- (id)syncgetBackgroundScanCacheResult;
- (id)syncgetScanResult;
- (id)syncgetScanStats;
- (void)adaptee;
- (void)beginService;
- (void)clearExitAndEntryScanNetworks:(BOOL)networks;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)fetchIsAssociatedWithReply:(id)reply;
- (void)fetchIsWifiAvailableWithReply:(id)reply;
- (void)fetchScanResultWithReply:(id)reply;
- (void)programEntryScanNetworks:(id)networks andExitScanNetworks:(id)scanNetworks;
- (void)setBackgroundExitScanCount:(int)count;
- (void)setEntryScanNetworks:(id)networks andExitScanNetworks:(id)scanNetworks;
- (void)setQuiesceWifi:(BOOL)wifi;
- (void)setScannerEntryScanNetworks:(id)networks;
- (void)setScannerExitScanNetworks:(id)networks;
- (void)setWifiPower:(BOOL)power;
- (void)startScanWithType:(char)type lowPriority:(BOOL)priority passive:(BOOL)passive requester:(id)requester;
@end

@implementation CLWifiServiceAdapter

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (id)syncgetScanResult
{
  v7 = 0u;
  v8 = 0u;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  (*(*adaptee + 224))(adaptee, &v7 + 8, &v7);
  v5 = v7;
  memset(v6, 0, sizeof(v6));
  sub_100288650(v6, *(&v7 + 1), v8, 0x2E8BA2E8BA2E8BA3 * ((v8 - *(&v7 + 1)) >> 3));
  v3 = sub_1002E6DD0(&v5);
  v9 = v6;
  sub_1000B96B4(&v9);
  v9 = &v7 + 1;
  sub_1000B96B4(&v9);
  return v3;
}

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102656F58 != -1)
  {
    sub_1018CD3DC();
  }

  return qword_102656F50;
}

- (CLWifiServiceAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLWifiServiceAdapter;
  return [(CLWifiServiceAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLWifiServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLWifiServiceClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_100F67B30([(CLWifiServiceAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018CD3F0();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)doAsync:(id)async
{
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLWifiServiceAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (void)fetchIsAssociatedWithReply:(id)reply
{
  v4 = sub_1000ECA98([(CLWifiServiceAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply, v4);
}

- (BOOL)syncgetIsAssociated
{
  adaptee = [(CLWifiServiceAdapter *)self adaptee];

  return sub_1000ECA98(adaptee);
}

- (void)fetchIsWifiAvailableWithReply:(id)reply
{
  v6 = 0;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  v5 = (*(*adaptee + 216))(adaptee, &v6);
  (*(reply + 2))(reply, (v5 & v6));
}

- (BOOL)syncgetIsWifiPowered
{
  v5 = 0;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  v3 = (*(*adaptee + 216))(adaptee, &v5);
  return v3 & v5;
}

- (BOOL)syncgetIsWifiPoweredWithStatus:(BOOL *)status
{
  v6 = 0;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  *status = (*(*adaptee + 216))(adaptee, &v6);
  return v6;
}

- (BOOL)syncgetIsAvailable
{
  adaptee = [(CLWifiServiceAdapter *)self adaptee];

  return sub_10058D5A0(adaptee);
}

- (BOOL)syncgetIsSimulationEnabled
{
  v2 = *(*[(CLWifiServiceAdapter *)self adaptee]+ 208);

  return v2();
}

- (void)programEntryScanNetworks:(id)networks andExitScanNetworks:(id)scanNetworks
{
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  (*(networks + 2))(v8, networks);
  (*(scanNetworks + 2))(v7, scanNetworks);
  sub_10058D738(adaptee, v8, v7);
  v9 = v7;
  sub_1000B96B4(&v9);
  v7[0] = v8;
  sub_1000B96B4(v7);
}

- (void)setEntryScanNetworks:(id)networks andExitScanNetworks:(id)scanNetworks
{
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  (*(scanNetworks + 2))(v9, scanNetworks);
  sub_10058D9D0(adaptee, v9);
  v10 = v9;
  sub_1000B96B4(&v10);
  adaptee2 = [(CLWifiServiceAdapter *)self adaptee];
  (*(networks + 2))(v9, networks);
  sub_10058DAB0(adaptee2, v9);
  v10 = v9;
  sub_1000B96B4(&v10);
}

- (void)setScannerEntryScanNetworks:(id)networks
{
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  (*(networks + 2))(v5, networks);
  sub_10058DAB0(adaptee, v5);
  v6 = v5;
  sub_1000B96B4(&v6);
}

- (void)setScannerExitScanNetworks:(id)networks
{
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  (*(networks + 2))(v5, networks);
  sub_10058D9D0(adaptee, v5);
  v6 = v5;
  sub_1000B96B4(&v6);
}

- (id)syncgetScanStats
{
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  sub_10058DD28([(CLWifiServiceAdapter *)self adaptee], &v3, 1);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005A45CC;
  v7[3] = &unk_102460E68;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return [v7 copy];
}

- (id)syncgetBackgroundScanCacheResult
{
  v7 = 0u;
  v8 = 0u;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  (*(*adaptee + 240))(adaptee, &v7 + 8, &v7);
  v5 = v7;
  memset(v6, 0, sizeof(v6));
  sub_100288650(v6, *(&v7 + 1), v8, 0x2E8BA2E8BA2E8BA3 * ((v8 - *(&v7 + 1)) >> 3));
  v3 = sub_1002E6DD0(&v5);
  v9 = v6;
  sub_1000B96B4(&v9);
  v9 = &v7 + 1;
  sub_1000B96B4(&v9);
  return v3;
}

- (void)fetchScanResultWithReply:(id)reply
{
  v8 = 0u;
  v9 = 0u;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  (*(*adaptee + 224))(adaptee, &v8 + 8, &v8);
  v6 = v8;
  memset(v7, 0, sizeof(v7));
  sub_100288650(v7, *(&v8 + 1), v9, 0x2E8BA2E8BA2E8BA3 * ((v9 - *(&v8 + 1)) >> 3));
  v5 = sub_1002E6DD0(&v6);
  (*(reply + 2))(reply, v5);
  v10 = v7;
  sub_1000B96B4(&v10);
  v10 = &v8 + 1;
  sub_1000B96B4(&v10);
}

- (BOOL)syncgetAssociatedNetwork:(void *)network
{
  sub_1002E1CB0([(CLWifiServiceAdapter *)self adaptee], &v8);
  v4 = v14;
  v5 = v14;
  if (v14)
  {
    *network = v8;
    std::string::operator=((network + 8), &__p);
    v6 = v11;
    *(network + 2) = v10;
    *(network + 3) = v6;
    *(network + 4) = v12;
    *(network + 10) = v13;
    v5 = v14;
  }

  if (v5 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

- (BOOL)syncgetHostedNetwork:(void *)network
{
  sub_10058E150([(CLWifiServiceAdapter *)self adaptee], &__p);
  v4 = v9;
  v5 = v9;
  if (v9)
  {
    std::string::operator=(network, &__p);
    *(network + 24) = v8;
    v5 = v9;
  }

  if (v5 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

- (void)clearExitAndEntryScanNetworks:(BOOL)networks
{
  networksCopy = networks;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];

  sub_10058E2FC(adaptee, networksCopy);
}

- (BOOL)syncgetStartScanWithType:(char)type lowPriority:(BOOL)priority passive:(BOOL)passive requester:(const char *)requester
{
  passiveCopy = passive;
  priorityCopy = priority;
  typeCopy = type;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  sub_10000EC00(v15, requester);
  LOBYTE(__p[0]) = 0;
  v14 = 0;
  v11 = (*(*adaptee + 256))(adaptee, typeCopy, priorityCopy, 0, passiveCopy, v15, __p);
  if (v14 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}

- (void)startScanWithType:(char)type lowPriority:(BOOL)priority passive:(BOOL)passive requester:(id)requester
{
  passiveCopy = passive;
  priorityCopy = priority;
  typeCopy = type;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  sub_10000EC00(v13, [requester UTF8String]);
  LOBYTE(__p[0]) = 0;
  v12 = 0;
  (*(*adaptee + 256))(adaptee, typeCopy, priorityCopy, 0, passiveCopy, v13, __p);
  if (v12 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

- (BOOL)syncgetStartScanWithType:(char)type lowPriority:(BOOL)priority lowLatency:(BOOL)latency passive:(BOOL)passive requester:(const char *)requester channels:(const void *)channels
{
  passiveCopy = passive;
  latencyCopy = latency;
  priorityCopy = priority;
  typeCopy = type;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  sub_10000EC00(__p, requester);
  v15 = (*(*adaptee + 256))(adaptee, typeCopy, priorityCopy, latencyCopy, passiveCopy, __p, channels);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

- (BOOL)syncgetStartScanWithParameters:(id)parameters
{
  adaptee = [(CLWifiServiceAdapter *)self adaptee];
  (*(parameters + 2))(v7, parameters);
  v5 = sub_1002DB54C(adaptee, v7);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  return v5;
}

- (void)setQuiesceWifi:(BOOL)wifi
{
  wifiCopy = wifi;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];

  sub_10058E7FC(adaptee, wifiCopy);
}

- (void)setWifiPower:(BOOL)power
{
  powerCopy = power;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];

  sub_10058F2CC(adaptee, powerCopy);
}

- (void)setBackgroundExitScanCount:(int)count
{
  adaptee = [(CLWifiServiceAdapter *)self adaptee];

  sub_10058F690(adaptee, count);
}

- (BOOL)syncgetSetAutoJoin:(BOOL)join
{
  joinCopy = join;
  adaptee = [(CLWifiServiceAdapter *)self adaptee];

  return sub_10058F934(adaptee, joinCopy);
}

@end