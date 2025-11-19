@interface MRUPersonalizationInfo
- (MRUPersonalizationInfo)initWithCoder:(id)a3;
- (MRUPersonalizationInfo)initWithHardwareInfo:(id)a3 componentName:(id)a4 objectName:(id)a5 nonce:(id)a6;
- (MRUPersonalizationInfo)initWithHardwareInfo:(id)a3 componentName:(id)a4 objectName:(id)a5 nonce:(id)a6 tagNumber:(id)a7;
- (MRUPersonalizationInfo)initWithOptions:(id)a3 error:(id *)a4;
- (NSDictionary)asDictionary;
- (NSString)_componentNameSuffix;
- (NSString)_propertyNameSuffix;
- (NSString)boardIDPropertyName;
- (NSString)chipIDPropertyName;
- (NSString)ecidPropertyName;
- (NSString)noncePropertyName;
- (NSString)productionModePropertyName;
- (NSString)securityDomainPropertyName;
- (NSString)securityModePropertyName;
- (NSString)tag;
- (NSString)ticketName;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRUPersonalizationInfo

- (MRUPersonalizationInfo)initWithHardwareInfo:(id)a3 componentName:(id)a4 objectName:(id)a5 nonce:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = MRUPersonalizationInfo;
  v15 = [(MRUPersonalizationInfo *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_hardwareInfo, a3);
    objc_storeStrong(&v16->_componentName, a4);
    objc_storeStrong(&v16->_objectName, a5);
    objc_storeStrong(&v16->_nonce, a6);
    tagNumber = v16->_tagNumber;
    v16->_tagNumber = 0;
  }

  return v16;
}

- (MRUPersonalizationInfo)initWithHardwareInfo:(id)a3 componentName:(id)a4 objectName:(id)a5 nonce:(id)a6 tagNumber:(id)a7
{
  v13 = a7;
  v14 = [(MRUPersonalizationInfo *)self initWithHardwareInfo:a3 componentName:a4 objectName:a5 nonce:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_tagNumber, a7);
  }

  return v15;
}

- (MRUPersonalizationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MRUPersonalizationInfo;
  v5 = [(MRUPersonalizationInfo *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"hardwareInfo"];
    hardwareInfo = v5->_hardwareInfo;
    v5->_hardwareInfo = v6;

    v8 = [v4 decodeObjectForKey:@"componentName"];
    componentName = v5->_componentName;
    v5->_componentName = v8;

    v10 = [v4 decodeObjectForKey:@"objectName"];
    objectName = v5->_objectName;
    v5->_objectName = v10;

    v12 = [v4 decodeObjectForKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v12;

    if ([v4 containsValueForKey:@"tagNumber"])
    {
      v14 = [v4 decodeObjectForKey:@"tagNumber"];
    }

    else
    {
      v14 = 0;
    }

    tagNumber = v5->_tagNumber;
    v5->_tagNumber = v14;
  }

  return v5;
}

- (MRUPersonalizationInfo)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v31.receiver = self;
  v31.super_class = MRUPersonalizationInfo;
  v7 = [(MRUPersonalizationInfo *)&v31 init];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = [v6 objectForKeyedSubscript:@"HardwareInfo"];
  if (!v8)
  {
    if (*a4)
    {
      v40 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithFormat:@"No hardwareInfo in options dict"];
      v41 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v20];
    }

    goto LABEL_19;
  }

  v9 = v8;
  v30 = 0;
  v10 = [[MRUHardwareInfo alloc] initWithOptions:v8 error:&v30];
  v11 = v30;
  if (!v10)
  {
    if (*a4)
    {
      v38[0] = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithFormat:@"Failed to create hardwareInfo, options: %@", v9];
      v38[1] = NSUnderlyingErrorKey;
      v39[0] = v21;
      v39[1] = v11;
      v22 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
      *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:3 userInfo:v22];
    }

    goto LABEL_18;
  }

  objc_storeStrong(&v7->_hardwareInfo, v10);
  v12 = [v6 objectForKeyedSubscript:@"ComponentName"];
  if (!v12)
  {
    if (*a4)
    {
      v36 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithFormat:@"No component name in options dict"];
      v37 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v24];
    }

    goto LABEL_17;
  }

  v13 = v12;
  objc_storeStrong(&v7->_componentName, v12);
  v14 = [v6 objectForKeyedSubscript:@"ObjectName"];
  if (!v14)
  {
    if (*a4)
    {
      v34 = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithFormat:@"No object name in options dict"];
      v35 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v26];
    }

LABEL_17:
LABEL_18:

    goto LABEL_19;
  }

  v15 = v14;
  objc_storeStrong(&v7->_objectName, v14);
  v16 = [v6 objectForKeyedSubscript:@"Nonce"];
  if (v16)
  {
    objc_storeStrong(&v7->_nonce, v16);
    v17 = [v6 objectForKeyedSubscript:@"TagNumber"];
    tagNumber = v7->_tagNumber;
    v7->_tagNumber = v17;
  }

  else
  {
    if (!*a4)
    {
      goto LABEL_23;
    }

    v32 = NSLocalizedDescriptionKey;
    tagNumber = [NSString stringWithFormat:@"No nonce in options dict"];
    v33 = tagNumber;
    v29 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v29];
  }

LABEL_23:
  if (v16)
  {
LABEL_24:
    v27 = v7;
    goto LABEL_25;
  }

LABEL_19:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_hardwareInfo forKey:@"hardwareInfo"];
  [v5 encodeObject:self->_componentName forKey:@"componentName"];
  [v5 encodeObject:self->_objectName forKey:@"objectName"];
  [v5 encodeObject:self->_nonce forKey:@"nonce"];
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    [v5 encodeObject:tagNumber forKey:@"tagNumber"];
  }
}

- (NSDictionary)asDictionary
{
  v9[0] = @"HardwareInfo";
  v3 = [(MRUHardwareInfo *)self->_hardwareInfo asDictionary];
  v10 = v3;
  v11 = *&self->_componentName;
  v9[1] = @"ComponentName";
  v9[2] = @"ObjectName";
  v9[3] = @"Nonce";
  nonce = self->_nonce;
  v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:v9 count:4];
  v5 = [v4 mutableCopy];

  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    [v5 setObject:tagNumber forKey:@"TagNumber"];
  }

  v7 = [NSDictionary dictionaryWithDictionary:v5];

  return v7;
}

- (NSString)_componentNameSuffix
{
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v4 = [NSString stringWithFormat:@"%d", [(NSNumber *)tagNumber intValue]];
  }

  else
  {
    v4 = &stru_1000A1550;
  }

  return v4;
}

- (NSString)_propertyNameSuffix
{
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v4 = [NSString stringWithFormat:@", %d", [(NSNumber *)tagNumber intValue]];
  }

  else
  {
    v4 = &stru_1000A1550;
  }

  return v4;
}

- (NSString)ticketName
{
  componentName = self->_componentName;
  v3 = [(MRUPersonalizationInfo *)self _componentNameSuffix];
  v4 = [NSString stringWithFormat:@"%@%@, Ticket", componentName, v3];

  return v4;
}

- (NSString)tag
{
  componentName = self->_componentName;
  objectName = self->_objectName;
  v4 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [NSString stringWithFormat:@"%@, %@%@", componentName, objectName, v4];

  return v5;
}

- (NSString)boardIDPropertyName
{
  componentName = self->_componentName;
  v3 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, BoardID%@", componentName, v3];

  return v4;
}

- (NSString)chipIDPropertyName
{
  componentName = self->_componentName;
  v3 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, ChipID%@", componentName, v3];

  return v4;
}

- (NSString)ecidPropertyName
{
  componentName = self->_componentName;
  v3 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, ECID%@", componentName, v3];

  return v4;
}

- (NSString)noncePropertyName
{
  componentName = self->_componentName;
  v3 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, Nonce%@", componentName, v3];

  return v4;
}

- (NSString)productionModePropertyName
{
  componentName = self->_componentName;
  v3 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, ProductionMode%@", componentName, v3];

  return v4;
}

- (NSString)securityDomainPropertyName
{
  componentName = self->_componentName;
  v3 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, SecurityDomain%@", componentName, v3];

  return v4;
}

- (NSString)securityModePropertyName
{
  componentName = self->_componentName;
  v3 = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, SecurityMode%@", componentName, v3];

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"%@(\n"), v4;

  v6 = [(MRUHardwareInfo *)self->_hardwareInfo description];
  [v5 appendFormat:@"\thardwareInfo: %s\n", objc_msgSend(v6, "UTF8String")];

  v7 = [(MRUPersonalizationInfo *)self ticketName];
  [v5 appendFormat:@"\tticketName: %s\n", objc_msgSend(v7, "UTF8String")];

  v8 = [(MRUPersonalizationInfo *)self tag];
  [v5 appendFormat:@"\ttagName: %s\n", objc_msgSend(v8, "UTF8String")];

  v9 = [(NSData *)self->_nonce description];
  [v5 appendFormat:@"\tnonce: %s\n", objc_msgSend(v9, "UTF8String")];

  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v11 = [(NSNumber *)tagNumber description];
    [v5 appendFormat:@"\ttagNumber: %s\n", objc_msgSend(v11, "UTF8String")];
  }

  [v5 appendString:@""]);
  v12 = [NSString stringWithString:v5];

  return v12;
}

@end