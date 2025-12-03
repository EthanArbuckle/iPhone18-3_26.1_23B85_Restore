@interface PCBooleanCondition
- (PCBooleanCondition)initWithType:(id)type value:(id)value identifier:(id)identifier;
- (id)shortCircuitBundleIdentifier:(id)identifier condition:(id)condition;
- (id)storageRepresentation;
@end

@implementation PCBooleanCondition

- (id)storageRepresentation
{
  v3 = +[APIDAccountProvider privateUserAccount];
  iTunesDSID = [v3 iTunesDSID];
  type = [(PCBooleanCondition *)self type];
  value = [(PCBooleanCondition *)self value];
  identifier = [(PCBooleanCondition *)self identifier];
  v8 = [NSString stringWithFormat:@"%@%@%@%@", iTunesDSID, type, value, identifier];

  return v8;
}

- (PCBooleanCondition)initWithType:(id)type value:(id)value identifier:(id)identifier
{
  typeCopy = type;
  valueCopy = value;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = PCBooleanCondition;
  v12 = [(PCBooleanCondition *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, type);
    objc_storeStrong(&v13->_value, value);
    v14 = [(PCBooleanCondition *)v13 shortCircuitBundleIdentifier:identifierCopy condition:valueCopy];
    identifier = v13->_identifier;
    v13->_identifier = v14;
  }

  return v13;
}

- (id)shortCircuitBundleIdentifier:(id)identifier condition:(id)condition
{
  identifierCopy = identifier;
  conditionCopy = condition;
  v7 = [&off_100494820 objectForKey:identifierCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:conditionCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = identifierCopy;
    }

    v12 = v11;
  }

  else
  {
    v12 = identifierCopy;
  }

  return v12;
}

@end