@interface MOBookmarkForBiomeStream
- (BOOL)isEqual:(id)equal;
- (MOBookmarkForBiomeStream)initWithBookmarkMO:(id)o;
- (MOBookmarkForBiomeStream)initWithCoder:(id)coder;
- (MOBookmarkForBiomeStream)initWithIdentifier:(id)identifier creationDate:(id)date deviceIdentifier:(id)deviceIdentifier data:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOBookmarkForBiomeStream

- (MOBookmarkForBiomeStream)initWithBookmarkMO:(id)o
{
  if (o)
  {
    oCopy = o;
    bookmarkIdentifier = [oCopy bookmarkIdentifier];
    creationDate = [oCopy creationDate];
    deviceIdentifier = [oCopy deviceIdentifier];
    data = [oCopy data];

    self = [(MOBookmarkForBiomeStream *)self initWithIdentifier:bookmarkIdentifier creationDate:creationDate deviceIdentifier:deviceIdentifier data:data];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MOBookmarkForBiomeStream)initWithIdentifier:(id)identifier creationDate:(id)date deviceIdentifier:(id)deviceIdentifier data:(id)data
{
  identifierCopy = identifier;
  dateCopy = date;
  deviceIdentifierCopy = deviceIdentifier;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = MOBookmarkForBiomeStream;
  v15 = [(MOBookmarkForBiomeStream *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bookmarkIdentifier, identifier);
    objc_storeStrong(&v16->_creationDate, date);
    objc_storeStrong(&v16->_deviceIdentifier, deviceIdentifier);
    objc_storeStrong(&v16->_data, data);
  }

  return v16;
}

- (id)description
{
  bookmarkIdentifier = [(MOBookmarkForBiomeStream *)self bookmarkIdentifier];
  deviceIdentifier = [(MOBookmarkForBiomeStream *)self deviceIdentifier];
  creationDate = [(MOBookmarkForBiomeStream *)self creationDate];
  v6 = [NSString stringWithFormat:@"<MOBookmark ID, %@, deviceID, %@, creation date, %@>", bookmarkIdentifier, deviceIdentifier, creationDate];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"data"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [coderCopy encodeObject:self->_bookmarkIdentifier forKey:@"bookmarkIdentier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
}

- (MOBookmarkForBiomeStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkIdentier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  v9 = [(MOBookmarkForBiomeStream *)self initWithIdentifier:v5 creationDate:v7 deviceIdentifier:v6 data:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOBookmarkForBiomeStream alloc];
  bookmarkIdentifier = [(MOBookmarkForBiomeStream *)self bookmarkIdentifier];
  creationDate = [(MOBookmarkForBiomeStream *)self creationDate];
  deviceIdentifier = [(MOBookmarkForBiomeStream *)self deviceIdentifier];
  data = [(MOBookmarkForBiomeStream *)self data];
  v9 = [(MOBookmarkForBiomeStream *)v4 initWithIdentifier:bookmarkIdentifier creationDate:creationDate deviceIdentifier:deviceIdentifier data:data];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      bookmarkIdentifier = [(MOBookmarkForBiomeStream *)self bookmarkIdentifier];
      bookmarkIdentifier2 = [(MOBookmarkForBiomeStream *)v5 bookmarkIdentifier];

      v8 = [bookmarkIdentifier isEqual:bookmarkIdentifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end