@interface UARPTatsuObjectProperties
- (UARPTatsuObjectProperties)initWithObjectPropertyDictionary:(id)dictionary;
- (id)description;
@end

@implementation UARPTatsuObjectProperties

- (UARPTatsuObjectProperties)initWithObjectPropertyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = UARPTatsuObjectProperties;
  v5 = [(UARPTatsuObjectProperties *)&v31 init];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"FTAB Subfile"];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_38:

      v27 = 0;
      goto LABEL_39;
    }

    v7 = [v6 copy];
    ftabSubfile = v5->_ftabSubfile;
    v5->_ftabSubfile = v7;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"Key Name"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_37:

    goto LABEL_38;
  }

  v10 = [v9 copy];
  keyName = v5->_keyName;
  v5->_keyName = v10;

  v12 = [dictionaryCopy objectForKeyedSubscript:@"Needs EPRO"];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_36:

      goto LABEL_37;
    }

    v5->_needsEPRO = [v12 BOOLValue];
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"Needs ESEC"];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_35:

      goto LABEL_36;
    }

    v5->_needsESEC = [v13 BOOLValue];
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"Needs SHA256"];
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_34:

      goto LABEL_35;
    }

    v5->_needsSHA256 = 1;
    v15 = [v14 copy];
    digestKeyName = v5->_digestKeyName;
    v5->_digestKeyName = v15;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"Needs SHA384"];
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_33:

      goto LABEL_34;
    }

    v5->_needsSHA384 = 1;
    v18 = [v17 copy];
    v19 = v5->_digestKeyName;
    v5->_digestKeyName = v18;
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"Needs SHA512"];
  if (!v20)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_33;
  }

  v5->_needsSHA512 = 1;
  v21 = [v20 copy];
  v22 = v5->_digestKeyName;
  v5->_digestKeyName = v21;

LABEL_22:
  v30 = v20;
  v23 = [dictionaryCopy objectForKeyedSubscript:@"Needs Trusted"];
  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_32;
    }

    v5->_needsTrusted = [v23 BOOLValue];
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:{@"Payload 4CC", v23}];
  if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_32:
    goto LABEL_33;
  }

  v25 = [[UARPComponentTag alloc] initWithString:v24];
  componentTag = v5->_componentTag;
  v5->_componentTag = v25;

LABEL_28:
  v27 = v5;
LABEL_39:

  return v27;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"Key Name: %@", self->_keyName];
  [v3 appendFormat:@", 4CC: %@", self->_componentTag];
  if (self->_ftabSubfile)
  {
    [v3 appendFormat:@", FTAB Subfile: %@", self->_ftabSubfile];
  }

  if (self->_needsEPRO)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@", EPRO %@", v4];
  if (self->_needsESEC)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@", ESEC %@", v5];
  if (self->_needsTrusted)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@", Trusted %@", v6];
  if (self->_needsSHA256)
  {
    [v3 appendFormat:@", SHA-256 as %@", self->_digestKeyName];
  }

  if (self->_needsSHA384)
  {
    [v3 appendFormat:@", SHA-384 as %@", self->_digestKeyName];
  }

  if (self->_needsSHA512)
  {
    [v3 appendFormat:@", SHA-512 as %@", self->_digestKeyName];
  }

  return v3;
}

@end