@interface MOBookmarkForBiomeStream
- (BOOL)isEqual:(id)a3;
- (MOBookmarkForBiomeStream)initWithBookmarkMO:(id)a3;
- (MOBookmarkForBiomeStream)initWithCoder:(id)a3;
- (MOBookmarkForBiomeStream)initWithIdentifier:(id)a3 creationDate:(id)a4 deviceIdentifier:(id)a5 data:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOBookmarkForBiomeStream

- (MOBookmarkForBiomeStream)initWithBookmarkMO:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 bookmarkIdentifier];
    v6 = [v4 creationDate];
    v7 = [v4 deviceIdentifier];
    v8 = [v4 data];

    self = [(MOBookmarkForBiomeStream *)self initWithIdentifier:v5 creationDate:v6 deviceIdentifier:v7 data:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MOBookmarkForBiomeStream)initWithIdentifier:(id)a3 creationDate:(id)a4 deviceIdentifier:(id)a5 data:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = MOBookmarkForBiomeStream;
  v15 = [(MOBookmarkForBiomeStream *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bookmarkIdentifier, a3);
    objc_storeStrong(&v16->_creationDate, a4);
    objc_storeStrong(&v16->_deviceIdentifier, a5);
    objc_storeStrong(&v16->_data, a6);
  }

  return v16;
}

- (id)description
{
  v3 = [(MOBookmarkForBiomeStream *)self bookmarkIdentifier];
  v4 = [(MOBookmarkForBiomeStream *)self deviceIdentifier];
  v5 = [(MOBookmarkForBiomeStream *)self creationDate];
  v6 = [NSString stringWithFormat:@"<MOBookmark ID, %@, deviceID, %@, creation date, %@>", v3, v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v5 = a3;
  [v5 encodeObject:data forKey:@"data"];
  [v5 encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [v5 encodeObject:self->_bookmarkIdentifier forKey:@"bookmarkIdentier"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
}

- (MOBookmarkForBiomeStream)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkIdentier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  v9 = [(MOBookmarkForBiomeStream *)self initWithIdentifier:v5 creationDate:v7 deviceIdentifier:v6 data:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOBookmarkForBiomeStream alloc];
  v5 = [(MOBookmarkForBiomeStream *)self bookmarkIdentifier];
  v6 = [(MOBookmarkForBiomeStream *)self creationDate];
  v7 = [(MOBookmarkForBiomeStream *)self deviceIdentifier];
  v8 = [(MOBookmarkForBiomeStream *)self data];
  v9 = [(MOBookmarkForBiomeStream *)v4 initWithIdentifier:v5 creationDate:v6 deviceIdentifier:v7 data:v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MOBookmarkForBiomeStream *)self bookmarkIdentifier];
      v7 = [(MOBookmarkForBiomeStream *)v5 bookmarkIdentifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end