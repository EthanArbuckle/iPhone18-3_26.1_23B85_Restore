@interface NFDigitalCarKeyStartEvent
- (NFDigitalCarKeyStartEvent)initWithCoder:(id)coder;
- (id)asDictionary;
- (id)description;
- (id)initFromContactlessPaymentStartEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFDigitalCarKeyStartEvent

- (id)initFromContactlessPaymentStartEvent:(id)event
{
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = NFDigitalCarKeyStartEvent;
  v5 = [(NFDigitalCarKeyStartEvent *)&v13 init];
  if (v5)
  {
    appletIdentifier = [eventCopy appletIdentifier];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = appletIdentifier;

    keyIdentifier = [eventCopy keyIdentifier];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = keyIdentifier;

    spIdentifier = [eventCopy spIdentifier];
    spIdentifier = v5->_spIdentifier;
    v5->_spIdentifier = spIdentifier;
  }

  return v5;
}

- (id)description
{
  v3 = [NSString alloc];
  v7.receiver = self;
  v7.super_class = NFDigitalCarKeyStartEvent;
  v4 = [(NFDigitalCarKeyStartEvent *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ { applet=%@ endpoint=%@ spid=%@ }", v4, self->_appletIdentifier, self->_keyIdentifier, self->_spIdentifier];

  return v5;
}

- (id)asDictionary
{
  appletIdentifier = self->_appletIdentifier;
  v7[0] = @"applet";
  v7[1] = @"endpoint";
  keyIdentifier = self->_keyIdentifier;
  spIdentifier = self->_spIdentifier;
  v8[0] = appletIdentifier;
  v8[1] = keyIdentifier;
  v7[2] = @"spIdentifier";
  v8[2] = spIdentifier;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (NFDigitalCarKeyStartEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NFDigitalCarKeyStartEvent;
  v5 = [(NFDigitalCarKeyStartEvent *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spIdentifier"];
    spIdentifier = v5->_spIdentifier;
    v5->_spIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appletIdentifier = self->_appletIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:appletIdentifier forKey:@"appletIdentifier"];
  [coderCopy encodeObject:self->_keyIdentifier forKey:@"keyIdentifier"];
  [coderCopy encodeObject:self->_spIdentifier forKey:@"spIdentifier"];
}

@end