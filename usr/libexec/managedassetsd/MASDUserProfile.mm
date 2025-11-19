@interface MASDUserProfile
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForAllFields:(id)a3;
- (MASDUserProfile)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initNewProfileWith:(int64_t)a3 name:(id)a4 type:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MASDUserProfile

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MASDUserProfile *)self isEqualForAllFields:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualForAllFields:(id)a3
{
  v4 = a3;
  v5 = [(MASDUserProfile *)self isAuthenticated];
  if (v5 != [v4 isAuthenticated])
  {
    goto LABEL_5;
  }

  v6 = [(MASDUserProfile *)self profileID];
  if (v6 != [v4 profileID])
  {
    goto LABEL_5;
  }

  v7 = [(MASDUserProfile *)self profileName];
  v8 = [v4 profileName];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(MASDUserProfile *)self profileType];
    v11 = v10 == [v4 profileType];
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  return v11;
}

- (id)initNewProfileWith:(int64_t)a3 name:(id)a4 type:(unint64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = MASDUserProfile;
  v10 = [(MASDUserProfile *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_isAuthenticated = 0;
    v10->_profileID = a3;
    objc_storeStrong(&v10->_profileName, a4);
    v11->_profileType = a5;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  isAuthenticated = self->_isAuthenticated;
  v5 = a3;
  [v5 encodeBool:isAuthenticated forKey:@"_isAuthenticated"];
  [v5 encodeInteger:self->_profileID forKey:@"_profileID"];
  [v5 encodeObject:self->_profileName forKey:@"_profileName"];
  [v5 encodeInteger:self->_profileType forKey:@"_profileType"];
}

- (MASDUserProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MASDUserProfile;
  v5 = [(MASDUserProfile *)&v9 init];
  if (v5)
  {
    v5->_isAuthenticated = [v4 decodeBoolForKey:@"_isAuthenticated"];
    v5->_profileID = [v4 decodeIntegerForKey:@"_profileID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_profileName"];
    profileName = v5->_profileName;
    v5->_profileName = v6;

    v5->_profileType = [v4 decodeIntegerForKey:@"_profileType"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[8] = self->_isAuthenticated;
  *(v5 + 2) = self->_profileID;
  *(v5 + 4) = self->_profileType;
  v6 = [(NSString *)self->_profileName copyWithZone:a3];
  v7 = *(v5 + 3);
  *(v5 + 3) = v6;

  return v5;
}

@end