@interface NFFieldNotificationECP1_0
- (BOOL)isEqual:(id)equal;
- (NFFieldNotificationECP1_0)initWithCoder:(id)coder;
- (NFFieldNotificationECP1_0)initWithDictionary:(id)dictionary;
- (NFFieldNotificationECP1_0)initWithDictionaryForDavenport:(id)davenport;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_initCategoryWithType:(unsigned int)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFFieldNotificationECP1_0

- (void)encodeWithCoder:(id)coder
{
  odaRequired = self->_odaRequired;
  coderCopy = coder;
  [coderCopy encodeBool:odaRequired forKey:@"odaRequired"];
  [coderCopy encodeInteger:self->_terminalMode forKey:@"terminalMode"];
  [coderCopy encodeInteger:self->_terminalType forKey:@"terminalType"];
  [coderCopy encodeBool:self->_ignoreRFTechOnIsEqual forKey:@"ignoreRFTechOnIsEqual"];
  v6.receiver = self;
  v6.super_class = NFFieldNotificationECP1_0;
  [(NFFieldNotification *)&v6 encodeWithCoder:coderCopy];
}

- (NFFieldNotificationECP1_0)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NFFieldNotificationECP1_0;
  v5 = [(NFFieldNotification *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_odaRequired = [coderCopy decodeBoolForKey:@"odaRequired"];
    v5->_terminalMode = [coderCopy decodeIntegerForKey:@"terminalMode"];
    v5->_terminalType = [coderCopy decodeIntegerForKey:@"terminalType"];
    v5->_ignoreRFTechOnIsEqual = [coderCopy decodeBoolForKey:@"ignoreRFTechOnIsEqual"];
  }

  return v5;
}

- (NFFieldNotificationECP1_0)initWithDictionaryForDavenport:(id)davenport
{
  davenportCopy = davenport;
  v9.receiver = self;
  v9.super_class = NFFieldNotificationECP1_0;
  v5 = [(NFFieldNotification *)&v9 initWithDictionary:davenportCopy];
  v6 = v5;
  if (v5)
  {
    v5->_odaRequired = 0;
    v5->_terminalType = 2;
    v5->_terminalMode = 4;
    v7 = [davenportCopy objectForKey:@"IgnoreRFTechOnIsEqual"];
    v6->_ignoreRFTechOnIsEqual = [v7 BOOLValue];

    [(NFFieldNotification *)v6 setCategory:5];
    [(NFFieldNotification *)v6 setNotificationType:2];
  }

  return v6;
}

- (NFFieldNotificationECP1_0)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = NFFieldNotificationECP1_0;
  v5 = [(NFFieldNotification *)&v13 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
LABEL_8:
    v10 = v5;
    goto LABEL_9;
  }

  v6 = [dictionaryCopy objectForKey:@"ECPData"];
  if ([v6 length] == 5)
  {
    [(NFFieldNotification *)v5 setNotificationType:2];
    bytes = [v6 bytes];
    v8 = bytes[2];
    v5->_odaRequired = (v8 & 0x40) == 0;
    v5->_terminalType = v8 & 0xF;
    if (v8 < 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = bytes[4] & 3;
    }

    v5->_terminalMode = v9;
    [(NFFieldNotificationECP1_0 *)v5 _initCategoryWithType:v5->_terminalType];
    v11 = [dictionaryCopy objectForKey:@"IgnoreRFTechOnIsEqual"];
    v5->_ignoreRFTechOnIsEqual = [v11 BOOLValue];

    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)_initCategoryWithType:(unsigned int)type
{
  if (type > 2)
  {
    if (type - 3 < 2)
    {
      v3 = 3;
      goto LABEL_6;
    }

    if (type == 15)
    {
      v3 = 2;
      goto LABEL_6;
    }
  }

  else
  {
    switch(type)
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
  typeFSystemCode = [(NFFieldNotification *)self typeFSystemCode];
  odaRequired = self->_odaRequired;
  v8 = __rev16(typeFSystemCode);
  terminalMode = self->_terminalMode;
  terminalType = self->_terminalType;
  _creationDateString = [(NFFieldNotification *)self _creationDateString];
  v12 = [v4 initWithFormat:@"<%s: tech=%@ sc=0x%X, oda=%d, terminalMode=%d, terminalType=%d, date=%@, cached=%d>", ClassName, v3, v8, odaRequired, terminalMode, terminalType, _creationDateString, -[NFFieldNotification cachedBeforeRFReset](self, "cachedBeforeRFReset")];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      odaRequired = [(NFFieldNotificationECP1_0 *)v5 odaRequired];
      if (odaRequired == [(NFFieldNotificationECP1_0 *)self odaRequired]&& (v7 = [(NFFieldNotificationECP1_0 *)v5 terminalType], v7 == [(NFFieldNotificationECP1_0 *)self terminalType]) && (v8 = [(NFFieldNotificationECP1_0 *)v5 terminalMode], v8 == [(NFFieldNotificationECP1_0 *)self terminalMode]) && [(NFFieldNotificationECP1_0 *)self ignoreRFTechOnIsEqual])
      {
        selfCopy = self;
        v9 = &selRef_isEqualWithoutRFTech_;
        v10 = &selfCopy;
      }

      else
      {
        selfCopy2 = self;
        v9 = &selRef_isEqual_;
        v10 = &selfCopy2;
      }

      v10[1] = NFFieldNotificationECP1_0;
      v11 = objc_msgSendSuper2(v10, *v9, v5, selfCopy2);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NFFieldNotificationECP1_0 alloc];
  notificationType = [(NFFieldNotification *)self notificationType];
  rfTechnology = [(NFFieldNotification *)self rfTechnology];
  typeFSystemCode = [(NFFieldNotification *)self typeFSystemCode];
  creationDate = [(NFFieldNotification *)self creationDate];
  cachedBeforeRFReset = [(NFFieldNotification *)self cachedBeforeRFReset];
  LOBYTE(v12) = self->_ignoreRFTechOnIsEqual;
  v10 = [(NFFieldNotificationECP1_0 *)v4 initWithNotificationType:notificationType rfTechnology:rfTechnology typeFSystemCode:typeFSystemCode creationDate:creationDate cachedBeforeRFReset:cachedBeforeRFReset odaRequired:self->_odaRequired terminalMode:*&self->_terminalMode terminalType:v12 ignoreRFTechOnIsEqual:?];

  return v10;
}

@end