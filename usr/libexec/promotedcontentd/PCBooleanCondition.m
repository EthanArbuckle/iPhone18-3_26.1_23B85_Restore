@interface PCBooleanCondition
- (PCBooleanCondition)initWithType:(id)a3 value:(id)a4 identifier:(id)a5;
- (id)shortCircuitBundleIdentifier:(id)a3 condition:(id)a4;
- (id)storageRepresentation;
@end

@implementation PCBooleanCondition

- (id)storageRepresentation
{
  v3 = +[APIDAccountProvider privateUserAccount];
  v4 = [v3 iTunesDSID];
  v5 = [(PCBooleanCondition *)self type];
  v6 = [(PCBooleanCondition *)self value];
  v7 = [(PCBooleanCondition *)self identifier];
  v8 = [NSString stringWithFormat:@"%@%@%@%@", v4, v5, v6, v7];

  return v8;
}

- (PCBooleanCondition)initWithType:(id)a3 value:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PCBooleanCondition;
  v12 = [(PCBooleanCondition *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, a3);
    objc_storeStrong(&v13->_value, a4);
    v14 = [(PCBooleanCondition *)v13 shortCircuitBundleIdentifier:v11 condition:v10];
    identifier = v13->_identifier;
    v13->_identifier = v14;
  }

  return v13;
}

- (id)shortCircuitBundleIdentifier:(id)a3 condition:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [&off_100494820 objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:v6];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = v11;
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

@end