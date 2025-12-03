@interface RPNearFieldValidationPayload
- (RPNearFieldValidationPayload)initWithDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
@end

@implementation RPNearFieldValidationPayload

- (RPNearFieldValidationPayload)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = RPNearFieldValidationPayload;
  v5 = [(RPNearFieldMessagePayload *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = NSDictionaryGetNSNumber();
    if (v6)
    {
      v7 = NSDictionaryGetNSNumber();
      supportsApplicationLabel = v5->_supportsApplicationLabel;
      v5->_supportsApplicationLabel = v7;

      v5->_isKnownIdentity = [v6 BOOLValue];
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v9[0] = @"RPKnownIdentityKey";
  v3 = [NSNumber numberWithBool:self->_isKnownIdentity];
  v9[1] = @"RPSupportsApplicationLabelKey";
  v10[0] = v3;
  v10[1] = self->_supportsApplicationLabel;
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v8.receiver = self;
  v8.super_class = RPNearFieldValidationPayload;
  dictionaryRepresentation = [(RPNearFieldMessagePayload *)&v8 dictionaryRepresentation];
  v6 = [NSMutableDictionary dictionaryWithDictionary:dictionaryRepresentation];

  [v6 addEntriesFromDictionary:v4];

  return v6;
}

@end