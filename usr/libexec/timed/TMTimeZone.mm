@interface TMTimeZone
+ (TMTimeZone)timeZoneWithOlsonName:(id)name fromSource:(id)source;
- (BOOL)hasSameOlsonNameAs:(id)as;
- (TMTimeZone)initWithDictionary:(id)dictionary;
- (TMTimeZone)initWithOlsonName:(id)name fromSource:(id)source;
- (void)dealloc;
@end

@implementation TMTimeZone

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TMTimeZone;
  [(TMTimeZone *)&v3 dealloc];
}

- (TMTimeZone)initWithDictionary:(id)dictionary
{
  v4 = [(TMTimeZone *)self init];
  if (v4)
  {
    -[TMTimeZone setSource:](v4, "setSource:", [dictionary objectForKeyedSubscript:@"TMSource"]);
    -[TMTimeZone setOlsonName:](v4, "setOlsonName:", [dictionary objectForKeyedSubscript:@"TMTimeZone"]);
  }

  return v4;
}

- (TMTimeZone)initWithOlsonName:(id)name fromSource:(id)source
{
  v6 = [(TMTimeZone *)self init];
  v7 = v6;
  if (v6)
  {
    [(TMTimeZone *)v6 setSource:source];
    [(TMTimeZone *)v7 setOlsonName:name];
  }

  return v7;
}

+ (TMTimeZone)timeZoneWithOlsonName:(id)name fromSource:(id)source
{
  v4 = [[TMTimeZone alloc] initWithOlsonName:name fromSource:source];

  return v4;
}

- (BOOL)hasSameOlsonNameAs:(id)as
{
  olsonName = [(TMTimeZone *)self olsonName];
  olsonName2 = [as olsonName];

  return [(NSString *)olsonName isEqualToString:olsonName2];
}

@end