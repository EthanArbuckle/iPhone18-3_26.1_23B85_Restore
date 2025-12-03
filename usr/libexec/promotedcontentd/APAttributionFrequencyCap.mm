@interface APAttributionFrequencyCap
- (APAttributionFrequencyCap)initWithDictionary:(id)dictionary;
- (APAttributionFrequencyCap)initWithIdentifier:(id)identifier;
- (id)description;
- (id)dictionaryRepresentation;
- (id)splitCapData:(id)data;
@end

@implementation APAttributionFrequencyCap

- (APAttributionFrequencyCap)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = APAttributionFrequencyCap;
  v5 = [(APAttributionFrequencyCap *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(APAttributionFrequencyCap *)v5 splitCapData:identifierCopy];
    v8 = [v7 objectForKeyedSubscript:@"ADIdentifierKey"];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [v7 objectForKeyedSubscript:@"ADAdMetadataKey"];
    adMetadata = v6->_adMetadata;
    v6->_adMetadata = v10;

    v6->_downloadType = 0;
    v12 = +[NSDate date];
    [v12 timeIntervalSince1970];
    v6->_timestamp = v13;
  }

  return v6;
}

- (APAttributionFrequencyCap)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = APAttributionFrequencyCap;
  v5 = [(APAttributionFrequencyCap *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ADIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ADAdMetadataKey"];
    adMetadata = v5->_adMetadata;
    v5->_adMetadata = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ADDownloadTypeKey"];
    v5->_downloadType = [v10 intValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"ADSetTimeKey"];
    [v11 doubleValue];
    v5->_timestamp = v12;
  }

  return v5;
}

- (id)splitCapData:(id)data
{
  dataCopy = data;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [dataCopy componentsSeparatedByString:@"|"];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 objectAtIndex:0];
    [v4 setObject:v8 forKeyedSubscript:@"ADIdentifierKey"];

    if (v7 != 1)
    {
      v9 = +[NSMutableString string];
      for (i = 1; i != v7; ++i)
      {
        if (i >= 2)
        {
          v11 = [v9 stringByAppendingString:@"|"];
          v12 = [v11 mutableCopy];

          v9 = v12;
        }

        v13 = v9;
        v14 = [v5 objectAtIndex:i];
        v15 = [v9 stringByAppendingString:v14];
        v9 = [v15 mutableCopy];
      }

      [v4 setObject:v9 forKeyedSubscript:@"ADAdMetadataKey"];
    }
  }

  v16 = [v4 copy];

  return v16;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:self->_identifier forKeyedSubscript:@"ADIdentifierKey"];
  v4 = [NSNumber numberWithDouble:self->_timestamp];
  [v3 setObject:v4 forKeyedSubscript:@"ADSetTimeKey"];

  adMetadata = self->_adMetadata;
  if (adMetadata)
  {
    [v3 setObject:adMetadata forKeyedSubscript:@"ADAdMetadataKey"];
  }

  v6 = [NSNumber numberWithInt:LODWORD(self->_downloadType)];
  [v3 setObject:v6 forKeyedSubscript:@"ADDownloadTypeKey"];

  return v3;
}

- (id)description
{
  dictionaryRepresentation = [(APAttributionFrequencyCap *)self dictionaryRepresentation];
  v3 = [NSString stringWithFormat:@"%@", dictionaryRepresentation];

  return v3;
}

@end