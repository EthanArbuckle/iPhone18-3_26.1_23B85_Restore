@interface CARCarPlayServiceMessageAvailability
- (CARCarPlayServiceMessageAvailability)initWithDictionaryRepresentation:(id)a3;
- (CARCarPlayServiceMessageAvailability)initWithWirelessAvailable:(BOOL)a3 wiredAvailable:(id)a4 usbIdentifier:(id)a5 themeAssetsAvailable:(id)a6;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation CARCarPlayServiceMessageAvailability

- (CARCarPlayServiceMessageAvailability)initWithWirelessAvailable:(BOOL)a3 wiredAvailable:(id)a4 usbIdentifier:(id)a5 themeAssetsAvailable:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CARCarPlayServiceMessageAvailability;
  v14 = [(CARCarPlayServiceMessageAvailability *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_wirelessAvailable = a3;
    objc_storeStrong(&v14->_wiredAvailable, a4);
    objc_storeStrong(&v15->_usbIdentifier, a5);
    objc_storeStrong(&v15->_themeAssetsAvailable, a6);
  }

  return v15;
}

- (NSString)description
{
  v14.receiver = self;
  v14.super_class = CARCarPlayServiceMessageAvailability;
  v3 = [(CARCarPlayServiceMessageAvailability *)&v14 description];
  if ([(CARCarPlayServiceMessageAvailability *)self wirelessAvailable])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [(CARCarPlayServiceMessageAvailability *)self wiredAvailable];
  v6 = @"unset";
  if (v5)
  {
    v13 = [(CARCarPlayServiceMessageAvailability *)self wiredAvailable];
    if ([v13 BOOLValue])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }
  }

  v7 = [(CARCarPlayServiceMessageAvailability *)self usbIdentifier];
  v8 = [(CARCarPlayServiceMessageAvailability *)self themeAssetsAvailable];
  if (v8)
  {
    v9 = [(CARCarPlayServiceMessageAvailability *)self themeAssetsAvailable];
    if ([v9 BOOLValue])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [NSString stringWithFormat:@"%@ {wirelessAvailable: %@, wiredAvailable: %@, usbIdentifier: %@, themeAssetsAvailable: %@}", v3, v4, v6, v7, v10];
  }

  else
  {
    v11 = [NSString stringWithFormat:@"%@ {wirelessAvailable: %@, wiredAvailable: %@, usbIdentifier: %@, themeAssetsAvailable: %@}", v3, v4, v6, v7, @"unset"];
  }

  if (v5)
  {
  }

  return v11;
}

- (CARCarPlayServiceMessageAvailability)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    v5 = [v4 objectForKey:@"wireless"];
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v8 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100085860();
      }

      v9 = 0;
      goto LABEL_57;
    }

    objc_opt_class();
    v7 = [v6 objectForKey:@"available"];
    if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v11 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000857EC();
      }

      v9 = 0;
      goto LABEL_56;
    }

    objc_opt_class();
    v10 = [v4 objectForKey:@"wired"];
    if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      objc_opt_class();
      v12 = [v11 objectForKey:@"available"];
      if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      if (!v13)
      {
        v13 = sub_100002A68(2uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000857EC();
        }

        v9 = 0;
        goto LABEL_55;
      }

      objc_opt_class();
      v14 = [v11 objectForKey:@"usbIdentifier"];
      if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        v15 = sub_100002A68(2uLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100085778();
        }

        v9 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    objc_opt_class();
    v16 = [v4 objectForKey:@"asset"];
    if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      objc_opt_class();
      v18 = [v17 objectForKey:@"available"];
      if (v18 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        v19 = sub_100002A68(2uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000857EC();
        }

        v9 = 0;
        goto LABEL_53;
      }
    }

    else
    {
      v19 = 0;
    }

    self = [(CARCarPlayServiceMessageAvailability *)self initWithWirelessAvailable:[v8 BOOLValue] wiredAvailable:v13 usbIdentifier:v15 themeAssetsAvailable:v19];
    v9 = self;
LABEL_53:

LABEL_54:
LABEL_55:

LABEL_56:
LABEL_57:

    goto LABEL_58;
  }

  v9 = 0;
LABEL_58:

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v14 = @"available";
  v4 = [NSNumber numberWithBool:[(CARCarPlayServiceMessageAvailability *)self wirelessAvailable]];
  v15 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v3 setObject:v5 forKey:@"wireless"];

  v6 = [(CARCarPlayServiceMessageAvailability *)self wiredAvailable];

  if (v6)
  {
    v7 = +[NSMutableDictionary dictionary];
    v8 = [(CARCarPlayServiceMessageAvailability *)self wiredAvailable];
    [v7 cr_setSafeObject:v8 forKey:@"available"];

    v9 = [(CARCarPlayServiceMessageAvailability *)self usbIdentifier];
    [v7 cr_setSafeObject:v9 forKey:@"usbIdentifier"];

    [v3 setObject:v7 forKey:@"wired"];
  }

  v10 = [(CARCarPlayServiceMessageAvailability *)self themeAssetsAvailable];

  if (v10)
  {
    v11 = +[NSMutableDictionary dictionary];
    v12 = [(CARCarPlayServiceMessageAvailability *)self themeAssetsAvailable];
    [v11 cr_setSafeObject:v12 forKey:@"available"];

    [v3 setObject:v11 forKey:@"asset"];
  }

  return v3;
}

@end