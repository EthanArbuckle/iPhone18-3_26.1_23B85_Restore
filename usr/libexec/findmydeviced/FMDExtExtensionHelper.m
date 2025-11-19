@interface FMDExtExtensionHelper
+ (id)_getConnectionForID:(id)a3 withDelegate:(id)a4;
+ (id)extensionforFeature:(id)a3 flavor:(id)a4;
+ (id)getAccessoryControllerForFeature:(id)a3 flavor:(id)a4;
+ (id)getAccessoryControllerForFeature:(id)a3 flavor:(id)a4 withDelegate:(id)a5;
+ (id)getAccessoryProxyForId:(id)a3 withDelegate:(id)a4;
+ (id)getAllExtensions;
@end

@implementation FMDExtExtensionHelper

+ (id)getAccessoryProxyForId:(id)a3 withDelegate:(id)a4
{
  v6 = a3;
  v7 = [a1 _getConnectionForID:v6 withDelegate:a4];
  v8 = v7;
  if (v7)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001804BC;
    v15[3] = &unk_1002CE320;
    v9 = v7;
    v16 = v9;
    v10 = v6;
    v17 = v10;
    v11 = [v9 remoteObjectProxyWithErrorHandler:v15];
    v12 = sub_10000BE38();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v19 = v11;
      v20 = 2048;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Created new remoteObjectProxy %p with connection %p for extensionId = %@", buf, 0x20u);
    }

    v13 = v16;
  }

  else
  {
    v13 = sub_10000BE38();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022B298(v6, v13);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_getConnectionForID:(id)a3 withDelegate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[FMDExtExtensionsDataSource sharedInstance];
  v8 = [v7 extensionWithIdentifier:v5];

  if (v8)
  {
    v9 = [v8 connectWithDelegate:v6];
  }

  else
  {
    v10 = sub_10000BE38();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022B39C(v5, v10);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)getAllExtensions
{
  v2 = +[FMDExtExtensionsDataSource sharedInstance];
  v3 = [v2 allExtensionIdentifiers];

  return v3;
}

+ (id)extensionforFeature:(id)a3 flavor:(id)a4
{
  v5 = qword_1003147A8;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    sub_10022B414();
  }

  v8 = [NSString stringWithFormat:@"%@__%@", v7, v6];

  v9 = [qword_1003147A0 objectForKeyedSubscript:v8];

  return v9;
}

+ (id)getAccessoryControllerForFeature:(id)a3 flavor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [FMDExtExtensionHelper extensionforFeature:v5 flavor:v6];
  if (v7)
  {
    v8 = [FMDExtExtensionHelper getAccessoryProxyForId:v7 withDelegate:0];
  }

  else
  {
    v9 = sub_10000BE38();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022B428();
    }

    v8 = 0;
  }

  return v8;
}

+ (id)getAccessoryControllerForFeature:(id)a3 flavor:(id)a4 withDelegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [FMDExtExtensionHelper extensionforFeature:v7 flavor:v8];
  if (v10)
  {
    v11 = [FMDExtExtensionHelper getAccessoryProxyForId:v10 withDelegate:v9];
    if (v11)
    {
      goto LABEL_9;
    }

    v12 = sub_10000BE38();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022B498();
    }
  }

  else
  {
    v12 = sub_10000BE38();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022B428();
    }

    v11 = 0;
  }

LABEL_9:

  return v11;
}

@end