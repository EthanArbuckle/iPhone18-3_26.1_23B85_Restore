@interface FMDAccessoryLocationStoreRecord
- (FMDAccessoryLocationStoreRecord)initWithCoder:(id)coder;
- (FMDAccessoryLocationStoreRecord)initWithRecordName:(id)name contextUUID:(id)d creationDate:(id)date protection:(unint64_t)protection;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDAccessoryLocationStoreRecord

- (FMDAccessoryLocationStoreRecord)initWithRecordName:(id)name contextUUID:(id)d creationDate:(id)date protection:(unint64_t)protection
{
  nameCopy = name;
  dCopy = d;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = FMDAccessoryLocationStoreRecord;
  v13 = [(FMDAccessoryLocationStoreRecord *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(FMDAccessoryLocationStoreRecord *)v13 setRecordName:nameCopy];
    [(FMDAccessoryLocationStoreRecord *)v14 setContextUUID:dCopy];
    [(FMDAccessoryLocationStoreRecord *)v14 setCreationDate:dateCopy];
    [(FMDAccessoryLocationStoreRecord *)v14 setProtection:protection];
  }

  return v14;
}

- (FMDAccessoryLocationStoreRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = FMDAccessoryLocationStoreRecord;
  v5 = [(FMDAccessoryLocationStoreRecord *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("recordName");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDAccessoryLocationStoreRecord *)v5 setRecordName:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("contextUUID");
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(FMDAccessoryLocationStoreRecord *)v5 setContextUUID:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("creationDate");
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(FMDAccessoryLocationStoreRecord *)v5 setCreationDate:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("protection");
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    -[FMDAccessoryLocationStoreRecord setProtection:](v5, "setProtection:", [v17 unsignedIntegerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  recordName = [(FMDAccessoryLocationStoreRecord *)self recordName];
  v6 = NSStringFromSelector("recordName");
  [coderCopy encodeObject:recordName forKey:v6];

  contextUUID = [(FMDAccessoryLocationStoreRecord *)self contextUUID];
  v8 = NSStringFromSelector("contextUUID");
  [coderCopy encodeObject:contextUUID forKey:v8];

  creationDate = [(FMDAccessoryLocationStoreRecord *)self creationDate];
  v10 = NSStringFromSelector("creationDate");
  [coderCopy encodeObject:creationDate forKey:v10];

  v12 = [NSNumber numberWithUnsignedInteger:[(FMDAccessoryLocationStoreRecord *)self protection]];
  v11 = NSStringFromSelector("protection");
  [coderCopy encodeObject:v12 forKey:v11];
}

- (id)description
{
  recordName = [(FMDAccessoryLocationStoreRecord *)self recordName];
  creationDate = [(FMDAccessoryLocationStoreRecord *)self creationDate];
  v5 = [NSString stringWithFormat:@"name %@ - creationDate %@ - protection %li", recordName, creationDate, [(FMDAccessoryLocationStoreRecord *)self protection]];

  return v5;
}

@end