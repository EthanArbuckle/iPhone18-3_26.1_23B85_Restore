@interface KTClientRequest
- (KTClientRequest)initWithType:(unint64_t)type application:(id)application uri:(id)uri accountKey:(id)key serverLoggableDatas:(id)datas;
- (id)addValidateRequest:(id)request dataStore:(id)store error:(id *)error;
@end

@implementation KTClientRequest

- (KTClientRequest)initWithType:(unint64_t)type application:(id)application uri:(id)uri accountKey:(id)key serverLoggableDatas:(id)datas
{
  applicationCopy = application;
  uriCopy = uri;
  keyCopy = key;
  datasCopy = datas;
  v19.receiver = self;
  v19.super_class = KTClientRequest;
  v16 = [(KTClientRequest *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(KTClientRequest *)v16 setType:type];
    [(KTClientRequest *)v17 setApplication:applicationCopy];
    [(KTClientRequest *)v17 setUri:uriCopy];
    [(KTClientRequest *)v17 setAccountKey:keyCopy];
    [(KTClientRequest *)v17 setServerLoggableDatas:datasCopy];
  }

  return v17;
}

- (id)addValidateRequest:(id)request dataStore:(id)store error:(id *)error
{
  requestCopy = request;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100212198;
  v29 = sub_1002121A8;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100212198;
  v23 = sub_1002121A8;
  v24 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002121B0;
  v14[3] = &unk_10032A828;
  v14[4] = self;
  v17 = &v25;
  storeCopy = store;
  v15 = storeCopy;
  v18 = &v19;
  v10 = requestCopy;
  v16 = v10;
  [storeCopy performBlockAndWait:v14];
  if (error)
  {
    v11 = v20[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

@end