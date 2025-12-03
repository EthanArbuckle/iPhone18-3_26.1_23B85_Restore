@interface MASDUserProfile
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForAllFields:(id)fields;
- (MASDUserProfile)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initNewProfileWith:(int64_t)with name:(id)name type:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MASDUserProfile

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MASDUserProfile *)self isEqualForAllFields:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualForAllFields:(id)fields
{
  fieldsCopy = fields;
  isAuthenticated = [(MASDUserProfile *)self isAuthenticated];
  if (isAuthenticated != [fieldsCopy isAuthenticated])
  {
    goto LABEL_5;
  }

  profileID = [(MASDUserProfile *)self profileID];
  if (profileID != [fieldsCopy profileID])
  {
    goto LABEL_5;
  }

  profileName = [(MASDUserProfile *)self profileName];
  profileName2 = [fieldsCopy profileName];
  v9 = [profileName isEqualToString:profileName2];

  if (v9)
  {
    profileType = [(MASDUserProfile *)self profileType];
    v11 = profileType == [fieldsCopy profileType];
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  return v11;
}

- (id)initNewProfileWith:(int64_t)with name:(id)name type:(unint64_t)type
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = MASDUserProfile;
  v10 = [(MASDUserProfile *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_isAuthenticated = 0;
    v10->_profileID = with;
    objc_storeStrong(&v10->_profileName, name);
    v11->_profileType = type;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  isAuthenticated = self->_isAuthenticated;
  coderCopy = coder;
  [coderCopy encodeBool:isAuthenticated forKey:@"_isAuthenticated"];
  [coderCopy encodeInteger:self->_profileID forKey:@"_profileID"];
  [coderCopy encodeObject:self->_profileName forKey:@"_profileName"];
  [coderCopy encodeInteger:self->_profileType forKey:@"_profileType"];
}

- (MASDUserProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MASDUserProfile;
  v5 = [(MASDUserProfile *)&v9 init];
  if (v5)
  {
    v5->_isAuthenticated = [coderCopy decodeBoolForKey:@"_isAuthenticated"];
    v5->_profileID = [coderCopy decodeIntegerForKey:@"_profileID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_profileName"];
    profileName = v5->_profileName;
    v5->_profileName = v6;

    v5->_profileType = [coderCopy decodeIntegerForKey:@"_profileType"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[8] = self->_isAuthenticated;
  *(v5 + 2) = self->_profileID;
  *(v5 + 4) = self->_profileType;
  v6 = [(NSString *)self->_profileName copyWithZone:zone];
  v7 = *(v5 + 3);
  *(v5 + 3) = v6;

  return v5;
}

@end