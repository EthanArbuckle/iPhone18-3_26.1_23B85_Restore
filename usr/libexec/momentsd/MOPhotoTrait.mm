@interface MOPhotoTrait
- (MOPhotoTrait)initWithCoder:(id)a3;
- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 labelType:(id)a5 holidayIdentifier:(id)a6 meaningIdentifier:(id)a7 relevantAssetUUIDs:(id)a8 associatedPersonLocalIdentifiers:(id)a9;
- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 labelType:(id)a5 holidayIdentifier:(id)a6 relevantAssetUUIDs:(id)a7;
- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 relevantAssetUUIDs:(id)a5;
- (MOPhotoTrait)initWithPhotoTraitMO:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOPhotoTrait

- (id)description
{
  v3 = [(MOPhotoTrait *)self identifier];
  v4 = [(MOPhotoTrait *)self name];
  v5 = [(MOPhotoTrait *)self labelType];
  v6 = [(MOPhotoTrait *)self holidayIdentifier];
  v7 = [(MOPhotoTrait *)self meaningIdentifier];
  v8 = [(MOPhotoTrait *)self relevantAssetUUIDs];
  v9 = [(MOPhotoTrait *)self associatedPersonLocalIdentifiers];
  v10 = [NSString stringWithFormat:@"<MOPhotoTrait localIdentifier, %@, name, %@, labelType, %@, holidayIdentifier, %@, meaningIdentifier, %@, relevantAssetUUIDs, %@, associatedPersonLocalIdentifiers, %@, >", v3, v4, v5, v6, v7, v8, v9];

  return v10;
}

- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 relevantAssetUUIDs:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 copy];
  v11 = [(MOPhotoTrait *)self initWithIdentifier:v9 name:v8 labelType:0 holidayIdentifier:0 meaningIdentifier:0 relevantAssetUUIDs:v10 associatedPersonLocalIdentifiers:0];

  return v11;
}

- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 labelType:(id)a5 holidayIdentifier:(id)a6 relevantAssetUUIDs:(id)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [a7 copy];
  v17 = [(MOPhotoTrait *)self initWithIdentifier:v15 name:v14 labelType:v13 holidayIdentifier:v12 meaningIdentifier:0 relevantAssetUUIDs:v16 associatedPersonLocalIdentifiers:0];

  return v17;
}

- (MOPhotoTrait)initWithIdentifier:(id)a3 name:(id)a4 labelType:(id)a5 holidayIdentifier:(id)a6 meaningIdentifier:(id)a7 relevantAssetUUIDs:(id)a8 associatedPersonLocalIdentifiers:(id)a9
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v30.receiver = self;
  v30.super_class = MOPhotoTrait;
  v19 = [(MOPhotoTrait *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_name, a4);
    objc_storeStrong(&v20->_labelType, a5);
    objc_storeStrong(&v20->_holidayIdentifier, a6);
    objc_storeStrong(&v20->_meaningIdentifier, a7);
    v21 = [v17 copy];
    relevantAssetUUIDs = v20->_relevantAssetUUIDs;
    v20->_relevantAssetUUIDs = v21;

    v23 = [v18 copy];
    associatedPersonLocalIdentifiers = v20->_associatedPersonLocalIdentifiers;
    v20->_associatedPersonLocalIdentifiers = v23;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_labelType forKey:@"labelType"];
  [v5 encodeObject:self->_holidayIdentifier forKey:@"holidayIdentifier"];
  [v5 encodeObject:self->_meaningIdentifier forKey:@"meaningIdentifier"];
  [v5 encodeObject:self->_relevantAssetUUIDs forKey:@"relevantAssetUUIDs"];
  [v5 encodeObject:self->_associatedPersonLocalIdentifiers forKey:@"associatedPersonLocalIdentifiers"];
}

- (MOPhotoTrait)initWithCoder:(id)a3
{
  v3 = a3;
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"labelType"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"holidayIdentifier"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"meaningIdentifier"];
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v10 = [v3 decodeObjectOfClasses:v9 forKey:@"relevantAssetUUIDs"];

  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"associatedPersonLocalIdentifiers"];

  v14 = [(MOPhotoTrait *)self initWithIdentifier:v16 name:v4 labelType:v5 holidayIdentifier:v6 meaningIdentifier:v7 relevantAssetUUIDs:v10 associatedPersonLocalIdentifiers:v13];
  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15 = [MOPhotoTrait alloc];
  v20 = [(MOPhotoTrait *)self identifier];
  v4 = [v20 copy];
  v19 = [(MOPhotoTrait *)self name];
  v5 = [v19 copy];
  v18 = [(MOPhotoTrait *)self labelType];
  v6 = [v18 copy];
  v17 = [(MOPhotoTrait *)self holidayIdentifier];
  v7 = [v17 copy];
  v8 = [(MOPhotoTrait *)self meaningIdentifier];
  v9 = [v8 copy];
  v10 = [(MOPhotoTrait *)self relevantAssetUUIDs];
  v11 = [v10 copy];
  v12 = [(MOPhotoTrait *)self associatedPersonLocalIdentifiers];
  v13 = [v12 copy];
  v16 = [(MOPhotoTrait *)v15 initWithIdentifier:v4 name:v5 labelType:v6 holidayIdentifier:v7 meaningIdentifier:v9 relevantAssetUUIDs:v11 associatedPersonLocalIdentifiers:v13];

  return v16;
}

- (MOPhotoTrait)initWithPhotoTraitMO:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 identifier];
    v6 = [v4 name];
    v7 = [v4 labelType];
    v8 = [v4 holidayIdentifier];
    v9 = [v4 meaningIdentifier];
    v10 = [v4 relevantAssetUUIDs];
    v11 = [v4 associatedPersonLocalIdentifiers];

    self = [(MOPhotoTrait *)self initWithIdentifier:v5 name:v6 labelType:v7 holidayIdentifier:v8 meaningIdentifier:v9 relevantAssetUUIDs:v10 associatedPersonLocalIdentifiers:v11];
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end