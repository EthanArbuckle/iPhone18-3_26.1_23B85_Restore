@interface CRBulletin
+ (UNNotificationCategory)notificationCategory;
+ (id)CARActionWithTitle:(id)title;
+ (id)CARActionWithURL:(id)l title:(id)title;
- (CRBulletin)init;
- (CRBulletin)initWithTitle:(id)title message:(id)message icon:(id)icon defaultActionURL:(id)l destinations:(unint64_t)destinations;
- (NSArray)actions;
- (UNNotificationRequest)notificationRequest;
@end

@implementation CRBulletin

- (CRBulletin)init
{
  v7.receiver = self;
  v7.super_class = CRBulletin;
  v2 = [(CRBulletin *)&v7 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    uUIDString = [v3 UUIDString];
    recordID = v2->_recordID;
    v2->_recordID = uUIDString;

    v2->_destinations = 2;
  }

  return v2;
}

- (CRBulletin)initWithTitle:(id)title message:(id)message icon:(id)icon defaultActionURL:(id)l destinations:(unint64_t)destinations
{
  titleCopy = title;
  messageCopy = message;
  iconCopy = icon;
  lCopy = l;
  v17 = [(CRBulletin *)self init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, title);
    objc_storeStrong(&v18->_message, message);
    objc_storeStrong(&v18->_icon, icon);
    objc_storeStrong(&v18->_defaultActionURL, l);
    v18->_destinations = destinations;
  }

  return v18;
}

+ (UNNotificationCategory)notificationCategory
{
  v3 = [UNMutableNotificationCategory alloc];
  categoryIdentifier = [self categoryIdentifier];
  v5 = [v3 initWithIdentifier:categoryIdentifier];

  actions = [self actions];
  [v5 setActions:actions];

  [v5 setOptions:0];

  return v5;
}

- (NSArray)actions
{
  v2 = objc_opt_class();

  return [v2 actions];
}

- (UNNotificationRequest)notificationRequest
{
  v3 = objc_opt_new();
  title = [(CRBulletin *)self title];
  v5 = title;
  if (title)
  {
    v6 = title;
  }

  else
  {
    v6 = &stru_1000E1378;
  }

  [v3 setTitle:v6];

  message = [(CRBulletin *)self message];
  v8 = message;
  if (message)
  {
    v9 = message;
  }

  else
  {
    v9 = &stru_1000E1378;
  }

  [v3 setBody:v9];

  categoryIdentifier = [objc_opt_class() categoryIdentifier];
  [v3 setCategoryIdentifier:categoryIdentifier];

  [v3 setShouldIgnoreDoNotDisturb:1];
  [v3 setShouldSuppressScreenLightUp:1];
  icon = [(CRBulletin *)self icon];
  [v3 setIcon:icon];

  defaultActionURL = [(CRBulletin *)self defaultActionURL];
  [v3 setDefaultActionURL:defaultActionURL];

  recordID = [(CRBulletin *)self recordID];
  v14 = [UNNotificationRequest requestWithIdentifier:recordID content:v3 trigger:0 destinations:self->_destinations];

  return v14;
}

+ (id)CARActionWithTitle:(id)title
{
  if (title)
  {
    titleCopy = title;
    uppercaseString = [titleCopy uppercaseString];
    v5 = [UNNotificationAction actionWithIdentifier:uppercaseString title:titleCopy options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)CARActionWithURL:(id)l title:(id)title
{
  v4 = 0;
  if (l && title)
  {
    titleCopy = title;
    lCopy = l;
    uppercaseString = [titleCopy uppercaseString];
    v4 = [UNNotificationAction actionWithIdentifier:uppercaseString title:titleCopy url:lCopy];
  }

  return v4;
}

@end