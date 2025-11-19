@interface TMTimeZone
+ (TMTimeZone)timeZoneWithOlsonName:(id)a3 fromSource:(id)a4;
- (BOOL)hasSameOlsonNameAs:(id)a3;
- (TMTimeZone)initWithDictionary:(id)a3;
- (TMTimeZone)initWithOlsonName:(id)a3 fromSource:(id)a4;
- (void)dealloc;
@end

@implementation TMTimeZone

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TMTimeZone;
  [(TMTimeZone *)&v3 dealloc];
}

- (TMTimeZone)initWithDictionary:(id)a3
{
  v4 = [(TMTimeZone *)self init];
  if (v4)
  {
    -[TMTimeZone setSource:](v4, "setSource:", [a3 objectForKeyedSubscript:@"TMSource"]);
    -[TMTimeZone setOlsonName:](v4, "setOlsonName:", [a3 objectForKeyedSubscript:@"TMTimeZone"]);
  }

  return v4;
}

- (TMTimeZone)initWithOlsonName:(id)a3 fromSource:(id)a4
{
  v6 = [(TMTimeZone *)self init];
  v7 = v6;
  if (v6)
  {
    [(TMTimeZone *)v6 setSource:a4];
    [(TMTimeZone *)v7 setOlsonName:a3];
  }

  return v7;
}

+ (TMTimeZone)timeZoneWithOlsonName:(id)a3 fromSource:(id)a4
{
  v4 = [[TMTimeZone alloc] initWithOlsonName:a3 fromSource:a4];

  return v4;
}

- (BOOL)hasSameOlsonNameAs:(id)a3
{
  v4 = [(TMTimeZone *)self olsonName];
  v5 = [a3 olsonName];

  return [(NSString *)v4 isEqualToString:v5];
}

@end