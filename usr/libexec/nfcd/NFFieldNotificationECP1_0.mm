@interface NFFieldNotificationECP1_0
- (BOOL)isEqual:(id)a3;
- (NFFieldNotificationECP1_0)initWithCoder:(id)a3;
- (NFFieldNotificationECP1_0)initWithDictionary:(id)a3;
- (NFFieldNotificationECP1_0)initWithDictionaryForDavenport:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_initCategoryWithType:(unsigned int)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFFieldNotificationECP1_0

- (void)encodeWithCoder:(id)a3
{
  odaRequired = self->_odaRequired;
  v5 = a3;
  [v5 encodeBool:odaRequired forKey:@"odaRequired"];
  [v5 encodeInteger:self->_terminalMode forKey:@"terminalMode"];
  [v5 encodeInteger:self->_terminalType forKey:@"terminalType"];
  [v5 encodeBool:self->_ignoreRFTechOnIsEqual forKey:@"ignoreRFTechOnIsEqual"];
  v6.receiver = self;
  v6.super_class = NFFieldNotificationECP1_0;
  [(NFFieldNotification *)&v6 encodeWithCoder:v5];
}

- (NFFieldNotificationECP1_0)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NFFieldNotificationECP1_0;
  v5 = [(NFFieldNotification *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_odaRequired = [v4 decodeBoolForKey:@"odaRequired"];
    v5->_terminalMode = [v4 decodeIntegerForKey:@"terminalMode"];
    v5->_terminalType = [v4 decodeIntegerForKey:@"terminalType"];
    v5->_ignoreRFTechOnIsEqual = [v4 decodeBoolForKey:@"ignoreRFTechOnIsEqual"];
  }

  return v5;
}

- (NFFieldNotificationECP1_0)initWithDictionaryForDavenport:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFFieldNotificationECP1_0;
  v5 = [(NFFieldNotification *)&v9 initWithDictionary:v4];
  v6 = v5;
  if (v5)
  {
    v5->_odaRequired = 0;
    v5->_terminalType = 2;
    v5->_terminalMode = 4;
    v7 = [v4 objectForKey:@"IgnoreRFTechOnIsEqual"];
    v6->_ignoreRFTechOnIsEqual = [v7 BOOLValue];

    [(NFFieldNotification *)v6 setCategory:5];
    [(NFFieldNotification *)v6 setNotificationType:2];
  }

  return v6;
}

- (NFFieldNotificationECP1_0)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NFFieldNotificationECP1_0;
  v5 = [(NFFieldNotification *)&v13 initWithDictionary:v4];
  if (!v5)
  {
LABEL_8:
    v10 = v5;
    goto LABEL_9;
  }

  v6 = [v4 objectForKey:@"ECPData"];
  if ([v6 length] == 5)
  {
    [(NFFieldNotification *)v5 setNotificationType:2];
    v7 = [v6 bytes];
    v8 = v7[2];
    v5->_odaRequired = (v8 & 0x40) == 0;
    v5->_terminalType = v8 & 0xF;
    if (v8 < 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = v7[4] & 3;
    }

    v5->_terminalMode = v9;
    [(NFFieldNotificationECP1_0 *)v5 _initCategoryWithType:v5->_terminalType];
    v11 = [v4 objectForKey:@"IgnoreRFTechOnIsEqual"];
    v5->_ignoreRFTechOnIsEqual = [v11 BOOLValue];

    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)_initCategoryWithType:(unsigned int)a3
{
  if (a3 > 2)
  {
    if (a3 - 3 < 2)
    {
      v3 = 3;
      goto LABEL_6;
    }

    if (a3 == 15)
    {
      v3 = 2;
      goto LABEL_6;
    }
  }

  else
  {
    switch(a3)
    {
      case 0u:
        v3 = 1;
        goto LABEL_6;
      case 1u:
        v3 = 4;
        goto LABEL_6;
      case 2u:
        v3 = 5;
LABEL_6:
        [(NFFieldNotification *)self setCategory:v3];
        break;
    }
  }
}

- (id)description
{
  v3 = objc_opt_new();
  if (([(NFFieldNotification *)self rfTechnology]& 1) != 0)
  {
    [v3 appendString:{@"A, "}];
  }

  if (([(NFFieldNotification *)self rfTechnology]& 2) != 0)
  {
    [v3 appendString:{@"B, "}];
  }

  if (([(NFFieldNotification *)self rfTechnology]& 4) != 0)
  {
    [v3 appendString:{@"F, "}];
  }

  if (([(NFFieldNotification *)self rfTechnology]& 0x10) != 0)
  {
    [v3 appendString:{@"V, "}];
  }

  if (([(NFFieldNotification *)self rfTechnology]& 8) != 0)
  {
    [v3 appendString:{@"ECP, "}];
  }

  if (![v3 length])
  {
    [v3 appendString:@"None"];
  }

  v4 = [NSString alloc];
  ClassName = object_getClassName(self);
  v6 = [(NFFieldNotification *)self typeFSystemCode];
  odaRequired = self->_odaRequired;
  v8 = __rev16(v6);
  terminalMode = self->_terminalMode;
  terminalType = self->_terminalType;
  v11 = [(NFFieldNotification *)self _creationDateString];
  v12 = [v4 initWithFormat:@"<%s: tech=%@ sc=0x%X, oda=%d, terminalMode=%d, terminalType=%d, date=%@, cached=%d>", ClassName, v3, v8, odaRequired, terminalMode, terminalType, v11, -[NFFieldNotification cachedBeforeRFReset](self, "cachedBeforeRFReset")];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NFFieldNotificationECP1_0 *)v5 odaRequired];
      if (v6 == [(NFFieldNotificationECP1_0 *)self odaRequired]&& (v7 = [(NFFieldNotificationECP1_0 *)v5 terminalType], v7 == [(NFFieldNotificationECP1_0 *)self terminalType]) && (v8 = [(NFFieldNotificationECP1_0 *)v5 terminalMode], v8 == [(NFFieldNotificationECP1_0 *)self terminalMode]) && [(NFFieldNotificationECP1_0 *)self ignoreRFTechOnIsEqual])
      {
        v14 = self;
        v9 = &selRef_isEqualWithoutRFTech_;
        v10 = &v14;
      }

      else
      {
        v13 = self;
        v9 = &selRef_isEqual_;
        v10 = &v13;
      }

      v10[1] = NFFieldNotificationECP1_0;
      v11 = objc_msgSendSuper2(v10, *v9, v5, v13);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NFFieldNotificationECP1_0 alloc];
  v5 = [(NFFieldNotification *)self notificationType];
  v6 = [(NFFieldNotification *)self rfTechnology];
  v7 = [(NFFieldNotification *)self typeFSystemCode];
  v8 = [(NFFieldNotification *)self creationDate];
  v9 = [(NFFieldNotification *)self cachedBeforeRFReset];
  LOBYTE(v12) = self->_ignoreRFTechOnIsEqual;
  v10 = [(NFFieldNotificationECP1_0 *)v4 initWithNotificationType:v5 rfTechnology:v6 typeFSystemCode:v7 creationDate:v8 cachedBeforeRFReset:v9 odaRequired:self->_odaRequired terminalMode:*&self->_terminalMode terminalType:v12 ignoreRFTechOnIsEqual:?];

  return v10;
}

@end