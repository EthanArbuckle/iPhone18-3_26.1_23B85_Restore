@interface _HistoryItem
- (_HistoryItem)initWithDictionary:(id)dictionary;
- (id)asDictionary;
@end

@implementation _HistoryItem

- (_HistoryItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = _HistoryItem;
  v5 = [(_HistoryItem *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"localIdentifier"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [dictionaryCopy mutableCopy];
      v11 = [v10 objectForKeyedSubscript:@"timestamp"];
      [v11 timeIntervalSince1970];
      v12 = [NSNumber numberWithDouble:?];
      [v10 setObject:v12 forKeyedSubscript:@"timestamp"];

      v13 = [v10 copy];
      dictionaryCopy = v13;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
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
  localIdentifier = [(_HistoryItem *)self localIdentifier];
  v8[1] = @"timestamp";
  v9[0] = localIdentifier;
  timestamp = [(_HistoryItem *)self timestamp];
  [timestamp timeIntervalSince1970];
  v5 = [NSNumber numberWithDouble:?];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end