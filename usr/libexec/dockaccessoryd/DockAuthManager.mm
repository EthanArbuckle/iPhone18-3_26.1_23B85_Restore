@interface DockAuthManager
- (DockAuthManager)init;
- (void)requestTokenMetadata:(id)metadata tokenUUID:(id)d model:(id)model completionHandler:(id)handler;
@end

@implementation DockAuthManager

- (DockAuthManager)init
{
  v3.receiver = self;
  v3.super_class = DockAuthManager;
  return [(DockAuthManager *)&v3 init];
}

- (void)requestTokenMetadata:(id)metadata tokenUUID:(id)d model:(id)model completionHandler:(id)handler
{
  modelCopy = model;
  handlerCopy = handler;
  dCopy = d;
  metadataCopy = metadata;
  v13 = +[NSLocale currentLocale];
  if (modelCopy)
  {
    v20 = @"model";
    v21 = modelCopy;
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = +[MFAATokenManager sharedManager];
  uUIDString = [dCopy UUIDString];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008F198;
  v18[3] = &unk_100274A78;
  v19 = handlerCopy;
  v17 = handlerCopy;
  [v15 requestMetadataForAuthToken:metadataCopy withUUID:uUIDString requestedLocale:v13 requestInfo:v14 completionHandler:v18];
}

@end