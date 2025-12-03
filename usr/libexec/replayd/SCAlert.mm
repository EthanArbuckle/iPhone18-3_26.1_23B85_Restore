@interface SCAlert
+ (BOOL)showAlertWithTitle:(id)title bodyText:(id)text defaultButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText url:(id)url requireReponse:(BOOL)reponse imageURL:(id)l;
+ (BOOL)showLegacyAPIAlertWithBundleID:(id)d;
+ (BOOL)showPresenterOverlayPrivacyAlertWithBundleID:(id)d;
+ (id)privacyHintUserInfoForBundleID:(id)d identifier:(id)identifier count:(int64_t)count days:(int64_t)days;
+ (void)userAcknowledgementAlertWithBundleID:(id)d;
@end

@implementation SCAlert

+ (void)userAcknowledgementAlertWithBundleID:(id)d
{
  dCopy = d;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "+[SCAlert userAcknowledgementAlertWithBundleID:]";
    v17 = 1024;
    v18 = 31;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v4 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"SCREENCAPTUREKIT_USER_ALERT_TITLE"];
  v5 = [NSBundle _rpLocalizedAppNameFromBundleID:dCopy];
  v6 = [NSString stringWithFormat:v4, v5];

  v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"SCREENCAPTUREKIT_USER_ALERT_BODY"];
  v8 = [NSBundle _rpLocalizedAppNameFromBundleID:dCopy];
  v9 = [NSString stringWithFormat:v7, v8];

  v10 = +[NSBundle _rpFrameworkBundle];
  bundleURL = [v10 bundleURL];

  v12 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"SCREENCAPTUREKIT_USER_ALERT_OPEN_SYSTEM_PREFERENCES"];
  v13 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"SCREENCAPTUREKIT_USER_ALERT_ALLOW"];
  v14 = [[NSURL alloc] initFileURLWithPath:@"/System/Library/Frameworks/ReplayKit.framework/Resources/PrivacyScreenRecording.png"];
  [SCAlert showAlertWithTitle:v6 bodyText:v9 defaultButtonText:v13 secondaryButtonText:v12 url:bundleURL requireReponse:1 imageURL:v14];
}

+ (BOOL)showPresenterOverlayPrivacyAlertWithBundleID:(id)d
{
  dCopy = d;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "+[SCAlert showPresenterOverlayPrivacyAlertWithBundleID:]";
    v16 = 1024;
    v17 = 53;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (+[RPConnectionManager hasUnitTestEntitlement])
  {
    v4 = 1;
  }

  else
  {
    v5 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"ACKNOWLEDGEMENT_PRESENTER_OVERLAY_ALERT_TITLE"];
    v6 = [NSBundle _rpLocalizedAppNameFromBundleID:dCopy];
    v7 = [NSString stringWithFormat:v5, v6];

    v8 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"ACKNOWLEDGEMENT_PRESENTER_OVERLAY_ALERT_BODY"];
    v9 = +[NSBundle _rpFrameworkBundle];
    bundleURL = [v9 bundleURL];

    v11 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"ACKNOWLEDGEMENT_ALERT_DECLINE_BUTTON"];
    v12 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_ACTIVITIES_PREFERRED_ACCEPT_BUTTON"];
    v4 = [SCAlert showAlertWithTitle:v7 bodyText:v8 defaultButtonText:v11 secondaryButtonText:v12 url:bundleURL requireReponse:1 imageURL:0];
  }

  return v4;
}

+ (BOOL)showLegacyAPIAlertWithBundleID:(id)d
{
  dCopy = d;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "+[SCAlert showLegacyAPIAlertWithBundleID:]";
    v16 = 1024;
    v17 = 74;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v4 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"LEGACY_API_ALERT_TITLE"];
  v5 = [NSBundle _rpLocalizedAppNameFromBundleID:dCopy];
  v6 = [NSString stringWithFormat:v4, v5];

  v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"LEGACY_API_ALERT_BODY"];
  v8 = [NSBundle _rpLocalizedAppNameFromBundleID:dCopy];
  v9 = [NSString stringWithFormat:v7, v8];

  v10 = +[NSBundle _rpFrameworkBundle];
  bundleURL = [v10 bundleURL];

  v12 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"LEGACY_API_ALERT_OK_BUTTON"];
  LOBYTE(v10) = [SCAlert showAlertWithTitle:v6 bodyText:v9 defaultButtonText:v12 secondaryButtonText:0 url:bundleURL requireReponse:0 imageURL:0];

  return v10;
}

+ (BOOL)showAlertWithTitle:(id)title bodyText:(id)text defaultButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText url:(id)url requireReponse:(BOOL)reponse imageURL:(id)l
{
  reponseCopy = reponse;
  titleCopy = title;
  textCopy = text;
  buttonTextCopy = buttonText;
  secondaryButtonTextCopy = secondaryButtonText;
  urlCopy = url;
  lCopy = l;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v29 = "+[SCAlert showAlertWithTitle:bodyText:defaultButtonText:secondaryButtonText:url:requireReponse:imageURL:]";
    v30 = 1024;
    v31 = 87;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, titleCopy);
  CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, textCopy);
  if (secondaryButtonTextCopy)
  {
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, secondaryButtonTextCopy);
  }

  if (buttonTextCopy)
  {
    CFDictionaryAddValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, buttonTextCopy);
  }

  if (urlCopy)
  {
    CFDictionaryAddValue(Mutable, kCFUserNotificationLocalizationURLKey, urlCopy);
  }

  if (lCopy)
  {
    CFDictionaryAddValue(Mutable, kCFUserNotificationIconURLKey, lCopy);
  }

  v21 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, Mutable);
  v22 = v21;
  if (v21 && reponseCopy)
  {
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v21, 0.0, &responseFlags);
    v23 = responseFlags == 1;
    if (responseFlags == 1)
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v29 = "+[SCAlert showAlertWithTitle:bodyText:defaultButtonText:secondaryButtonText:url:requireReponse:imageURL:]";
        v30 = 1024;
        v31 = 121;
        v24 = " [INFO] %{public}s:%d user acknowledgement accepted";
LABEL_25:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v24, buf, 0x12u);
      }
    }

    else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v29 = "+[SCAlert showAlertWithTitle:bodyText:defaultButtonText:secondaryButtonText:url:requireReponse:imageURL:]";
      v30 = 1024;
      v31 = 124;
      v24 = " [INFO] %{public}s:%d user acknowledgement refused";
      goto LABEL_25;
    }

LABEL_26:
    CFRelease(v22);
    v25 = v23;
    if (!Mutable)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v23 = 0;
  v25 = 0;
  if (v21)
  {
    goto LABEL_26;
  }

  if (Mutable)
  {
LABEL_20:
    CFRelease(Mutable);
  }

LABEL_21:

  return v25;
}

+ (id)privacyHintUserInfoForBundleID:(id)d identifier:(id)identifier count:(int64_t)count days:(int64_t)days
{
  dCopy = d;
  identifierCopy = identifier;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "+[SCAlert privacyHintUserInfoForBundleID:identifier:count:days:]";
    v23 = 1024;
    v24 = 133;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v11 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"PRIVACY_INDICATOR_APPNAME_TITLE"];
  v12 = [NSBundle _rpLocalizedAppNameFromBundleID:dCopy];
  v13 = [NSString stringWithFormat:v11, v12];

  v14 = [NSBundle _rpPluralLocalizedStringFromFrameworkBundleWithKey:@"PRIVACY_INDICATOR_APPNAME_BODY"];
  v15 = [NSBundle _rpLocalizedAppNameFromBundleID:dCopy];
  days = [NSString stringWithFormat:v14, v15, count, days];

  v19[0] = @"PrivacyHintBundleIdentifier";
  v19[1] = @"PrivacyHintTitle";
  v20[0] = dCopy;
  v20[1] = v13;
  v19[2] = @"PrivacyHintDescription";
  v19[3] = @"PrivacyHintAppIdentifier";
  v20[2] = days;
  v20[3] = identifierCopy;
  v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

  return v17;
}

@end