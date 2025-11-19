@interface SUIOpenCopyAppActivity
- (id)activityTitle;
- (void)performActivity;
@end

@implementation SUIOpenCopyAppActivity

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
    v5 = [v3 localizedStringForKey:@"COPY_TO_APP_ACTIVITY_TITLE" value:@"Copy to" table:@"Localizable"];
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
  v2[2] = sub_1001FC008;
  v2[3] = &unk_1008CE090;
  v2[4] = self;
  [(SUIOpenInAppActivity *)self performLaunchServicesImportOpenWithCompletion:v2];
}

@end