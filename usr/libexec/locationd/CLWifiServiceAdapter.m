@interface CLWifiServiceAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)syncgetAssociatedNetwork:(void *)a3;
- (BOOL)syncgetHostedNetwork:(void *)a3;
- (BOOL)syncgetIsAssociated;
- (BOOL)syncgetIsAvailable;
- (BOOL)syncgetIsSimulationEnabled;
- (BOOL)syncgetIsWifiPowered;
- (BOOL)syncgetIsWifiPoweredWithStatus:(BOOL *)a3;
- (BOOL)syncgetSetAutoJoin:(BOOL)a3;
- (BOOL)syncgetStartScanWithParameters:(id)a3;
- (BOOL)syncgetStartScanWithType:(char)a3 lowPriority:(BOOL)a4 lowLatency:(BOOL)a5 passive:(BOOL)a6 requester:(const char *)a7 channels:(const void *)a8;
- (BOOL)syncgetStartScanWithType:(char)a3 lowPriority:(BOOL)a4 passive:(BOOL)a5 requester:(const char *)a6;
- (CLWifiServiceAdapter)init;
- (id)syncgetBackgroundScanCacheResult;
- (id)syncgetScanResult;
- (id)syncgetScanStats;
- (void)adaptee;
- (void)beginService;
- (void)clearExitAndEntryScanNetworks:(BOOL)a3;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)fetchIsAssociatedWithReply:(id)a3;
- (void)fetchIsWifiAvailableWithReply:(id)a3;
- (void)fetchScanResultWithReply:(id)a3;
- (void)programEntryScanNetworks:(id)a3 andExitScanNetworks:(id)a4;
- (void)setBackgroundExitScanCount:(int)a3;
- (void)setEntryScanNetworks:(id)a3 andExitScanNetworks:(id)a4;
- (void)setQuiesceWifi:(BOOL)a3;
- (void)setScannerEntryScanNetworks:(id)a3;
- (void)setScannerExitScanNetworks:(id)a3;
- (void)setWifiPower:(BOOL)a3;
- (void)startScanWithType:(char)a3 lowPriority:(BOOL)a4 passive:(BOOL)a5 requester:(id)a6;
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
  v2 = [(CLWifiServiceAdapter *)self adaptee];
  (*(*v2 + 224))(v2, &v7 + 8, &v7);
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

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
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

- (void)doAsync:(id)a3
{
  v4 = [(CLWifiServiceAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLWifiServiceAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)fetchIsAssociatedWithReply:(id)a3
{
  v4 = sub_1000ECA98([(CLWifiServiceAdapter *)self adaptee]);
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (BOOL)syncgetIsAssociated
{
  v2 = [(CLWifiServiceAdapter *)self adaptee];

  return sub_1000ECA98(v2);
}

- (void)fetchIsWifiAvailableWithReply:(id)a3
{
  v6 = 0;
  v4 = [(CLWifiServiceAdapter *)self adaptee];
  v5 = (*(*v4 + 216))(v4, &v6);
  (*(a3 + 2))(a3, (v5 & v6));
}

- (BOOL)syncgetIsWifiPowered
{
  v5 = 0;
  v2 = [(CLWifiServiceAdapter *)self adaptee];
  v3 = (*(*v2 + 216))(v2, &v5);
  return v3 & v5;
}

- (BOOL)syncgetIsWifiPoweredWithStatus:(BOOL *)a3
{
  v6 = 0;
  v4 = [(CLWifiServiceAdapter *)self adaptee];
  *a3 = (*(*v4 + 216))(v4, &v6);
  return v6;
}

- (BOOL)syncgetIsAvailable
{
  v2 = [(CLWifiServiceAdapter *)self adaptee];

  return sub_10058D5A0(v2);
}

- (BOOL)syncgetIsSimulationEnabled
{
  v2 = *(*[(CLWifiServiceAdapter *)self adaptee]+ 208);

  return v2();
}

- (void)programEntryScanNetworks:(id)a3 andExitScanNetworks:(id)a4
{
  v6 = [(CLWifiServiceAdapter *)self adaptee];
  (*(a3 + 2))(v8, a3);
  (*(a4 + 2))(v7, a4);
  sub_10058D738(v6, v8, v7);
  v9 = v7;
  sub_1000B96B4(&v9);
  v7[0] = v8;
  sub_1000B96B4(v7);
}

- (void)setEntryScanNetworks:(id)a3 andExitScanNetworks:(id)a4
{
  v7 = [(CLWifiServiceAdapter *)self adaptee];
  (*(a4 + 2))(v9, a4);
  sub_10058D9D0(v7, v9);
  v10 = v9;
  sub_1000B96B4(&v10);
  v8 = [(CLWifiServiceAdapter *)self adaptee];
  (*(a3 + 2))(v9, a3);
  sub_10058DAB0(v8, v9);
  v10 = v9;
  sub_1000B96B4(&v10);
}

- (void)setScannerEntryScanNetworks:(id)a3
{
  v4 = [(CLWifiServiceAdapter *)self adaptee];
  (*(a3 + 2))(v5, a3);
  sub_10058DAB0(v4, v5);
  v6 = v5;
  sub_1000B96B4(&v6);
}

- (void)setScannerExitScanNetworks:(id)a3
{
  v4 = [(CLWifiServiceAdapter *)self adaptee];
  (*(a3 + 2))(v5, a3);
  sub_10058D9D0(v4, v5);
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
  v2 = [(CLWifiServiceAdapter *)self adaptee];
  (*(*v2 + 240))(v2, &v7 + 8, &v7);
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

- (void)fetchScanResultWithReply:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v4 = [(CLWifiServiceAdapter *)self adaptee];
  (*(*v4 + 224))(v4, &v8 + 8, &v8);
  v6 = v8;
  memset(v7, 0, sizeof(v7));
  sub_100288650(v7, *(&v8 + 1), v9, 0x2E8BA2E8BA2E8BA3 * ((v9 - *(&v8 + 1)) >> 3));
  v5 = sub_1002E6DD0(&v6);
  (*(a3 + 2))(a3, v5);
  v10 = v7;
  sub_1000B96B4(&v10);
  v10 = &v8 + 1;
  sub_1000B96B4(&v10);
}

- (BOOL)syncgetAssociatedNetwork:(void *)a3
{
  sub_1002E1CB0([(CLWifiServiceAdapter *)self adaptee], &v8);
  v4 = v14;
  v5 = v14;
  if (v14)
  {
    *a3 = v8;
    std::string::operator=((a3 + 8), &__p);
    v6 = v11;
    *(a3 + 2) = v10;
    *(a3 + 3) = v6;
    *(a3 + 4) = v12;
    *(a3 + 10) = v13;
    v5 = v14;
  }

  if (v5 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

- (BOOL)syncgetHostedNetwork:(void *)a3
{
  sub_10058E150([(CLWifiServiceAdapter *)self adaptee], &__p);
  v4 = v9;
  v5 = v9;
  if (v9)
  {
    std::string::operator=(a3, &__p);
    *(a3 + 24) = v8;
    v5 = v9;
  }

  if (v5 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

- (void)clearExitAndEntryScanNetworks:(BOOL)a3
{
  v3 = a3;
  v4 = [(CLWifiServiceAdapter *)self adaptee];

  sub_10058E2FC(v4, v3);
}

- (BOOL)syncgetStartScanWithType:(char)a3 lowPriority:(BOOL)a4 passive:(BOOL)a5 requester:(const char *)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(CLWifiServiceAdapter *)self adaptee];
  sub_10000EC00(v15, a6);
  LOBYTE(__p[0]) = 0;
  v14 = 0;
  v11 = (*(*v10 + 256))(v10, v9, v8, 0, v7, v15, __p);
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

- (void)startScanWithType:(char)a3 lowPriority:(BOOL)a4 passive:(BOOL)a5 requester:(id)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(CLWifiServiceAdapter *)self adaptee];
  sub_10000EC00(v13, [a6 UTF8String]);
  LOBYTE(__p[0]) = 0;
  v12 = 0;
  (*(*v10 + 256))(v10, v9, v8, 0, v7, v13, __p);
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

- (BOOL)syncgetStartScanWithType:(char)a3 lowPriority:(BOOL)a4 lowLatency:(BOOL)a5 passive:(BOOL)a6 requester:(const char *)a7 channels:(const void *)a8
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CLWifiServiceAdapter *)self adaptee];
  sub_10000EC00(__p, a7);
  v15 = (*(*v14 + 256))(v14, v13, v12, v11, v10, __p, a8);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

- (BOOL)syncgetStartScanWithParameters:(id)a3
{
  v4 = [(CLWifiServiceAdapter *)self adaptee];
  (*(a3 + 2))(v7, a3);
  v5 = sub_1002DB54C(v4, v7);
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

- (void)setQuiesceWifi:(BOOL)a3
{
  v3 = a3;
  v4 = [(CLWifiServiceAdapter *)self adaptee];

  sub_10058E7FC(v4, v3);
}

- (void)setWifiPower:(BOOL)a3
{
  v3 = a3;
  v4 = [(CLWifiServiceAdapter *)self adaptee];

  sub_10058F2CC(v4, v3);
}

- (void)setBackgroundExitScanCount:(int)a3
{
  v4 = [(CLWifiServiceAdapter *)self adaptee];

  sub_10058F690(v4, a3);
}

- (BOOL)syncgetSetAutoJoin:(BOOL)a3
{
  v3 = a3;
  v4 = [(CLWifiServiceAdapter *)self adaptee];

  return sub_10058F934(v4, v3);
}

@end