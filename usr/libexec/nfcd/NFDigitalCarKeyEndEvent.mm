@interface NFDigitalCarKeyEndEvent
- (NFDigitalCarKeyEndEvent)initWithCoder:(id)coder;
- (id)asDictionary;
- (id)description;
- (id)initFromContactlessPaymentEndEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFDigitalCarKeyEndEvent

- (id)initFromContactlessPaymentEndEvent:(id)event
{
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = NFDigitalCarKeyEndEvent;
  v5 = [(NFDigitalCarKeyEndEvent *)&v15 init];
  if (v5)
  {
    appletIdentifier = [eventCopy appletIdentifier];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = appletIdentifier;

    keyIdentifier = [eventCopy keyIdentifier];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = keyIdentifier;

    v5->_didError = [eventCopy didError];
    v5->_result = [eventCopy result];
    parsedInfo = [eventCopy parsedInfo];

    if (parsedInfo)
    {
      parsedInfo2 = [eventCopy parsedInfo];
      v12 = [parsedInfo2 objectForKeyedSubscript:@"PairingModeBrandCode"];
      brandCode = v5->_brandCode;
      v5->_brandCode = v12;
    }
  }

  return v5;
}

- (id)description
{
  v3 = [NSString alloc];
  v11.receiver = self;
  v11.super_class = NFDigitalCarKeyEndEvent;
  v4 = [(NFDigitalCarKeyEndEvent *)&v11 description];
  appletIdentifier = self->_appletIdentifier;
  keyIdentifier = self->_keyIdentifier;
  if (self->_didError)
  {
    v7 = @"yes";
  }

  else
  {
    v7 = @"no";
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_result];
  v9 = [v3 initWithFormat:@"%@ { applet=%@ endpoint=%@ didError=%@ result=%@ brandCode=%@ }", v4, appletIdentifier, keyIdentifier, v7, v8, self->_brandCode];

  return v9;
}

- (id)asDictionary
{
  appletIdentifier = self->_appletIdentifier;
  v10[0] = @"applet";
  v10[1] = @"endpoint";
  keyIdentifier = self->_keyIdentifier;
  v11[0] = appletIdentifier;
  v11[1] = keyIdentifier;
  v5 = @"yes";
  if (!self->_didError)
  {
    v5 = @"no";
  }

  v11[2] = v5;
  v10[2] = @"didError";
  v10[3] = @"result";
  v6 = [NSNumber numberWithUnsignedInt:self->_result];
  v10[4] = @"brandCode";
  brandCode = self->_brandCode;
  v11[3] = v6;
  v11[4] = brandCode;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (NFDigitalCarKeyEndEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NFDigitalCarKeyEndEvent;
  v5 = [(NFDigitalCarKeyEndEvent *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v5->_didError = [coderCopy decodeBoolForKey:@"didError"];
    v5->_result = [coderCopy decodeInt32ForKey:@"result"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brandCode"];
    brandCode = v5->_brandCode;
    v5->_brandCode = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appletIdentifier = self->_appletIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:appletIdentifier forKey:@"appletIdentifier"];
  [coderCopy encodeObject:self->_keyIdentifier forKey:@"keyIdentifier"];
  [coderCopy encodeBool:self->_didError forKey:@"didError"];
  [coderCopy encodeInt32:self->_result forKey:@"result"];
  [coderCopy encodeObject:self->_brandCode forKey:@"brandCode"];
}

@end