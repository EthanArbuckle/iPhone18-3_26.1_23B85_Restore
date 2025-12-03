@interface _UIUserDefaultsActivity
- (_UIUserDefaultsActivity)initWithActivityCategory:(int64_t)category;
- (_UIUserDefaultsActivity)initWithUserDefaults:(id)defaults activityCategory:(int64_t)category;
- (id)_actionImage;
- (id)_activityImage;
- (id)_systemImageName;
- (id)activityTitle;
@end

@implementation _UIUserDefaultsActivity

- (_UIUserDefaultsActivity)initWithActivityCategory:(int64_t)category
{
  v5.receiver = self;
  v5.super_class = _UIUserDefaultsActivity;
  result = [(_UIUserDefaultsActivity *)&v5 init];
  if (result)
  {
    result->_activityCategory = category;
  }

  return result;
}

- (_UIUserDefaultsActivity)initWithUserDefaults:(id)defaults activityCategory:(int64_t)category
{
  defaultsCopy = defaults;
  v8 = [(_UIUserDefaultsActivity *)self initWithActivityCategory:category];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userDefaults, defaults);
  }

  return v9;
}

- (id)activityTitle
{
  v2 = sub_10026BF6C();
  v3 = [v2 localizedStringForKey:@"More" value:@"More" table:@"Localizable"];

  return v3;
}

- (id)_activityImage
{
  if (qword_10098A2F8 != -1)
  {
    sub_100214EEC();
  }

  v3 = qword_10098A2F0;

  return v3;
}

- (id)_actionImage
{
  v3 = objc_opt_class();
  v4 = sub_10026BF6C();
  v5 = [UIImage imageNamed:@"UIActivityUserDefaults" inBundle:v4];
  contentSizeCategory = [(_UIUserDefaultsActivity *)self contentSizeCategory];
  v7 = [v3 _actionImageForActionRepresentationImage:v5 contentSizeCategory:contentSizeCategory];

  return v7;
}

- (id)_systemImageName
{
  if ([(_UIUserDefaultsActivity *)self activityCategory])
  {
    return 0;
  }

  else
  {
    return @"ellipsis";
  }
}

@end