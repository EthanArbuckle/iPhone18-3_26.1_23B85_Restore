@interface FMDExtExtensionsDataSource
+ (id)_allowedExtensionsIDForDataSource;
+ (id)sharedInstance;
- (FMDExtExtensionsDataSource)init;
- (id)allExtensionIdentifiers;
- (id)extensionWithIdentifier:(id)identifier;
- (void)endDiscoveringExtensions;
- (void)startDiscoveringExtensionsWithCompletion:(id)completion;
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

- (void)startDiscoveringExtensionsWithCompletion:(id)completion
{
  completionCopy = completion;
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
  selfCopy = self;
  v15 = completionCopy;
  v8 = completionCopy;
  v9 = [NSExtension beginMatchingExtensionsWithAttributes:v7 completion:&v10];
  [(FMDExtExtensionsDataSource *)self setExtensionMatchToken:v9, v10, v11, v12, v13, selfCopy];
}

- (void)endDiscoveringExtensions
{
  extensionMatchToken = [(FMDExtExtensionsDataSource *)self extensionMatchToken];

  if (extensionMatchToken)
  {
    extensionMatchToken2 = [(FMDExtExtensionsDataSource *)self extensionMatchToken];
    [NSExtension endMatchingExtensions:extensionMatchToken2];

    [(FMDExtExtensionsDataSource *)self setExtensionMatchToken:0];
  }
}

- (id)extensionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  extensions = [(FMDExtExtensionsDataSource *)self extensions];
  v6 = [extensions objectForKey:identifierCopy];

  return v6;
}

- (id)allExtensionIdentifiers
{
  extensions = [(FMDExtExtensionsDataSource *)self extensions];
  allKeys = [extensions allKeys];

  return allKeys;
}

@end