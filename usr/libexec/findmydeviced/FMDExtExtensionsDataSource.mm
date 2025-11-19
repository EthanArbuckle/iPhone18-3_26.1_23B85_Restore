@interface FMDExtExtensionsDataSource
+ (id)_allowedExtensionsIDForDataSource;
+ (id)sharedInstance;
- (FMDExtExtensionsDataSource)init;
- (id)allExtensionIdentifiers;
- (id)extensionWithIdentifier:(id)a3;
- (void)endDiscoveringExtensions;
- (void)startDiscoveringExtensionsWithCompletion:(id)a3;
@end

@implementation FMDExtExtensionsDataSource

+ (id)sharedInstance
{
  if (qword_100314510 != -1)
  {
    sub_10022655C();
  }

  v3 = qword_100314508;

  return v3;
}

- (FMDExtExtensionsDataSource)init
{
  v11.receiver = self;
  v11.super_class = FMDExtExtensionsDataSource;
  v2 = [(FMDExtExtensionsDataSource *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    extensions = v2->_extensions;
    v2->_extensions = v3;

    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100137DA0;
    v9[3] = &unk_1002CD868;
    v10 = v5;
    v6 = v5;
    [(FMDExtExtensionsDataSource *)v2 startDiscoveringExtensionsWithCompletion:v9];
    v7 = dispatch_time(0, 2000000000);
    dispatch_group_wait(v6, v7);
  }

  return v2;
}

+ (id)_allowedExtensionsIDForDataSource
{
  if (qword_100314520 != -1)
  {
    sub_100226570();
  }

  v3 = qword_100314518;

  return v3;
}

- (void)startDiscoveringExtensionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[FMDExtExtensionsDataSource _allowedExtensionsIDForDataSource];
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "starting to find extensions allowedExtensions = %@", buf, 0xCu);
  }

  v16 = NSExtensionPointName;
  v17 = @"com.apple.icloud.FindMyDevice.Accessories";
  v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100137FFC;
  v13 = &unk_1002CD8D8;
  v14 = self;
  v15 = v4;
  v8 = v4;
  v9 = [NSExtension beginMatchingExtensionsWithAttributes:v7 completion:&v10];
  [(FMDExtExtensionsDataSource *)self setExtensionMatchToken:v9, v10, v11, v12, v13, v14];
}

- (void)endDiscoveringExtensions
{
  v3 = [(FMDExtExtensionsDataSource *)self extensionMatchToken];

  if (v3)
  {
    v4 = [(FMDExtExtensionsDataSource *)self extensionMatchToken];
    [NSExtension endMatchingExtensions:v4];

    [(FMDExtExtensionsDataSource *)self setExtensionMatchToken:0];
  }
}

- (id)extensionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(FMDExtExtensionsDataSource *)self extensions];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)allExtensionIdentifiers
{
  v2 = [(FMDExtExtensionsDataSource *)self extensions];
  v3 = [v2 allKeys];

  return v3;
}

@end