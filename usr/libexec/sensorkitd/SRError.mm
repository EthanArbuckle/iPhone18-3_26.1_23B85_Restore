@interface SRError
+ (id)authorizationErrorWithStatus:(int64_t)status;
+ (id)errorWithCode:(int64_t)code;
+ (id)errorWithCode:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion underlyingError:(id)error;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)invalidInfoPlistErrorWithMissingKey:(id)key code:(int64_t)code;
@end

@implementation SRError

+ (id)errorWithCode:(int64_t)code
{
  v5 = sub_10002CB34(code);
  if (code == 1)
  {
    v6 = @"SRErrorNoAuthorizationRecovery";
    goto LABEL_5;
  }

  if (code == 2)
  {
    v6 = @"SRErrorDataInaccessibleRecovery";
LABEL_5:
    v7 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v6, &stru_100062328, 0];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return [self errorWithCode:code description:v5 recoverySuggestion:v7];
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error
{
  v7 = sub_10002CB34(code);
  if (code == 1)
  {
    v8 = @"SRErrorNoAuthorizationRecovery";
    goto LABEL_5;
  }

  if (code == 2)
  {
    v8 = @"SRErrorDataInaccessibleRecovery";
LABEL_5:
    v9 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v8, &stru_100062328, 0];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return [self errorWithCode:code description:v7 recoverySuggestion:v9 underlyingError:error];
}

+ (id)errorWithCode:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion underlyingError:(id)error
{
  v10 = [NSMutableDictionary dictionaryWithCapacity:3];
  v11 = v10;
  if (description)
  {
    [(NSMutableDictionary *)v10 setObject:description forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (suggestion)
  {
    [(NSMutableDictionary *)v11 setObject:suggestion forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  if (error)
  {
    [(NSMutableDictionary *)v11 setObject:error forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v12 = SRErrorDomain;

  return [NSError errorWithDomain:v12 code:code userInfo:v11];
}

+ (id)authorizationErrorWithStatus:(int64_t)status
{
  v5 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SRErrorNoAuthorization", &stru_100062328, 0];
  v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SRErrorNoAuthorizationRecovery", &stru_100062328, 0];
  v7 = [self errorWithCode:status];

  return [self errorWithCode:1 description:v5 recoverySuggestion:v6 underlyingError:v7];
}

+ (id)invalidInfoPlistErrorWithMissingKey:(id)key code:(int64_t)code
{
  v6 = [NSString stringWithFormat:@"Your bundle's Info.plist must have an %@ key", key];

  return [self errorWithCode:code description:v6 recoverySuggestion:0];
}

@end