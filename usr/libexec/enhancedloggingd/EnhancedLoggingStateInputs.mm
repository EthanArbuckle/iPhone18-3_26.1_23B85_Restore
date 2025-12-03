@interface EnhancedLoggingStateInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
- (BOOL)validateAndInitializeSpecifications:(id)specifications;
- (EnhancedLoggingStateInputs)initWithParameters:(id)parameters;
@end

@implementation EnhancedLoggingStateInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v26 = 0;
  [(EnhancedLoggingStateInputs *)self setRawParameters:parametersCopy];
  v5 = [parametersCopy dk_numberFromRequiredKey:ELSParameterCommand lowerBound:&off_100046290 upperBound:&off_1000462A8 failed:&v26];
  v6 = v5;
  if ((v26 & 1) == 0 && v5)
  {
    -[EnhancedLoggingStateInputs setCommand:](self, "setCommand:", [v5 integerValue]);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100001EFC;
  v25[3] = &unk_100045030;
  v25[4] = self;
  v7 = objc_retainBlock(v25);
  v8 = [parametersCopy dk_dictionaryFromKey:ELSParameterPrivacyPolicy defaultValue:0 failed:&v26];
  [(EnhancedLoggingStateInputs *)self setTopLevelPrivacyPolicy:v8];

  v9 = [parametersCopy dk_dictionaryFromKey:ELSDefaultDeviceSelectionMap defaultValue:0 failed:&v26];
  [(EnhancedLoggingStateInputs *)self setDeviceSelection:v9];

  v10 = [parametersCopy dk_dictionaryFromKey:ELSParameterPayloadsDict defaultValue:0 failed:&v26];
  [(EnhancedLoggingStateInputs *)self setParameterPayloads:v10];

  v11 = ELSDefaultQueue;
  v12 = [NSSet setWithObject:objc_opt_class()];
  v13 = [parametersCopy dk_arrayFromRequiredKey:v11 types:v12 maxLength:30 failed:&v26 validator:v7];
  [(EnhancedLoggingStateInputs *)self setQueue:v13];

  v14 = ELSDefaultConsentHandles;
  v15 = [NSSet setWithObject:objc_opt_class()];
  v16 = [parametersCopy dk_arrayFromKey:v14 types:v15 maxLength:30 defaultValue:0 failed:&v26 validator:&stru_100045070];
  [(EnhancedLoggingStateInputs *)self setConsentHandles:v16];

  v17 = [parametersCopy dk_numberFromKey:ELSParameterRetries lowerBound:&off_1000462C0 upperBound:&off_1000462D8 defaultValue:&off_1000462F0 failed:&v26];
  v18 = v17;
  if ((v26 & 1) == 0 && v17)
  {
    -[EnhancedLoggingStateInputs setRetries:](self, "setRetries:", [v17 integerValue]);
  }

  v19 = [parametersCopy dk_dictionaryFromKey:ELSDefaultMetadata defaultValue:0 failed:&v26];
  [(EnhancedLoggingStateInputs *)self setMetadata:v19];

  v20 = ELSDefaultFollowUpOptions;
  v21 = [NSSet setWithObjects:ELSFollowUpOptionFrequency, ELSFollowUpOptionUseSpringBoardNotification, 0];
  v22 = [parametersCopy dk_dictionaryFromKey:v20 limitedToKeys:v21 defaultValue:0 failed:&v26];
  [(EnhancedLoggingStateInputs *)self setFollowUpOptions:v22];

  v23 = v26;
  return (v23 & 1) == 0;
}

- (BOOL)validateAndInitializeSpecifications:(id)specifications
{
  v6 = 0;
  v4 = [specifications dk_dictionaryFromKey:ELSParameterPayloadsDict defaultValue:0 failed:&v6];
  [(EnhancedLoggingStateInputs *)self setSpecificationPayloads:v4];

  return (v6 & 1) == 0;
}

- (EnhancedLoggingStateInputs)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = EnhancedLoggingStateInputs;
  v5 = [(EnhancedLoggingStateInputs *)&v12 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [parametersCopy objectForKeyedSubscript:@"parameters"];
  v7 = [parametersCopy objectForKeyedSubscript:@"specifications"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  v8 = [(EnhancedLoggingStateInputs *)v5 validateAndInitializeParameters:v6];
  if (!v8 || !v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    if (v8)
    {
      goto LABEL_10;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v9 = [(EnhancedLoggingStateInputs *)v5 validateAndInitializeSpecifications:v7];

  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_10:
  v10 = v5;
LABEL_12:

  return v10;
}

@end