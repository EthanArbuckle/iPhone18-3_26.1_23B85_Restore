@interface CertificateRevocationList
+ (id)getCertificateRevocationListObject;
- (CertificateRevocationList)init;
- (int)fetchCertificateRevocationList:(BOOL)list :(BOOL)a4;
- (void)downloadAsset:(BOOL)asset :(id)a4 then:(id)then;
- (void)downloadCertificateRevocationList:(BOOL)list :(BOOL)a4 :(id)a5;
- (void)processDownloadedAsset:(id)asset then:(id)then;
- (void)queryCertificateRevocationList:(BOOL)list :(BOOL)a4 :(id)a5;
@end

@implementation CertificateRevocationList

- (CertificateRevocationList)init
{
  v4.receiver = self;
  v4.super_class = CertificateRevocationList;
  v2 = [(CertificateRevocationList *)&v4 init];
  if (v2)
  {
    [(CertificateRevocationList *)v2 setConditionLock:objc_alloc_init(NSCondition)];
    [(CertificateRevocationList *)v2 setCatalogAvailable:0];
    [(CertificateRevocationList *)v2 setDispatchQueue:dispatch_queue_create("CoreLSKDMobileAssetQueue", 0)];
  }

  return v2;
}

- (void)downloadAsset:(BOOL)asset :(id)a4 then:(id)then
{
  assetCopy = asset;
  v9 = objc_opt_new();
  v10 = v9;
  if (assetCopy)
  {
    [v9 setTimeoutIntervalForResource:60];
  }

  [v10 setDiscretionary:0];
  state = [a4 state];
  if (state <= 5)
  {
    if (((1 << state) & 0x2C) != 0)
    {

      [(CertificateRevocationList *)self processDownloadedAsset:a4 then:then];
      return;
    }

    if (((1 << state) & 0x12) != 0)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3254779904;
      v13[2] = sub_100001350;
      v13[3] = &unk_101314220;
      v13[4] = self;
      v13[5] = a4;
      v13[6] = then;
      [a4 startDownload:v10 then:v13];
      return;
    }
  }

  v12 = *(then + 2);

  v12(then, 4294924391);
}

- (void)processDownloadedAsset:(id)asset then:(id)then
{
  sub_100B37FA0([objc_msgSend(objc_msgSend(asset "getLocalUrl")]);
  v6 = *(then + 2);

  v6(then, v5);
}

- (void)queryCertificateRevocationList:(BOOL)list :(BOOL)a4 :(id)a5
{
  v5 = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3254779904;
  v9[2] = sub_100001588;
  v9[3] = &unk_101314250;
  v9[4] = a5;
  v7[3] = &unk_101314280;
  v7[4] = self;
  v7[5] = v9;
  listCopy = list;
  v6 = [[MAAssetQuery alloc] initWithType:{@"com.apple.MobileAsset.AppleKeyServicesCRL2", _NSConcreteStackBlock, 3254779904}];
  [v6 setDoNotBlockBeforeFirstUnlock:1];
  [v6 returnTypes:2];
  (sub_1000015B4)(v7, v6, [v6 queryMetaDataSync], v5);
}

- (void)downloadCertificateRevocationList:(BOOL)list :(BOOL)a4 :(id)a5
{
  v9 = objc_opt_new();
  [v9 setTimeoutIntervalForResource:30];
  [v9 setDiscretionary:0];
  [v9 setCanUseLocalCacheServer:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3254779904;
  v10[2] = sub_1000018C8;
  v10[3] = &unk_1013142B0;
  listCopy = list;
  v12 = a4;
  v10[4] = self;
  v10[5] = a5;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.AppleKeyServicesCRL2" options:v9 then:v10];
}

- (int)fetchCertificateRevocationList:(BOOL)list :(BOOL)a4
{
  v4 = a4;
  listCopy = list;
  objc_sync_enter(self);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -42905;
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3254779904;
    v9[2] = sub_1000019F0;
    v9[3] = &unk_1013142E0;
    v9[4] = &v10;
    [(CertificateRevocationList *)self queryCertificateRevocationList:listCopy];
  }

  else
  {
    [(CertificateRevocationList *)self downloadCertificateRevocationList:listCopy];
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  objc_sync_exit(self);
  return v7;
}

+ (id)getCertificateRevocationListObject
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = sub_100001ACC;
  block[3] = &unk_101314350;
  block[4] = self;
  if (qword_101361D40 != -1)
  {
    dispatch_once(&qword_101361D40, block);
  }

  return qword_101361D38;
}

@end