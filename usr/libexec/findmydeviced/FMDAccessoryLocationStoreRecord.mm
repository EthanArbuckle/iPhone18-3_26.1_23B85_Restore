@interface FMDAccessoryLocationStoreRecord
- (FMDAccessoryLocationStoreRecord)initWithCoder:(id)a3;
- (FMDAccessoryLocationStoreRecord)initWithRecordName:(id)a3 contextUUID:(id)a4 creationDate:(id)a5 protection:(unint64_t)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDAccessoryLocationStoreRecord

- (FMDAccessoryLocationStoreRecord)initWithRecordName:(id)a3 contextUUID:(id)a4 creationDate:(id)a5 protection:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = FMDAccessoryLocationStoreRecord;
  v13 = [(FMDAccessoryLocationStoreRecord *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(FMDAccessoryLocationStoreRecord *)v13 setRecordName:v10];
    [(FMDAccessoryLocationStoreRecord *)v14 setContextUUID:v11];
    [(FMDAccessoryLocationStoreRecord *)v14 setCreationDate:v12];
    [(FMDAccessoryLocationStoreRecord *)v14 setProtection:a6];
  }

  return v14;
}

- (FMDAccessoryLocationStoreRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FMDAccessoryLocationStoreRecord;
  v5 = [(FMDAccessoryLocationStoreRecord *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("recordName");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDAccessoryLocationStoreRecord *)v5 setRecordName:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("contextUUID");
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(FMDAccessoryLocationStoreRecord *)v5 setContextUUID:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("creationDate");
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(FMDAccessoryLocationStoreRecord *)v5 setCreationDate:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("protection");
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    -[FMDAccessoryLocationStoreRecord setProtection:](v5, "setProtection:", [v17 unsignedIntegerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDAccessoryLocationStoreRecord *)self recordName];
  v6 = NSStringFromSelector("recordName");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(FMDAccessoryLocationStoreRecord *)self contextUUID];
  v8 = NSStringFromSelector("contextUUID");
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(FMDAccessoryLocationStoreRecord *)self creationDate];
  v10 = NSStringFromSelector("creationDate");
  [v4 encodeObject:v9 forKey:v10];

  v12 = [NSNumber numberWithUnsignedInteger:[(FMDAccessoryLocationStoreRecord *)self protection]];
  v11 = NSStringFromSelector("protection");
  [v4 encodeObject:v12 forKey:v11];
}

- (id)description
{
  v3 = [(FMDAccessoryLocationStoreRecord *)self recordName];
  v4 = [(FMDAccessoryLocationStoreRecord *)self creationDate];
  v5 = [NSString stringWithFormat:@"name %@ - creationDate %@ - protection %li", v3, v4, [(FMDAccessoryLocationStoreRecord *)self protection]];

  return v5;
}

@end