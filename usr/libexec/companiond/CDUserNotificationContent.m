@interface CDUserNotificationContent
+ (CDUserNotificationContent)appSignInContent;
+ (CDUserNotificationContent)continueOnContent;
+ (CDUserNotificationContent)incomingCallsContent;
+ (CDUserNotificationContent)learnMoreContent;
+ (CDUserNotificationContent)legacyAppSignInContent;
+ (CDUserNotificationContent)photoSetupContent;
+ (CDUserNotificationContent)registerPasskeyContent;
+ (CDUserNotificationContent)storeAuthenticationContent;
+ (CDUserNotificationContent)storePurchaseContent;
+ (CDUserNotificationContent)storePurchaseNoDeviceNameContent;
+ (CDUserNotificationContent)tvProviderContent;
+ (CDUserNotificationContent)unrecognizedUserContent;
+ (id)_photosContent;
+ (id)_recognizeMyVoiceContent;
+ (id)_sharedWithYouContent;
+ (id)dedicatedCameraContentForDeviceType:(int64_t)a3;
+ (id)notificationContentForSystemService:(int64_t)a3;
+ (id)restrictedAccessContentForRestrictionType:(int64_t)a3;
- (NSArray)bodyArguments;
- (NSArray)titleArguments;
- (void)addBodyArgument:(id)a3;
- (void)addTitleArgument:(id)a3;
@end

@implementation CDUserNotificationContent

+ (CDUserNotificationContent)appSignInContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"person.crop.circle"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"APP_SIGN_IN_TITLE"];
  v3 = GestaltCopyAnswer();
  v4 = [NSString stringWithFormat:@"%@_%@", @"APP_SIGN_IN_BODY", v3];
  v5 = [v4 uppercaseString];

  [(CDUserNotificationContent *)v2 setBodyKey:v5];

  return v2;
}

+ (CDUserNotificationContent)legacyAppSignInContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"person.crop.circle"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"LEGACY_APP_SIGN_IN_TITLE"];
  [(CDUserNotificationContent *)v2 setBodyKey:@"LEGACY_APP_SIGN_IN_BODY"];

  return v2;
}

+ (CDUserNotificationContent)storePurchaseContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  if (GestaltGetBoolean())
  {
    v3 = @"faceid";
  }

  else
  {
    v3 = @"touchid";
  }

  [(CDUserNotificationContent *)v2 setIconSystemName:v3];
  [(CDUserNotificationContent *)v2 setTitleKey:@"STORE_PURCHASE_TITLE"];
  v4 = GestaltCopyAnswer();
  v5 = [NSString stringWithFormat:@"%@_%@", @"STORE_PURCHASE_BODY", v4];
  v6 = [v5 uppercaseString];

  [(CDUserNotificationContent *)v2 setBodyKey:v6];

  return v2;
}

+ (CDUserNotificationContent)storePurchaseNoDeviceNameContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  if (GestaltGetBoolean())
  {
    v3 = @"faceid";
  }

  else
  {
    v3 = @"touchid";
  }

  [(CDUserNotificationContent *)v2 setIconSystemName:v3];
  [(CDUserNotificationContent *)v2 setTitleKey:@"STORE_PURCHASE_TITLE"];
  v4 = GestaltCopyAnswer();
  v5 = [NSString stringWithFormat:@"%@_%@", @"STORE_PURCHASE_NO_DEVICE_NAME_BODY", v4];
  v6 = [v5 uppercaseString];

  [(CDUserNotificationContent *)v2 setBodyKey:v6];

  return v2;
}

+ (CDUserNotificationContent)registerPasskeyContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"person.badge.key.fill"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"REGISTER_PASSKEY_TITLE"];
  v3 = GestaltCopyAnswer();
  v4 = [NSString stringWithFormat:@"%@_%@", @"REGISTER_PASSKEY_BODY", v3];
  v5 = [v4 uppercaseString];

  [(CDUserNotificationContent *)v2 setBodyKey:v5];

  return v2;
}

+ (id)notificationContentForSystemService:(int64_t)a3
{
  switch(a3)
  {
    case 4:
      v3 = [a1 _recognizeMyVoiceContent];
      break;
    case 3:
      v3 = [a1 _photosContent];
      break;
    case 2:
      v3 = [a1 _sharedWithYouContent];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

+ (id)restrictedAccessContentForRestrictionType:(int64_t)a3
{
  v4 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v4 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v4 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v4 setFlags:17];
  [(CDUserNotificationContent *)v4 setIconSystemName:@"figure.child.and.lock.fill"];
  [(CDUserNotificationContent *)v4 setTitleKey:@"RESTRICTED_ACCESS_TITLE"];
  if ((a3 - 1) <= 5)
  {
    [(CDUserNotificationContent *)v4 setBodyKey:off_10008A8E0[a3 - 1]];
  }

  return v4;
}

+ (CDUserNotificationContent)storeAuthenticationContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"person.circle"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"STORE_AUTHENTICATION_TITLE"];
  v3 = GestaltCopyAnswer();
  v4 = [NSString stringWithFormat:@"%@_%@", @"STORE_AUTHENTICATION_BODY", v3];
  v5 = [v4 uppercaseString];

  [(CDUserNotificationContent *)v2 setBodyKey:v5];

  return v2;
}

+ (CDUserNotificationContent)tvProviderContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"tv"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"TV_PROVIDER_TITLE"];
  v3 = GestaltCopyAnswer();
  v4 = [NSString stringWithFormat:@"%@_%@", @"TV_PROVIDER_BODY", v3];
  v5 = [v4 uppercaseString];

  [(CDUserNotificationContent *)v2 setBodyKey:v5];

  return v2;
}

+ (CDUserNotificationContent)learnMoreContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"safari"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"LEARN_MORE_TITLE"];
  v3 = GestaltCopyAnswer();
  v4 = [NSString stringWithFormat:@"%@_%@", @"LEARN_MORE_BODY", v3];
  v5 = [v4 uppercaseString];

  [(CDUserNotificationContent *)v2 setBodyKey:v5];

  return v2;
}

+ (id)dedicatedCameraContentForDeviceType:(int64_t)a3
{
  v3 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v3 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v3 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v3 setFlags:17];
  [(CDUserNotificationContent *)v3 setIconSystemName:@"rectangle.inset.filled.and.camera"];
  [(CDUserNotificationContent *)v3 setTitleKey:@"DEDICATED_CAMERA_TITLE"];
  v4 = [NSString stringWithFormat:@"%@_%@", @"DEDICATED_CAMERA_BODY", @"AppleTV"];
  v5 = [v4 uppercaseString];

  [(CDUserNotificationContent *)v3 setBodyKey:v5];

  return v3;
}

+ (CDUserNotificationContent)photoSetupContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"photo.tv"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"PHOTO_SETUP_TITLE"];
  [(CDUserNotificationContent *)v2 setBodyKey:@"PHOTO_SETUP_BODY"];

  return v2;
}

- (NSArray)titleArguments
{
  v2 = [(NSMutableArray *)self->_mutableTitleArguments copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

- (void)addTitleArgument:(id)a3
{
  v4 = a3;
  v5 = v4;
  mutableTitleArguments = self->_mutableTitleArguments;
  v10 = v4;
  if (mutableTitleArguments)
  {
    if (v4)
    {
LABEL_3:
      [(NSMutableArray *)mutableTitleArguments addObject:v5];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = +[NSMutableArray array];
    v8 = self->_mutableTitleArguments;
    self->_mutableTitleArguments = v7;

    v5 = v10;
    mutableTitleArguments = self->_mutableTitleArguments;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v9 = +[NSNull null];
  [(NSMutableArray *)mutableTitleArguments addObject:v9];

LABEL_6:
}

- (NSArray)bodyArguments
{
  v2 = [(NSMutableArray *)self->_mutableBodyArguments copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

- (void)addBodyArgument:(id)a3
{
  v4 = a3;
  v5 = v4;
  mutableBodyArguments = self->_mutableBodyArguments;
  v10 = v4;
  if (mutableBodyArguments)
  {
    if (v4)
    {
LABEL_3:
      [(NSMutableArray *)mutableBodyArguments addObject:v5];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = +[NSMutableArray array];
    v8 = self->_mutableBodyArguments;
    self->_mutableBodyArguments = v7;

    v5 = v10;
    mutableBodyArguments = self->_mutableBodyArguments;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v9 = +[NSNull null];
  [(NSMutableArray *)mutableBodyArguments addObject:v9];

LABEL_6:
}

+ (id)_sharedWithYouContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"shared.with.you"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"SHARED_WITH_YOU_TITLE"];
  v3 = GestaltCopyAnswer();
  v4 = [NSString stringWithFormat:@"%@_%@", @"SHARED_WITH_YOU_BODY", v3];
  v5 = [v4 uppercaseString];

  [(CDUserNotificationContent *)v2 setBodyKey:v5];

  return v2;
}

+ (id)_photosContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"photos"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"PHOTOS_TITLE"];
  v3 = GestaltCopyAnswer();
  v4 = [NSString stringWithFormat:@"%@_%@", @"PHOTOS_BODY", v3];
  v5 = [v4 uppercaseString];

  [(CDUserNotificationContent *)v2 setBodyKey:v5];

  return v2;
}

+ (id)_recognizeMyVoiceContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  [(CDUserNotificationContent *)v2 setIconName:@"siri-icon"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"RECOGNIZE_MY_VOICE_TITLE"];
  v3 = GestaltCopyAnswer();
  v4 = [NSString stringWithFormat:@"%@_%@", @"RECOGNIZE_MY_VOICE_BODY", v3];
  v5 = [v4 uppercaseString];

  [(CDUserNotificationContent *)v2 setBodyKey:v5];

  return v2;
}

+ (CDUserNotificationContent)continueOnContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryGeneric"];
  [(CDUserNotificationContent *)v2 setFlags:17];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"tv"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"CONTINUE_ON_TITLE"];
  [(CDUserNotificationContent *)v2 setBodyKey:@"CONTINUE_ON_BODY"];

  return v2;
}

+ (CDUserNotificationContent)unrecognizedUserContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryUnrecognizedUser"];
  [(CDUserNotificationContent *)v2 setFlags:25];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"person.badge.shield.checkmark.fill"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"UNRECOGNIZED_USER_TITLE"];
  v3 = GestaltCopyAnswer();
  v4 = [NSString stringWithFormat:@"%@_%@", @"UNRECOGNIZED_USER_BODY", v3];
  v5 = [v4 uppercaseString];

  [(CDUserNotificationContent *)v2 setBodyKey:v5];

  return v2;
}

+ (CDUserNotificationContent)incomingCallsContent
{
  v2 = objc_alloc_init(CDUserNotificationContent);
  [(CDUserNotificationContent *)v2 setBundleIdentifier:@"com.apple.CompanionNotifications"];
  [(CDUserNotificationContent *)v2 setCategoryIdentifier:@"CDUserNotificationCategoryIncomingCalls"];
  [(CDUserNotificationContent *)v2 setFlags:25];
  [(CDUserNotificationContent *)v2 setIconSystemName:@"phone.arrow.down.left.fill"];
  [(CDUserNotificationContent *)v2 setTitleKey:@"INCOMING_CALLS_TITLE"];
  [(CDUserNotificationContent *)v2 setBodyKey:@"INCOMING_CALLS_BODY"];

  return v2;
}

@end