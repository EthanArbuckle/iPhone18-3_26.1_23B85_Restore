@interface NSExtension
+ (void)extensionsWithMatchingPointName:(id)name baseIdentifier:(id)identifier activationRule:(id)rule unwantedActivationRule:(id)activationRule completion:(id)completion;
- (int64_t)processMode;
@end

@implementation NSExtension

+ (void)extensionsWithMatchingPointName:(id)name baseIdentifier:(id)identifier activationRule:(id)rule unwantedActivationRule:(id)activationRule completion:(id)completion
{
  identifierCopy = identifier;
  ruleCopy = rule;
  activationRuleCopy = activationRule;
  completionCopy = completion;
  nameCopy = name;
  v16 = +[NSMutableArray array];
  v30 = NSExtensionPointName;
  v31 = nameCopy;
  v17 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v18 = [v17 mutableCopy];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001F254;
  v24[3] = &unk_1000A1AF8;
  v25 = identifierCopy;
  v26 = ruleCopy;
  v27 = activationRuleCopy;
  v28 = v16;
  v29 = completionCopy;
  v19 = completionCopy;
  v20 = v16;
  v21 = activationRuleCopy;
  v22 = ruleCopy;
  v23 = identifierCopy;
  [NSExtension extensionsWithMatchingAttributes:v18 completion:v24];
}

- (int64_t)processMode
{
  infoDictionary = [(NSExtension *)self infoDictionary];
  v3 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];
  v4 = [v3 objectForKeyedSubscript:@"RPBroadcastProcessMode"];

  v5 = [v4 isEqualToString:@"RPBroadcastProcessModeSampleBuffer"];
  return v5;
}

@end