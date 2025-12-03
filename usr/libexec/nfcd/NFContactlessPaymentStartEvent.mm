@interface NFContactlessPaymentStartEvent
- (NFContactlessPaymentStartEvent)initWithCoder:(id)coder;
- (NFContactlessPaymentStartEvent)initWithDictionary:(id)dictionary;
- (id)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFContactlessPaymentStartEvent

- (NFContactlessPaymentStartEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = NFContactlessPaymentStartEvent;
  v5 = [(NFContactlessPaymentStartEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"endPointIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"selectStatus"];
    v5->_selectStatus = [v10 unsignedShortValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"paymentMode"];
    v5->_paymentMode = [v11 unsignedShortValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"spIdentifier"];
    spIdentifier = v5->_spIdentifier;
    v5->_spIdentifier = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"BackgroundTransaction"];
    v5->_background = [v14 BOOLValue];
  }

  return v5;
}

- (id)description
{
  v3 = [NSString alloc];
  v7.receiver = self;
  v7.super_class = NFContactlessPaymentStartEvent;
  v4 = [(NFContactlessPaymentStartEvent *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ { applet=%@ endpoint=%@ select=0x%04x mode=0x%04x spid=%@ background=%d }", v4, self->_appletIdentifier, self->_keyIdentifier, self->_selectStatus, self->_paymentMode, self->_spIdentifier, self->_background];

  return v5;
}

- (id)asDictionary
{
  v3 = [NSDictionary alloc];
  appletIdentifier = self->_appletIdentifier;
  keyIdentifier = self->_keyIdentifier;
  v6 = [NSNumber numberWithUnsignedShort:self->_selectStatus];
  v7 = [NSNumber numberWithUnsignedShort:self->_paymentMode];
  spIdentifier = self->_spIdentifier;
  v9 = [NSNumber numberWithBool:self->_background];
  v10 = [v3 initWithObjectsAndKeys:{appletIdentifier, @"applet", keyIdentifier, @"endpoint", v6, @"selectStatus", v7, @"mode", spIdentifier, @"spIdentifier", v9, @"background", 0}];

  return v10;
}

- (NFContactlessPaymentStartEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NFContactlessPaymentStartEvent;
  v5 = [(NFContactlessPaymentStartEvent *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endPointIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v5->_selectStatus = [coderCopy decodeInt32ForKey:@"selectStatus"];
    v5->_paymentMode = [coderCopy decodeInt32ForKey:@"paymentMode"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spIdentifier"];
    spIdentifier = v5->_spIdentifier;
    v5->_spIdentifier = v10;

    v5->_background = [coderCopy decodeBoolForKey:@"BackgroundTransaction"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appletIdentifier = self->_appletIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:appletIdentifier forKey:@"appletIdentifier"];
  [coderCopy encodeObject:self->_keyIdentifier forKey:@"endPointIdentifier"];
  [coderCopy encodeInt32:self->_selectStatus forKey:@"selectStatus"];
  [coderCopy encodeInt32:self->_paymentMode forKey:@"paymentMode"];
  [coderCopy encodeObject:self->_spIdentifier forKey:@"spIdentifier"];
  [coderCopy encodeBool:self->_background forKey:@"BackgroundTransaction"];
}

@end