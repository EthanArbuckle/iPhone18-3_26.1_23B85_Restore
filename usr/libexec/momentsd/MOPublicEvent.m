@interface MOPublicEvent
- (MOPublicEvent)initWithCoder:(id)a3;
- (MOPublicEvent)initWithEventDictionary:(id)a3;
- (MOPublicEvent)initWithName:(id)a3 performers:(id)a4 venue:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOPublicEvent

- (MOPublicEvent)initWithName:(id)a3 performers:(id)a4 venue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MOPublicEvent;
  v11 = [(MOPublicEvent *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [[NSArray alloc] initWithArray:v9 copyItems:1];
    performers = v11->_performers;
    v11->_performers = v14;

    v16 = [v10 copy];
    venue = v11->_venue;
    v11->_venue = v16;
  }

  return v11;
}

- (MOPublicEvent)initWithEventDictionary:(id)a3
{
  v5 = a3;
  v6 = [v5 objectForKey:@"name"];
  v7 = [v5 objectForKey:@"performers"];
  v8 = [v5 objectForKey:@"venue"];

  if (v6)
  {
    self = [(MOPublicEvent *)self initWithName:v6 performers:v7 venue:v8];
    v9 = self;
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOPublicEvent initWithEventDictionary:v10];
    }

    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MOEventExtendedAtrributes.m" lineNumber:47 description:@"Invalid parameter not satisfying: name"];

    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = [(MOPublicEvent *)self name];
  v4 = [v3 UTF8String];
  v5 = [(MOPublicEvent *)self performers];
  v6 = [(MOPublicEvent *)self venue];
  v7 = [NSString stringWithFormat:@"<MOPublicEvent name, %s, performers, %@, venue, %@, >", v4, v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_performers forKey:@"performers"];
  [v5 encodeObject:self->_venue forKey:@"venue"];
}

- (MOPublicEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"performers"];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"venue"];

  v10 = [(MOPublicEvent *)self initWithName:v5 performers:v8 venue:v9];
  return v10;
}

@end