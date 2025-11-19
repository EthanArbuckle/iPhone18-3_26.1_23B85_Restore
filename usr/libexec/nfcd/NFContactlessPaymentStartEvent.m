@interface NFContactlessPaymentStartEvent
- (NFContactlessPaymentStartEvent)initWithCoder:(id)a3;
- (NFContactlessPaymentStartEvent)initWithDictionary:(id)a3;
- (id)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFContactlessPaymentStartEvent

- (NFContactlessPaymentStartEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NFContactlessPaymentStartEvent;
  v5 = [(NFContactlessPaymentStartEvent *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"endPointIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v10 = [v4 objectForKeyedSubscript:@"selectStatus"];
    v5->_selectStatus = [v10 unsignedShortValue];

    v11 = [v4 objectForKeyedSubscript:@"paymentMode"];
    v5->_paymentMode = [v11 unsignedShortValue];

    v12 = [v4 objectForKeyedSubscript:@"spIdentifier"];
    spIdentifier = v5->_spIdentifier;
    v5->_spIdentifier = v12;

    v14 = [v4 objectForKeyedSubscript:@"BackgroundTransaction"];
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

- (NFContactlessPaymentStartEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NFContactlessPaymentStartEvent;
  v5 = [(NFContactlessPaymentStartEvent *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endPointIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v5->_selectStatus = [v4 decodeInt32ForKey:@"selectStatus"];
    v5->_paymentMode = [v4 decodeInt32ForKey:@"paymentMode"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spIdentifier"];
    spIdentifier = v5->_spIdentifier;
    v5->_spIdentifier = v10;

    v5->_background = [v4 decodeBoolForKey:@"BackgroundTransaction"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  appletIdentifier = self->_appletIdentifier;
  v5 = a3;
  [v5 encodeObject:appletIdentifier forKey:@"appletIdentifier"];
  [v5 encodeObject:self->_keyIdentifier forKey:@"endPointIdentifier"];
  [v5 encodeInt32:self->_selectStatus forKey:@"selectStatus"];
  [v5 encodeInt32:self->_paymentMode forKey:@"paymentMode"];
  [v5 encodeObject:self->_spIdentifier forKey:@"spIdentifier"];
  [v5 encodeBool:self->_background forKey:@"BackgroundTransaction"];
}

@end