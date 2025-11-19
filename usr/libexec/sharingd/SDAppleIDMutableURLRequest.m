@interface SDAppleIDMutableURLRequest
- (SDAppleIDMutableURLRequest)initWithURL:(id)a3 gsToken:(id)a4;
@end

@implementation SDAppleIDMutableURLRequest

- (SDAppleIDMutableURLRequest)initWithURL:(id)a3 gsToken:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SDAppleIDMutableURLRequest;
  v7 = [(SDAppleIDMutableURLRequest *)&v10 initWithURL:a3];
  v8 = v7;
  if (v7)
  {
    [(SDAppleIDMutableURLRequest *)v7 setHTTPShouldHandleCookies:0];
    [(SDAppleIDMutableURLRequest *)v8 setHTTPMethod:@"POST"];
    [(SDAppleIDMutableURLRequest *)v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    if (qword_10098A070 != -1)
    {
      sub_1001B9FD4();
    }

    [(SDAppleIDMutableURLRequest *)v8 setValue:qword_10098A068 forHTTPHeaderField:@"X-Mme-Client-Info"];
    if (qword_10098A080 != -1)
    {
      sub_1001B9FFC();
    }

    [(SDAppleIDMutableURLRequest *)v8 setValue:qword_10098A078 forHTTPHeaderField:@"X-Mme-Device-ID"];
    [(SDAppleIDMutableURLRequest *)v8 setValue:v6 forHTTPHeaderField:@"X-Apple-GS-Token"];
    if (IsAppleInternalBuild())
    {
      [(SDAppleIDMutableURLRequest *)v8 setValue:@"true" forHTTPHeaderField:@"X-Apple-I-88CC-99DE-EE63-2736"];
    }

    if (SFIsSeedBuild())
    {
      [(SDAppleIDMutableURLRequest *)v8 setValue:@"true" forHTTPHeaderField:@"X-Apple-I-B636-170F-9E08-A4C3"];
    }

    if (_os_feature_enabled_impl())
    {
      [(SDAppleIDMutableURLRequest *)v8 setValue:@"true" forHTTPHeaderField:@"X-Apple-I-7F0B-6466-46BF-96B6"];
    }
  }

  return v8;
}

@end