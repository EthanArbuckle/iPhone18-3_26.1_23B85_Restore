@interface SDActivityKey
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictRepresentation;
- (SDActivityKey)initWithDictRepresentation:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation SDActivityKey

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(SDActivityKey *)self keyIdentifier];
  v6 = [v5 UUIDString];
  v7 = [(SDActivityKey *)self dateCreated];
  v8 = [NSString stringWithFormat:@"<%@: %p, keyIdentifier:%@, dateCreated:%@, lastUsedCounter:%hu>", v4, self, v6, v7, [(SDActivityKey *)self lastUsedCounter]];

  return v8;
}

- (SDActivityKey)initWithDictRepresentation:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SDActivityKey;
  v5 = [(SDActivityKey *)&v19 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 objectForKeyedSubscript:@"keyData"];
  if ([v6 length] == 32)
  {
    v7 = [v6 mutableCopy];
    keyData = v5->_keyData;
    v5->_keyData = v7;

    v9 = [NSUUID alloc];
    v10 = [v4 objectForKeyedSubscript:@"keyIdentifier"];
    v11 = [v9 initWithUUIDString:v10];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v11;

    v13 = [v4 objectForKeyedSubscript:@"dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v13;

    v15 = [v4 objectForKeyedSubscript:@"lastUsedCounter"];
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
  v3 = [(SDActivityKey *)self keyData];
  [v3 length];
  v4 = [(SDActivityKey *)self keyData];
  [v4 mutableBytes];
  cc_clear();

  v5.receiver = self;
  v5.super_class = SDActivityKey;
  [(SDActivityKey *)&v5 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SDActivityKey *)self keyData];
    v7 = [v5 keyData];

    v8 = [v6 isEqual:v7];
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
  v4 = [(SDActivityKey *)self keyData];
  [v3 setObject:v4 forKeyedSubscript:@"keyData"];

  v5 = [(SDActivityKey *)self keyIdentifier];
  v6 = [v5 UUIDString];
  [v3 setObject:v6 forKeyedSubscript:@"keyIdentifier"];

  v7 = [(SDActivityKey *)self dateCreated];
  [v3 setObject:v7 forKeyedSubscript:@"dateCreated"];

  v8 = [NSNumber numberWithUnsignedShort:[(SDActivityKey *)self lastUsedCounter]];
  [v3 setObject:v8 forKeyedSubscript:@"lastUsedCounter"];

  return v3;
}

@end