@interface DockAuthManager
- (DockAuthManager)init;
- (void)requestTokenMetadata:(id)a3 tokenUUID:(id)a4 model:(id)a5 completionHandler:(id)a6;
@end

@implementation DockAuthManager

- (DockAuthManager)init
{
  v3.receiver = self;
  v3.super_class = DockAuthManager;
  return [(DockAuthManager *)&v3 init];
}

- (void)requestTokenMetadata:(id)a3 tokenUUID:(id)a4 model:(id)a5 completionHandler:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = +[NSLocale currentLocale];
  if (v9)
  {
    v20 = @"model";
    v21 = v9;
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = +[MFAATokenManager sharedManager];
  v16 = [v11 UUIDString];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008F198;
  v18[3] = &unk_100274A78;
  v19 = v10;
  v17 = v10;
  [v15 requestMetadataForAuthToken:v12 withUUID:v16 requestedLocale:v13 requestInfo:v14 completionHandler:v18];
}

@end