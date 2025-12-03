@interface FMDExtExtensionHelper
+ (id)_getConnectionForID:(id)d withDelegate:(id)delegate;
+ (id)extensionforFeature:(id)feature flavor:(id)flavor;
+ (id)getAccessoryControllerForFeature:(id)feature flavor:(id)flavor;
+ (id)getAccessoryControllerForFeature:(id)feature flavor:(id)flavor withDelegate:(id)delegate;
+ (id)getAccessoryProxyForId:(id)id withDelegate:(id)delegate;
+ (id)getAllExtensions;
@end

@implementation FMDExtExtensionHelper

+ (id)getAccessoryProxyForId:(id)id withDelegate:(id)delegate
{
  idCopy = id;
  v7 = [self _getConnectionForID:idCopy withDelegate:delegate];
  v8 = v7;
  if (v7)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001804BC;
    v15[3] = &unk_1002CE320;
    v9 = v7;
    v16 = v9;
    v10 = idCopy;
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
      sub_10022B298(idCopy, v13);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_getConnectionForID:(id)d withDelegate:(id)delegate
{
  dCopy = d;
  delegateCopy = delegate;
  v7 = +[FMDExtExtensionsDataSource sharedInstance];
  v8 = [v7 extensionWithIdentifier:dCopy];

  if (v8)
  {
    v9 = [v8 connectWithDelegate:delegateCopy];
  }

  else
  {
    v10 = sub_10000BE38();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022B39C(dCopy, v10);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)getAllExtensions
{
  v2 = +[FMDExtExtensionsDataSource sharedInstance];
  allExtensionIdentifiers = [v2 allExtensionIdentifiers];

  return allExtensionIdentifiers;
}

+ (id)extensionforFeature:(id)feature flavor:(id)flavor
{
  v5 = qword_1003147A8;
  flavorCopy = flavor;
  featureCopy = feature;
  if (v5 != -1)
  {
    sub_10022B414();
  }

  flavorCopy = [NSString stringWithFormat:@"%@__%@", featureCopy, flavorCopy];

  v9 = [qword_1003147A0 objectForKeyedSubscript:flavorCopy];

  return v9;
}

+ (id)getAccessoryControllerForFeature:(id)feature flavor:(id)flavor
{
  featureCopy = feature;
  flavorCopy = flavor;
  v7 = [FMDExtExtensionHelper extensionforFeature:featureCopy flavor:flavorCopy];
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

+ (id)getAccessoryControllerForFeature:(id)feature flavor:(id)flavor withDelegate:(id)delegate
{
  featureCopy = feature;
  flavorCopy = flavor;
  delegateCopy = delegate;
  v10 = [FMDExtExtensionHelper extensionforFeature:featureCopy flavor:flavorCopy];
  if (v10)
  {
    v11 = [FMDExtExtensionHelper getAccessoryProxyForId:v10 withDelegate:delegateCopy];
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