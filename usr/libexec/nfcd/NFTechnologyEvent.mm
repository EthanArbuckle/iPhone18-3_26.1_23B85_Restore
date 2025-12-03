@interface NFTechnologyEvent
- (NFTechnologyEvent)initWithCoder:(id)coder;
- (NFTechnologyEvent)initWithDictionary:(id)dictionary;
- (NFTechnologyEvent)initWithFieldNotification:(id)notification;
- (NFTechnologyEvent)initWithTechnology:(unsigned int)technology andValueAddedServiceMode:(unsigned int)mode;
- (NFTechnologyEvent)initWithTechnology:(unsigned int)technology andValueAddedServiceMode:(unsigned int)mode andSystemCode:(unsigned __int16)code;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFTechnologyEvent

- (NFTechnologyEvent)initWithTechnology:(unsigned int)technology andValueAddedServiceMode:(unsigned int)mode andSystemCode:(unsigned __int16)code
{
  modeCopy = mode;
  v9.receiver = self;
  v9.super_class = NFTechnologyEvent;
  result = [(NFTechnologyEvent *)&v9 init];
  if (result)
  {
    result->_technology = technology;
    result->_valueAddedServiceMode = modeCopy;
    result->_systemCode = code;
  }

  return result;
}

- (NFTechnologyEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = NFTechnologyEvent;
  v5 = [(NFTechnologyEvent *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"technologyMask"];
    v5->_technology = [v6 unsignedIntegerValue];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"valueAddedServiceMode"];
    v5->_valueAddedServiceMode = [v7 unsignedIntegerValue];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"systemCode"];
    v5->_systemCode = [v8 unsignedIntegerValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"vasSupported"];
    v5->_vasSupported = [v9 BOOLValue];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"terminalType"];
    v5->_terminalType = [v10 unsignedIntegerValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"touchIDRequired"];
    v5->_touchIDRequired = [v11 BOOLValue];
  }

  return v5;
}

- (NFTechnologyEvent)initWithTechnology:(unsigned int)technology andValueAddedServiceMode:(unsigned int)mode
{
  modeCopy = mode;
  v7.receiver = self;
  v7.super_class = NFTechnologyEvent;
  result = [(NFTechnologyEvent *)&v7 init];
  if (result)
  {
    result->_technology = technology;
    result->_valueAddedServiceMode = modeCopy;
  }

  return result;
}

- (NFTechnologyEvent)initWithFieldNotification:(id)notification
{
  notificationCopy = notification;
  v9.receiver = self;
  v9.super_class = NFTechnologyEvent;
  v5 = [(NFTechnologyEvent *)&v9 init];
  if (v5)
  {
    if ([notificationCopy notificationType] == 1)
    {
      v5->_technology = [notificationCopy rfTechnology];
      v5->_valueAddedServiceMode = 4;
      v5->_systemCode = [notificationCopy typeFSystemCode];
    }

    else if ([notificationCopy notificationType] == 2)
    {
      v6 = notificationCopy;
      v5->_technology = [v6 rfTechnology];
      v5->_valueAddedServiceMode = [v6 terminalMode];
      v5->_systemCode = [v6 typeFSystemCode];
      v5->_vasSupported = [v6 terminalMode] != 4;
      v5->_touchIDRequired = [v6 odaRequired];
      terminalType = [v6 terminalType];

      v5->_terminalType = terminalType;
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  technology = self->_technology;
  v4 = [NSString alloc];
  if ((technology & 4) != 0)
  {
    v26.receiver = self;
    v26.super_class = NFTechnologyEvent;
    v6 = [(NFTechnologyEvent *)&v26 description];
    v15 = self->_technology;
    v16 = v15 & 1;
    v17 = (v15 >> 1) & 1;
    v18 = (v15 >> 2) & 1;
    v19 = (v15 >> 3) & 1;
    v20 = "NO";
    if (self->_vasSupported)
    {
      v21 = "YES";
    }

    else
    {
      v21 = "NO";
    }

    if (self->_touchIDRequired)
    {
      v20 = "YES";
    }

    v14 = [v4 initWithFormat:@"%@ { A=%d B=%d, F=%d SystemCode=0x%04x, VAS=%d, VAS Mode=0x%04x, VAS Supported=%s, TerminalType=%d, TouchIDRequired=%s }", v6, v16, v17, v18, self->_systemCode, v19, self->_valueAddedServiceMode, v21, self->_terminalType, v20];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = NFTechnologyEvent;
    v5 = [(NFTechnologyEvent *)&v25 description];
    v6 = v5;
    v7 = self->_technology;
    v8 = v7 & 1;
    v9 = (v7 >> 1) & 1;
    v10 = (v7 >> 2) & 1;
    v11 = (v7 >> 3) & 1;
    v12 = "NO";
    if (self->_vasSupported)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    if (self->_touchIDRequired)
    {
      v12 = "YES";
    }

    v14 = [v4 initWithFormat:@"%@ { A=%d B=%d, F=%d, ECP=%d, VAS Mode=0x%04x, VAS Supported=%s, TerminalType=%d, TouchIDRequired=%s }", v5, v8, v9, v10, v11, self->_valueAddedServiceMode, v13, self->_terminalType, v12, v24];
  }

  v22 = v14;

  return v22;
}

- (NFTechnologyEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NFTechnologyEvent;
  v5 = [(NFTechnologyEvent *)&v7 init];
  if (v5)
  {
    v5->_technology = [coderCopy decodeInt32ForKey:@"technologyMask"];
    v5->_valueAddedServiceMode = [coderCopy decodeInt32ForKey:@"valueAddedServiceMode"];
    v5->_systemCode = [coderCopy decodeInt32ForKey:@"systemCode"];
    v5->_vasSupported = [coderCopy decodeBoolForKey:@"vasSupported"];
    v5->_touchIDRequired = [coderCopy decodeBoolForKey:@"touchIDRequired"];
    v5->_terminalType = [coderCopy decodeInt32ForKey:@"terminalType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  technology = self->_technology;
  coderCopy = coder;
  [coderCopy encodeInt32:technology forKey:@"technologyMask"];
  [coderCopy encodeInt32:self->_valueAddedServiceMode forKey:@"valueAddedServiceMode"];
  [coderCopy encodeInt32:self->_systemCode forKey:@"systemCode"];
  [coderCopy encodeBool:self->_vasSupported forKey:@"vasSupported"];
  [coderCopy encodeBool:self->_touchIDRequired forKey:@"touchIDRequired"];
  [coderCopy encodeInt32:self->_terminalType forKey:@"terminalType"];
}

@end