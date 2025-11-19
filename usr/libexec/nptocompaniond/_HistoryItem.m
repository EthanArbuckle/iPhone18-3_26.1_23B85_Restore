@interface _HistoryItem
- (_HistoryItem)initWithDictionary:(id)a3;
- (id)asDictionary;
@end

@implementation _HistoryItem

- (_HistoryItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _HistoryItem;
  v5 = [(_HistoryItem *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"localIdentifier"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v4 mutableCopy];
      v11 = [v10 objectForKeyedSubscript:@"timestamp"];
      [v11 timeIntervalSince1970];
      v12 = [NSNumber numberWithDouble:?];
      [v10 setObject:v12 forKeyedSubscript:@"timestamp"];

      v13 = [v10 copy];
      v4 = v13;
    }

    v14 = [v4 objectForKeyedSubscript:@"timestamp"];
    [v14 doubleValue];
    v15 = [NSDate dateWithTimeIntervalSince1970:?];
    timestamp = v5->_timestamp;
    v5->_timestamp = v15;
  }

  return v5;
}

- (id)asDictionary
{
  v8[0] = @"localIdentifier";
  v3 = [(_HistoryItem *)self localIdentifier];
  v8[1] = @"timestamp";
  v9[0] = v3;
  v4 = [(_HistoryItem *)self timestamp];
  [v4 timeIntervalSince1970];
  v5 = [NSNumber numberWithDouble:?];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end