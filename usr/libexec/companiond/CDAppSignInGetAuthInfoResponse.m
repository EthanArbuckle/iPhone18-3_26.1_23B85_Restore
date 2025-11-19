@interface CDAppSignInGetAuthInfoResponse
- (CDAppSignInGetAuthInfoResponse)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDAppSignInGetAuthInfoResponse

- (CDAppSignInGetAuthInfoResponse)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = CDAppSignInGetAuthInfoResponse;
  v5 = [(CDAppSignInGetAuthInfoResponse *)&v53 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [NSSet setWithObject:v6];
    v9 = sub_100017500(v7, @"appleIDRequest", v8);

    appleIDRequest = v5->_appleIDRequest;
    v5->_appleIDRequest = v9;

    v11 = objc_opt_self();
    v12 = v7;
    v13 = [NSSet setWithObject:v11];
    v14 = sub_100017500(v12, @"passwordRequest", v13);

    passwordRequest = v5->_passwordRequest;
    v5->_passwordRequest = v14;

    v16 = objc_opt_self();
    v17 = v12;
    v18 = [NSSet setWithObject:v16];
    v19 = sub_100017500(v17, @"webRequest", v18);

    webRequest = v5->_webRequest;
    v5->_webRequest = v19;

    v21 = objc_opt_self();
    v22 = v17;
    v23 = [NSSet setWithObject:v21];
    v24 = sub_100017500(v22, @"platformKeyCredentialAssertionOptions", v23);

    platformKeyCredentialAssertionOptions = v5->_platformKeyCredentialAssertionOptions;
    v5->_platformKeyCredentialAssertionOptions = v24;

    v26 = objc_opt_self();
    v27 = v22;
    v28 = [NSSet setWithObject:v26];
    v29 = sub_100017500(v27, @"platformKeyCredentialRegistrationOptions", v28);

    platformKeyCredentialRegistrationOptions = v5->_platformKeyCredentialRegistrationOptions;
    v5->_platformKeyCredentialRegistrationOptions = v29;

    CFStringGetTypeID();
    v31 = [CFDictionaryGetTypedValue() copy];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v31;

    CFStringGetTypeID();
    v33 = [CFDictionaryGetTypedValue() copy];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v33;

    CFStringGetTypeID();
    v35 = [CFDictionaryGetTypedValue() copy];
    appTeamIdentifier = v5->_appTeamIdentifier;
    v5->_appTeamIdentifier = v35;

    CFStringGetTypeID();
    v37 = [CFDictionaryGetTypedValue() copy];
    appName = v5->_appName;
    v5->_appName = v37;

    CFDataGetTypeID();
    v39 = [CFDictionaryGetTypedValue() copy];
    appIconData = v5->_appIconData;
    v5->_appIconData = v39;

    v41 = NSDictionaryGetNSNumber();
    v42 = [v41 copy];
    appIconScale = v5->_appIconScale;
    v5->_appIconScale = v42;

    v44 = objc_opt_self();
    v45 = NSDictionaryGetNSArrayOfClass();
    v46 = [v45 copy];
    appDomains = v5->_appDomains;
    v5->_appDomains = v46;

    CFStringGetTypeID();
    v48 = [CFDictionaryGetTypedValue() copy];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = v48;

    CFStringGetTypeID();
    v50 = [CFDictionaryGetTypedValue() copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v50;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = sub_1000129F0(self->_appleIDRequest);
  [v3 setObject:v4 forKeyedSubscript:@"appleIDRequest"];

  v5 = sub_1000129F0(self->_passwordRequest);
  [v3 setObject:v5 forKeyedSubscript:@"passwordRequest"];

  v6 = sub_1000129F0(self->_webRequest);
  [v3 setObject:v6 forKeyedSubscript:@"webRequest"];

  v7 = sub_1000129F0(self->_platformKeyCredentialAssertionOptions);
  [v3 setObject:v7 forKeyedSubscript:@"platformKeyCredentialAssertionOptions"];

  v8 = sub_1000129F0(self->_platformKeyCredentialRegistrationOptions);
  [v3 setObject:v8 forKeyedSubscript:@"platformKeyCredentialRegistrationOptions"];

  [v3 setObject:self->_appIdentifier forKeyedSubscript:@"appID"];
  [v3 setObject:self->_appBundleIdentifier forKeyedSubscript:@"appBundleID"];
  [v3 setObject:self->_appTeamIdentifier forKeyedSubscript:@"appTeamID"];
  [v3 setObject:self->_appName forKeyedSubscript:@"appName"];
  [v3 setObject:self->_appIconData forKeyedSubscript:@"appIconData"];
  [v3 setObject:self->_appIconScale forKeyedSubscript:@"appIconScale"];
  [v3 setObject:self->_appDomains forKeyedSubscript:@"appDomains"];
  [v3 setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  v9 = [v3 copy];

  return v9;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_appleIDRequest withName:@"appleIDRequest" skipIfNil:1];
  v5 = [v3 appendObject:self->_passwordRequest withName:@"passwordRequest" skipIfNil:1];
  v6 = [v3 appendObject:self->_webRequest withName:@"webRequest" skipIfNil:1];
  v7 = [v3 appendObject:self->_platformKeyCredentialAssertionOptions withName:@"platformKeyCredentialAssertionOptions" skipIfNil:1];
  v8 = [v3 appendObject:self->_platformKeyCredentialRegistrationOptions withName:@"platformKeyCredentialRegistrationOptions" skipIfNil:1];
  [v3 appendString:self->_appIdentifier withName:@"appIdentifier" skipIfEmpty:1];
  [v3 appendString:self->_appBundleIdentifier withName:@"appBundleIdentifier" skipIfEmpty:1];
  [v3 appendString:self->_appTeamIdentifier withName:@"appTeamIdentifier" skipIfEmpty:1];
  [v3 appendString:self->_appName withName:@"appName" skipIfEmpty:1];
  v9 = [v3 appendObject:self->_appIconData withName:@"appIconData" skipIfNil:1];
  v10 = [v3 appendObject:self->_appIconScale withName:@"appIconScale" skipIfNil:1];
  v11 = [v3 appendObject:self->_appDomains withName:@"appDomains" skipIfNil:1];
  [v3 appendString:self->_deviceClass withName:@"deviceClass" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  v12 = [v3 build];

  return v12;
}

@end