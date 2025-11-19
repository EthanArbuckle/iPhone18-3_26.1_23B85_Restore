@interface SRError
+ (id)authorizationErrorWithStatus:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3 description:(id)a4 recoverySuggestion:(id)a5 underlyingError:(id)a6;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)invalidInfoPlistErrorWithMissingKey:(id)a3 code:(int64_t)a4;
@end

@implementation SRError

+ (id)errorWithCode:(int64_t)a3
{
  v5 = sub_10002CB34(a3);
  if (a3 == 1)
  {
    v6 = @"SRErrorNoAuthorizationRecovery";
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v6 = @"SRErrorDataInaccessibleRecovery";
LABEL_5:
    v7 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v6, &stru_100062328, 0];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return [a1 errorWithCode:a3 description:v5 recoverySuggestion:v7];
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v7 = sub_10002CB34(a3);
  if (a3 == 1)
  {
    v8 = @"SRErrorNoAuthorizationRecovery";
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v8 = @"SRErrorDataInaccessibleRecovery";
LABEL_5:
    v9 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v8, &stru_100062328, 0];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return [a1 errorWithCode:a3 description:v7 recoverySuggestion:v9 underlyingError:a4];
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4 recoverySuggestion:(id)a5 underlyingError:(id)a6
{
  v10 = [NSMutableDictionary dictionaryWithCapacity:3];
  v11 = v10;
  if (a4)
  {
    [(NSMutableDictionary *)v10 setObject:a4 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (a5)
  {
    [(NSMutableDictionary *)v11 setObject:a5 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  if (a6)
  {
    [(NSMutableDictionary *)v11 setObject:a6 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v12 = SRErrorDomain;

  return [NSError errorWithDomain:v12 code:a3 userInfo:v11];
}

+ (id)authorizationErrorWithStatus:(int64_t)a3
{
  v5 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SRErrorNoAuthorization", &stru_100062328, 0];
  v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SRErrorNoAuthorizationRecovery", &stru_100062328, 0];
  v7 = [a1 errorWithCode:a3];

  return [a1 errorWithCode:1 description:v5 recoverySuggestion:v6 underlyingError:v7];
}

+ (id)invalidInfoPlistErrorWithMissingKey:(id)a3 code:(int64_t)a4
{
  v6 = [NSString stringWithFormat:@"Your bundle's Info.plist must have an %@ key", a3];

  return [a1 errorWithCode:a4 description:v6 recoverySuggestion:0];
}

@end