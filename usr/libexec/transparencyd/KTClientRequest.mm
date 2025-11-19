@interface KTClientRequest
- (KTClientRequest)initWithType:(unint64_t)a3 application:(id)a4 uri:(id)a5 accountKey:(id)a6 serverLoggableDatas:(id)a7;
- (id)addValidateRequest:(id)a3 dataStore:(id)a4 error:(id *)a5;
@end

@implementation KTClientRequest

- (KTClientRequest)initWithType:(unint64_t)a3 application:(id)a4 uri:(id)a5 accountKey:(id)a6 serverLoggableDatas:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = KTClientRequest;
  v16 = [(KTClientRequest *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(KTClientRequest *)v16 setType:a3];
    [(KTClientRequest *)v17 setApplication:v12];
    [(KTClientRequest *)v17 setUri:v13];
    [(KTClientRequest *)v17 setAccountKey:v14];
    [(KTClientRequest *)v17 setServerLoggableDatas:v15];
  }

  return v17;
}

- (id)addValidateRequest:(id)a3 dataStore:(id)a4 error:(id *)a5
{
  v8 = a3;
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
  v9 = a4;
  v15 = v9;
  v18 = &v19;
  v10 = v8;
  v16 = v10;
  [v9 performBlockAndWait:v14];
  if (a5)
  {
    v11 = v20[5];
    if (v11)
    {
      *a5 = v11;
    }
  }

  v12 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

@end