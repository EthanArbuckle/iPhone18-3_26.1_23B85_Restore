@interface NSExtension
+ (void)extensionsWithMatchingPointName:(id)a3 baseIdentifier:(id)a4 activationRule:(id)a5 unwantedActivationRule:(id)a6 completion:(id)a7;
- (int64_t)processMode;
@end

@implementation NSExtension

+ (void)extensionsWithMatchingPointName:(id)a3 baseIdentifier:(id)a4 activationRule:(id)a5 unwantedActivationRule:(id)a6 completion:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = +[NSMutableArray array];
  v30 = NSExtensionPointName;
  v31 = v15;
  v17 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v18 = [v17 mutableCopy];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001F254;
  v24[3] = &unk_1000A1AF8;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v16;
  v29 = v14;
  v19 = v14;
  v20 = v16;
  v21 = v13;
  v22 = v12;
  v23 = v11;
  [NSExtension extensionsWithMatchingAttributes:v18 completion:v24];
}

- (int64_t)processMode
{
  v2 = [(NSExtension *)self infoDictionary];
  v3 = [v2 objectForKeyedSubscript:@"NSExtension"];
  v4 = [v3 objectForKeyedSubscript:@"RPBroadcastProcessMode"];

  v5 = [v4 isEqualToString:@"RPBroadcastProcessModeSampleBuffer"];
  return v5;
}

@end