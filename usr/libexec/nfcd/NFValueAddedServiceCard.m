@interface NFValueAddedServiceCard
- (NFValueAddedServiceCard)initWithCoder:(id)a3;
- (id)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setIdentifier:(id)a3;
@end

@implementation NFValueAddedServiceCard

- (id)description
{
  v3 = [NSString alloc];
  v7.receiver = self;
  v7.super_class = NFValueAddedServiceCard;
  v4 = [(NFValueAddedServiceCard *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ { merchantID=%@ type=%d token=%@ passData=%@ userInterventionRequired=%d }", v4, self->_identifier, self->_type, self->_token, self->_data, self->_userInterventionRequired];

  return v5;
}

- (id)asDictionary
{
  v3 = [NSMutableDictionary alloc];
  identifier = self->_identifier;
  v5 = [NSNumber numberWithInt:self->_type];
  token = self->_token;
  data = self->_data;
  v8 = [NSNumber numberWithBool:self->_userInterventionRequired];
  v9 = [v3 initWithObjectsAndKeys:{identifier, @"merchantID", v5, @"type", token, @"token", data, @"passData", v8, @"userInterventionRequired", 0}];

  return v9;
}

- (NFValueAddedServiceCard)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NFValueAddedServiceCard;
  v5 = [(NFValueAddedServiceCard *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [v4 decodeInt32ForKey:@"type"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v10;

    v5->_userInterventionRequired = [v4 decodeBoolForKey:@"userInterventionRequired"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInt32:self->_type forKey:@"type"];
  [v5 encodeObject:self->_token forKey:@"token"];
  [v5 encodeObject:self->_data forKey:@"data"];
  [v5 encodeBool:self->_userInterventionRequired forKey:@"userInterventionRequired"];
}

- (void)setIdentifier:(id)a3
{
  v9 = a3;
  v4 = [v9 length];
  if (v4 > 0x1F)
  {
    v8 = v9;
    identifier = self->_identifier;
    self->_identifier = v8;
  }

  else
  {
    v5 = v4;
    v6 = [v9 mutableCopy];
    [(NSData *)v6 increaseLengthBy:32 - v5];
    identifier = self->_identifier;
    self->_identifier = v6;
  }
}

@end