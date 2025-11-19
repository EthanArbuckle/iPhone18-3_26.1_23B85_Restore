@interface SUIOpenInPlaceAppActivity
- (id)activityTitle;
- (void)performActivity;
@end

@implementation SUIOpenInPlaceAppActivity

- (id)activityTitle
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(SUIOpenInAppActivity *)self applicationProxy];
    v4 = [v3 localizedName];
  }

  else
  {
    v3 = sub_10026BF6C();
    v5 = [v3 localizedStringForKey:@"OPEN_IN_APP_ACTIVITY_TITLE" value:@"Open in" table:@"Localizable"];
    v6 = [(SUIOpenInAppActivity *)self applicationProxy];
    v7 = [v6 localizedName];
    v4 = [NSString stringWithFormat:v5, v7];
  }

  return v4;
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