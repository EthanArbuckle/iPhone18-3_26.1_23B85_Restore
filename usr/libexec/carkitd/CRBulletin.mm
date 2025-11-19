@interface CRBulletin
+ (UNNotificationCategory)notificationCategory;
+ (id)CARActionWithTitle:(id)a3;
+ (id)CARActionWithURL:(id)a3 title:(id)a4;
- (CRBulletin)init;
- (CRBulletin)initWithTitle:(id)a3 message:(id)a4 icon:(id)a5 defaultActionURL:(id)a6 destinations:(unint64_t)a7;
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
    v4 = [v3 UUIDString];
    recordID = v2->_recordID;
    v2->_recordID = v4;

    v2->_destinations = 2;
  }

  return v2;
}

- (CRBulletin)initWithTitle:(id)a3 message:(id)a4 icon:(id)a5 defaultActionURL:(id)a6 destinations:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [(CRBulletin *)self init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, a3);
    objc_storeStrong(&v18->_message, a4);
    objc_storeStrong(&v18->_icon, a5);
    objc_storeStrong(&v18->_defaultActionURL, a6);
    v18->_destinations = a7;
  }

  return v18;
}

+ (UNNotificationCategory)notificationCategory
{
  v3 = [UNMutableNotificationCategory alloc];
  v4 = [a1 categoryIdentifier];
  v5 = [v3 initWithIdentifier:v4];

  v6 = [a1 actions];
  [v5 setActions:v6];

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
  v4 = [(CRBulletin *)self title];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1000E1378;
  }

  [v3 setTitle:v6];

  v7 = [(CRBulletin *)self message];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1000E1378;
  }

  [v3 setBody:v9];

  v10 = [objc_opt_class() categoryIdentifier];
  [v3 setCategoryIdentifier:v10];

  [v3 setShouldIgnoreDoNotDisturb:1];
  [v3 setShouldSuppressScreenLightUp:1];
  v11 = [(CRBulletin *)self icon];
  [v3 setIcon:v11];

  v12 = [(CRBulletin *)self defaultActionURL];
  [v3 setDefaultActionURL:v12];

  v13 = [(CRBulletin *)self recordID];
  v14 = [UNNotificationRequest requestWithIdentifier:v13 content:v3 trigger:0 destinations:self->_destinations];

  return v14;
}

+ (id)CARActionWithTitle:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 uppercaseString];
    v5 = [UNNotificationAction actionWithIdentifier:v4 title:v3 options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)CARActionWithURL:(id)a3 title:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [v6 uppercaseString];
    v4 = [UNNotificationAction actionWithIdentifier:v8 title:v6 url:v7];
  }

  return v4;
}

@end