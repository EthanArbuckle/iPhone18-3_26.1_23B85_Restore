@interface DMDPayload
- (id)description;
- (id)identifier;
@end

@implementation DMDPayload

- (id)identifier
{
  v2 = [(DMDPayload *)self payloadDictionary];
  v3 = [v2 objectForKeyedSubscript:@"Identifier"];

  return v3;
}

- (id)description
{
  v5[0] = @"objectID";
  v5[1] = @"identifier";
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

@end