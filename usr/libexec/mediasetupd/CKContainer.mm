@interface CKContainer
+ (id)MSDCloudKitContainer;
+ (id)MSDPublicCloudKitContainer;
- (void)acceptShareWithShareMetadata:(id)a3 completion:(id)a4;
- (void)fetchShareMetadataForShareURL:(id)a3 withShareToken:(id)a4 completion:(id)a5;
@end

@implementation CKContainer

+ (id)MSDCloudKitContainer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023B20;
  block[3] = &unk_1000508C0;
  block[4] = a1;
  if (qword_100059AB0 != -1)
  {
    dispatch_once(&qword_100059AB0, block);
  }

  v2 = qword_100059AA8;

  return v2;
}

+ (id)MSDPublicCloudKitContainer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023C8C;
  block[3] = &unk_1000508C0;
  block[4] = a1;
  if (qword_100059AC0 != -1)
  {
    dispatch_once(&qword_100059AC0, block);
  }

  v2 = qword_100059AB8;

  return v2;
}

- (void)acceptShareWithShareMetadata:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100030FE4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315395;
    v23 = "[CKContainer(MSDCloudDataContainer) acceptShareWithShareMetadata:completion:]";
    v24 = 2113;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s shareMetaData %{private}@", buf, 0x16u);
  }

  if (v6)
  {
    v9 = [CKAcceptSharesOperation alloc];
    v19 = v6;
    v10 = [NSArray arrayWithObjects:&v19 count:1];
    v11 = [v9 initWithShareMetadatas:v10];

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100023F68;
    v17 = &unk_100051F08;
    v18 = v7;
    [v11 setPerShareCompletionBlock:&v14];
    [v11 setQualityOfService:{17, v14, v15, v16, v17}];
    [(CKContainer *)self addOperation:v11];
    v12 = v18;
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v13 = MSErrorDomain;
    v20 = MSUserInfoErrorStringKey;
    v21 = @"Failed to accept share for Nil ShareMetaData";
    v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v12 = [NSError errorWithDomain:v13 code:1 userInfo:v11];
    (*(v7 + 2))(v7, 0, v12);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)fetchShareMetadataForShareURL:(id)a3 withShareToken:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100030FE4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315651;
    v28 = "[CKContainer(MSDCloudDataContainer) fetchShareMetadataForShareURL:withShareToken:completion:]";
    v29 = 2113;
    v30 = v8;
    v31 = 2113;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s URL %{private}@ shareToken  %{private}@", buf, 0x20u);
  }

  if (v8)
  {
    v12 = [CKFetchShareMetadataOperation alloc];
    if (v9)
    {
      v24 = v8;
      v13 = [NSArray arrayWithObjects:&v24 count:1];
      v22 = v8;
      v23 = v9;
      v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v15 = [v12 initWithShareURLs:v13 invitationTokensByShareURL:v14];
    }

    else
    {
      v21 = v8;
      v13 = [NSArray arrayWithObjects:&v21 count:1];
      v15 = [v12 initWithShareURLs:v13];
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000242FC;
    v19[3] = &unk_100051F30;
    v20 = v10;
    [v15 setPerShareMetadataBlock:v19];
    [v15 setFetchShareMetadataCompletionBlock:&stru_100051F50];
    [v15 setQualityOfService:17];
    [(CKContainer *)self addOperation:v15];
    v18 = v20;
    goto LABEL_12;
  }

  v16 = sub_100030FE4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000244C8(v16);
  }

  if (v10)
  {
    v17 = MSErrorDomain;
    v25 = MSUserInfoErrorStringKey;
    v26 = @"Failed to fetchShareMetadata for Nil Share URL";
    v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [NSError errorWithDomain:v17 code:1 userInfo:v15];
    (*(v10 + 2))(v10, 0, v18);
LABEL_12:
  }
}

@end