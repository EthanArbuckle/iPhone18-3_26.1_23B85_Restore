@interface SDActivityKey
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictRepresentation;
- (SDActivityKey)initWithDictRepresentation:(id)representation;
- (id)description;
- (void)dealloc;
@end

@implementation SDActivityKey

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  keyIdentifier = [(SDActivityKey *)self keyIdentifier];
  uUIDString = [keyIdentifier UUIDString];
  dateCreated = [(SDActivityKey *)self dateCreated];
  v8 = [NSString stringWithFormat:@"<%@: %p, keyIdentifier:%@, dateCreated:%@, lastUsedCounter:%hu>", v4, self, uUIDString, dateCreated, [(SDActivityKey *)self lastUsedCounter]];

  return v8;
}

- (SDActivityKey)initWithDictRepresentation:(id)representation
{
  representationCopy = representation;
  v19.receiver = self;
  v19.super_class = SDActivityKey;
  v5 = [(SDActivityKey *)&v19 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [representationCopy objectForKeyedSubscript:@"keyData"];
  if ([v6 length] == 32)
  {
    v7 = [v6 mutableCopy];
    keyData = v5->_keyData;
    v5->_keyData = v7;

    v9 = [NSUUID alloc];
    v10 = [representationCopy objectForKeyedSubscript:@"keyIdentifier"];
    v11 = [v9 initWithUUIDString:v10];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v11;

    v13 = [representationCopy objectForKeyedSubscript:@"dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v13;

    v15 = [representationCopy objectForKeyedSubscript:@"lastUsedCounter"];
    v5->_lastUsedCounter = [v15 integerValue];

LABEL_4:
    v16 = v5;
    goto LABEL_8;
  }

  v17 = handoff_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1001B580C(v6, v17);
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (void)dealloc
{
  keyData = [(SDActivityKey *)self keyData];
  [keyData length];
  keyData2 = [(SDActivityKey *)self keyData];
  [keyData2 mutableBytes];
  cc_clear();

  v5.receiver = self;
  v5.super_class = SDActivityKey;
  [(SDActivityKey *)&v5 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    keyData = [(SDActivityKey *)self keyData];
    keyData2 = [v5 keyData];

    v8 = [keyData isEqual:keyData2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSDictionary)dictRepresentation
{
  v3 = objc_opt_new();
  keyData = [(SDActivityKey *)self keyData];
  [v3 setObject:keyData forKeyedSubscript:@"keyData"];

  keyIdentifier = [(SDActivityKey *)self keyIdentifier];
  uUIDString = [keyIdentifier UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"keyIdentifier"];

  dateCreated = [(SDActivityKey *)self dateCreated];
  [v3 setObject:dateCreated forKeyedSubscript:@"dateCreated"];

  v8 = [NSNumber numberWithUnsignedShort:[(SDActivityKey *)self lastUsedCounter]];
  [v3 setObject:v8 forKeyedSubscript:@"lastUsedCounter"];

  return v3;
}

@end