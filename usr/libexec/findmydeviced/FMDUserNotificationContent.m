@interface FMDUserNotificationContent
- (FMDUserNotificationContent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDUserNotificationContent

- (FMDUserNotificationContent)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = FMDUserNotificationContent;
  v5 = [(FMDUserNotificationContent *)&v34 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("title");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDUserNotificationContent *)v5 setTitle:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("body");
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(FMDUserNotificationContent *)v5 setBody:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("categoryIdentifier");
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(FMDUserNotificationContent *)v5 setCategoryIdentifier:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("deviceId");
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    [(FMDUserNotificationContent *)v5 setDeviceId:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector("serialNumber");
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    [(FMDUserNotificationContent *)v5 setSerialNumber:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector("identifier");
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    [(FMDUserNotificationContent *)v5 setIdentifier:v23];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector("locationTitle");
    v26 = [v4 decodeObjectOfClass:v24 forKey:v25];
    [(FMDUserNotificationContent *)v5 setLocationTitle:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector("locationMessage");
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    [(FMDUserNotificationContent *)v5 setLocationMessage:v29];

    v30 = NSStringFromSelector("latitude");
    [v4 decodeDoubleForKey:v30];
    [(FMDUserNotificationContent *)v5 setLatitude:?];

    v31 = NSStringFromSelector("longitude");
    [v4 decodeDoubleForKey:v31];
    [(FMDUserNotificationContent *)v5 setLongitude:?];

    v32 = NSStringFromSelector("interruptionLevel");
    -[FMDUserNotificationContent setInterruptionLevel:](v5, "setInterruptionLevel:", [v4 decodeIntegerForKey:v32]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDUserNotificationContent *)self title];
  v6 = NSStringFromSelector("title");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(FMDUserNotificationContent *)self body];
  v8 = NSStringFromSelector("body");
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(FMDUserNotificationContent *)self categoryIdentifier];
  v10 = NSStringFromSelector("categoryIdentifier");
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(FMDUserNotificationContent *)self deviceId];
  v12 = NSStringFromSelector("deviceId");
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(FMDUserNotificationContent *)self serialNumber];
  v14 = NSStringFromSelector("serialNumber");
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(FMDUserNotificationContent *)self identifier];
  v16 = NSStringFromSelector("identifier");
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(FMDUserNotificationContent *)self locationTitle];
  v18 = NSStringFromSelector("locationTitle");
  [v4 encodeObject:v17 forKey:v18];

  v19 = [(FMDUserNotificationContent *)self locationMessage];
  v20 = NSStringFromSelector("locationMessage");
  [v4 encodeObject:v19 forKey:v20];

  [(FMDUserNotificationContent *)self latitude];
  v22 = v21;
  v23 = NSStringFromSelector("latitude");
  [v4 encodeDouble:v23 forKey:v22];

  [(FMDUserNotificationContent *)self longitude];
  v25 = v24;
  v26 = NSStringFromSelector("longitude");
  [v4 encodeDouble:v26 forKey:v25];

  v27 = [(FMDUserNotificationContent *)self interruptionLevel];
  v28 = NSStringFromSelector("interruptionLevel");
  [v4 encodeInteger:v27 forKey:v28];
}

@end