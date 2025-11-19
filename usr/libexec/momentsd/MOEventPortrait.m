@interface MOEventPortrait
+ (id)displayNameOfScoredTopics:(id)a3;
+ (void)defineClassCollections;
- (MOEventPortrait)init;
- (MOEventPortrait)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventPortrait

+ (void)defineClassCollections
{
  if (defineClassCollections_onceToken_0 != -1)
  {
    +[MOEventPortrait defineClassCollections];
  }
}

void __41__MOEventPortrait_defineClassCollections__block_invoke(id a1)
{
  v1 = kTopicIdNames;
  kTopicIdNames = &off_10036EAB8;
}

- (MOEventPortrait)init
{
  v4.receiver = self;
  v4.super_class = MOEventPortrait;
  v2 = [(MOEventPortrait *)&v4 init];
  if (v2)
  {
    +[MOEventPortrait defineClassCollections];
  }

  return v2;
}

+ (id)displayNameOfScoredTopics:(id)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __45__MOEventPortrait_displayNameOfScoredTopics___block_invoke;
  v6[3] = &unk_1003361E8;
  v4 = objc_opt_new();
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void __45__MOEventPortrait_displayNameOfScoredTopics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = kTopicIdNames;
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [kTopicIdNames objectForKeyedSubscript:v6];

    v6 = v9;
  }

  [v8 setObject:v10 forKeyedSubscript:v6];
}

- (void)encodeWithCoder:(id)a3
{
  scoredTopics = self->_scoredTopics;
  v4 = a3;
  v5 = [MODictionaryEncoder encodeDictionary:scoredTopics];
  [v4 encodeObject:v5 forKey:@"scoredTopics"];
}

- (MOEventPortrait)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MOEventPortrait;
  v5 = [(MOEventPortrait *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scoredTopics"];
    v7 = [MODictionaryEncoder decodeToDictionary:v6];
    scoredTopics = v5->_scoredTopics;
    v5->_scoredTopics = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventPortrait);
  objc_storeStrong(&v4->_scoredTopics, self->_scoredTopics);
  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [MOEventPortrait displayNameOfScoredTopics:self->_scoredTopics];
  v5 = [v3 initWithFormat:@"scoredTopics, %@", v4];

  return v5;
}

@end