@interface SUIOpenInPlaceAppActivity
- (id)activityTitle;
- (void)performActivity;
@end

@implementation SUIOpenInPlaceAppActivity

- (id)activityTitle
{
  if (_os_feature_enabled_impl())
  {
    applicationProxy = [(SUIOpenInAppActivity *)self applicationProxy];
    localizedName = [applicationProxy localizedName];
  }

  else
  {
    applicationProxy = sub_10026BF6C();
    v5 = [applicationProxy localizedStringForKey:@"OPEN_IN_APP_ACTIVITY_TITLE" value:@"Open in" table:@"Localizable"];
    applicationProxy2 = [(SUIOpenInAppActivity *)self applicationProxy];
    localizedName2 = [applicationProxy2 localizedName];
    localizedName = [NSString stringWithFormat:v5, localizedName2];
  }

  return localizedName;
}

- (void)performActivity
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001FBE78;
  v2[3] = &unk_1008CE090;
  v2[4] = self;
  [(SUIOpenInAppActivity *)self performLaunchServicesInPlaceOpenWithCompletion:v2];
}

@end