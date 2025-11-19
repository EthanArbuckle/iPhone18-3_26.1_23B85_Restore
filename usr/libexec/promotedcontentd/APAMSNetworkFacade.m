@interface APAMSNetworkFacade
+ (id)dataTaskWithRequest:(id)a3;
+ (id)encodeUrlRequest:(id)a3;
+ (uint64_t)prewarm;
- (APAMSNetworkFacade)init;
@end

@implementation APAMSNetworkFacade

+ (uint64_t)prewarm
{
  if (qword_1004DD708 != -1)
  {
    swift_once();
  }

  v0 = sub_100398CA8();
  sub_10000351C(v0, qword_1004DE600);
  v1 = sub_100398C88();
  v2 = sub_1003993F8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[APAMSNetworkFacade] Prewarming AMSNetworkFacade", v3, 2u);
  }

  v4 = [objc_opt_self() processInfo];
  [v4 isRunningTests];

  if (qword_1004DD700 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (qword_1004DD8C8)
  {
    sub_100003554(&xmmword_1004DD8B0, v8);
    v6 = v9;
    v7 = v10;
    sub_1000035B8(v8, v9);
    (*(v7 + 8))(v6, v7);
    swift_unknownObjectRelease();
    return sub_100003894(v8);
  }

  return result;
}

+ (id)encodeUrlRequest:(id)a3
{
  v3 = sub_100397068();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100397048();
  v7 = _sSo18APAMSNetworkFacadeC21MediaServiceInterfaceE6encodeySo10AMSPromiseCySo13AMSURLRequestCG10Foundation10URLRequestVFZ_0();
  (*(v4 + 8))(v6, v3);

  return v7;
}

+ (id)dataTaskWithRequest:(id)a3
{
  v3 = a3;
  v4 = _sSo18APAMSNetworkFacadeC21MediaServiceInterfaceE8dataTask4withSo10AMSPromiseCySo12AMSURLResultCGSo13AMSURLRequestC_tFZ_0(v3);

  return v4;
}

- (APAMSNetworkFacade)init
{
  v3.receiver = self;
  v3.super_class = APAMSNetworkFacade;
  return [(APAMSNetworkFacade *)&v3 init];
}

@end