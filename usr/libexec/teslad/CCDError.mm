@interface CCDError
+ (id)_cloudConfigErrorResponses;
+ (id)_errorStringForResponse:(id)response;
+ (id)badFormatError;
+ (id)cleanNSError:(id)error;
+ (id)cloudConfigErrorInResponse:(id)response;
+ (id)deviceAlreadyEnrolledError;
+ (id)deviceNotEnrolledError;
+ (id)deviceNotFoundError;
+ (id)errorWithDomain:(id)domain code:(int64_t)code description:(id)description underlyingError:(id)error errorType:(id)type;
+ (id)internalErrorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)invalidDeviceError;
+ (id)invalidProfileError;
+ (id)invalidSignatureError;
+ (id)maxRetriesExceededErrorWithUnderlyingError:(id)error;
+ (id)nonceExpiredError;
+ (id)profileNotActiveError;
+ (id)profileNotFoundError;
+ (id)serverTrustError;
+ (id)serviceBusyError;
+ (id)teslaServiceDownError;
@end

@implementation CCDError

+ (id)errorWithDomain:(id)domain code:(int64_t)code description:(id)description underlyingError:(id)error errorType:(id)type
{
  domainCopy = domain;
  descriptionCopy = description;
  errorCopy = error;
  typeCopy = type;
  v16 = +[NSMutableDictionary dictionary];
  v17 = v16;
  if (descriptionCopy)
  {
    [v16 setObject:descriptionCopy forKey:NSLocalizedDescriptionKey];
    if (!typeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"Unknown error" value:&stru_10001DC98 table:0];
  [v17 setObject:v22 forKey:NSLocalizedDescriptionKey];

  if (typeCopy)
  {
LABEL_3:
    [v17 setObject:typeCopy forKey:@"CloudConfigurationErrorType"];
  }

LABEL_4:
  if (errorCopy)
  {
    v18 = [self cleanNSError:errorCopy];
    [v17 setObject:v18 forKey:NSUnderlyingErrorKey];
  }

  v19 = [NSError errorWithDomain:domainCopy code:code userInfo:v17];

  return v19;
}

+ (id)internalErrorWithCode:(int64_t)code underlyingError:(id)error
{
  errorCopy = error;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"The device failed to request configuration from the cloud." value:&stru_10001DC98 table:0];
  v9 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:code description:v8 underlyingError:errorCopy errorType:@"CloudConfigurationFatalError"];

  return v9;
}

+ (id)badFormatError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"The cloud configuration for this device is invalid." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:34003 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)maxRetriesExceededErrorWithUnderlyingError:(id)error
{
  errorCopy = error;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"The cloud configuration server is unavailable." value:&stru_10001DC98 table:0];
  v7 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:34006 description:v6 underlyingError:errorCopy errorType:@"CloudConfigurationFatalError"];

  return v7;
}

+ (id)invalidDeviceError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"The cloud configuration service could not verify the identity of this device." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:33023 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)teslaServiceDownError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"The cloud configuration server is unavailable or busy." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:34004 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)serviceBusyError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"The cloud configuration server is busy. Please try again later." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:34005 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)serverTrustError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"The cloud configuration server could not be verified." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:34008 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)invalidSignatureError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Invalid signature." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:33016 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)invalidProfileError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Invalid Device Enrollment Program configuration." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:33002 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)profileNotActiveError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Device Enrollment Program configuration is not active." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:33017 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)profileNotFoundError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Device Enrollment Program configuration can not be found." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:33024 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)deviceNotFoundError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Device can not be found." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:33025 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)deviceAlreadyEnrolledError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"This device is already enrolled in the Device Enrollment Program." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:33018 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)deviceNotEnrolledError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"This device is not enrolled in the Device Enrollment Program." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:33005 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)nonceExpiredError
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Nonce expired." value:&stru_10001DC98 table:0];
  v5 = [self errorWithDomain:@"MCCloudConfigurationErrorDomain" code:33014 description:v4 underlyingError:0 errorType:@"CloudConfigurationFatalError"];

  return v5;
}

+ (id)_errorStringForResponse:(id)response
{
  responseCopy = response;
  if (responseCopy && (v4 = [[NSString alloc] initWithData:responseCopy encoding:4]) != 0)
  {
    v5 = v4;
    v6 = +[NSCharacterSet whitespaceCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];

    v8 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error response for request: %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)cloudConfigErrorInResponse:(id)response
{
  v4 = [self _errorStringForResponse:response];
  _cloudConfigErrorResponses = [self _cloudConfigErrorResponses];
  v6 = [_cloudConfigErrorResponses objectForKeyedSubscript:v4];

  return v6;
}

+ (id)_cloudConfigErrorResponses
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007834;
  block[3] = &unk_10001C670;
  block[4] = self;
  if (qword_100025A90 != -1)
  {
    dispatch_once(&qword_100025A90, block);
  }

  v2 = qword_100025A98;

  return v2;
}

+ (id)cleanNSError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    v18 = 0;
    goto LABEL_23;
  }

  userInfo = [errorCopy userInfo];

  if (!userInfo)
  {
    v18 = v4;
    goto LABEL_23;
  }

  v6 = +[NSMutableDictionary dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  userInfo2 = [v4 userInfo];
  allKeys = [userInfo2 allKeys];

  v9 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  v11 = *v22;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(allKeys);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      userInfo3 = [v4 userInfo];
      v15 = [userInfo3 objectForKeyedSubscript:v13];

      if ([v13 isEqualToString:NSUnderlyingErrorKey])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_15;
        }

        v16 = [self cleanNSError:v15];

        v15 = v16;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      if (!v15)
      {
        continue;
      }

      [v6 setObject:v15 forKeyedSubscript:v13];
LABEL_15:
    }

    v10 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v10);
LABEL_18:

  if (![v6 count])
  {

    v6 = 0;
  }

  domain = [v4 domain];
  v18 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v4 code], v6);

LABEL_23:

  return v18;
}

@end