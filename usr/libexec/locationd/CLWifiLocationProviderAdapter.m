@interface CLWifiLocationProviderAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLWifiLocationProviderAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)emergencyStateChange:(id)a3;
- (void)endService;
- (void)requestLocationUpdateWithParameters:(id)a3;
@end

@implementation CLWifiLocationProviderAdapter

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
  if (qword_1026585B8 != -1)
  {
    sub_1018FC580();
  }

  return qword_1026585B0;
}

- (CLWifiLocationProviderAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLWifiLocationProviderAdapter;
  return [(CLWifiLocationProviderAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLWifiLocationProviderProtocol outboundProtocol:&OBJC_PROTOCOL___CLWifiLocationProviderClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_10067B074([(CLWifiLocationProviderAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018FC594();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (void)doAsync:(id)a3
{
  v4 = [(CLWifiLocationProviderAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLWifiLocationProviderAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)emergencyStateChange:(id)a3
{
  (*(a3 + 2))(&v8, a3, a2);
  if (qword_1025D4630 != -1)
  {
    sub_1018FC728();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    sub_100C3D494(&v8, &__p);
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    v11 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "notifier adapter received emergency state %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FC750(&v8);
  }

  v6 = [(CLWifiLocationProviderAdapter *)self adaptee];
  *&__p.__r_.__value_.__l.__data_ = v8;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = v9;
  sub_10067B3D8(v6, &__p);
}

- (void)requestLocationUpdateWithParameters:(id)a3
{
  v4 = [(CLWifiLocationProviderAdapter *)self adaptee];
  (*(a3 + 2))(v5, a3);
  sub_100184100(v4, v5);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[2]);
  }
}

+ (BOOL)isSupported
{
  if (qword_1026585C8 != -1)
  {
    sub_1018FCA7C();
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018FCA90();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67240192;
    v4[1] = byte_1026585C0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "@ClxWifi, supported, %{public}d", v4, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCAA4();
  }

  return byte_1026585C0;
}

@end