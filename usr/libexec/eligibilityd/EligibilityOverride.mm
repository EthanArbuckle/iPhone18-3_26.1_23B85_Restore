@interface EligibilityOverride
- (BOOL)isEqual:(id)a3;
- (EligibilityOverride)init;
- (EligibilityOverride)initWithCoder:(id)a3;
- (id)_answerDictionaryForOverrideData:(id)a3;
- (id)_overrideMapDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)overriddenDomains;
- (id)overrideResultDictionaryForDomain:(unint64_t)a3;
- (id)resultDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)forceDomain:(unint64_t)a3 answer:(unint64_t)a4 context:(id)a5;
- (void)resetAllAnswers;
- (void)resetAnswerForDomain:(unint64_t)a3;
@end

@implementation EligibilityOverride

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(EligibilityOverride *)self _overrideMapDescription];
  v5 = [NSString stringWithFormat:@"<%@: overrides: { \n%@ }>", v3, v4];

  return v5;
}

- (id)_overrideMapDescription
{
  v3 = objc_opt_new();
  v4 = [(EligibilityOverride *)self overrideMap];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001A304;
  v8[3] = &unk_100045BC0;
  v9 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [v5 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EligibilityOverride;
  if (![(EligibilityOverride *)&v11 isEqual:v4])
  {
    goto LABEL_9;
  }

  if (v4 == self)
  {
    v8 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(EligibilityOverride *)self overrideMap];
    v7 = [(EligibilityOverride *)v5 overrideMap];
    v8 = sub_1000277EC(v6, v7);

    if ((v8 & 1) == 0)
    {
      v9 = sub_10001F638();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[EligibilityOverride isEqual:]";
        v14 = 2080;
        v15 = "overrideMap";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", buf, 0x16u);
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v2 = [(EligibilityOverride *)self overrideMap];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(EligibilityOverride *)self overrideMap];
  v7 = [v6 copyWithZone:a3];
  [v5 setOverrideMap:v7];

  return v5;
}

- (EligibilityOverride)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = +[GlobalConfiguration sharedInstance];
  v6 = [v5 supportsForcedAnswers];

  if (v6)
  {
    v17.receiver = self;
    v17.super_class = EligibilityOverride;
    v7 = [(EligibilityOverride *)&v17 init];
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
      v11 = [v4 decodeObjectOfClasses:v10 forKey:@"overrideMap"];

      if (!v11)
      {
        v12 = sub_10001F638();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v19 = "[EligibilityOverride initWithCoder:]";
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Failed to deserialize overrideMap, setting to default value", buf, 0xCu);
        }

        v11 = objc_opt_new();
      }

      overrideMap = v7->_overrideMap;
      v7->_overrideMap = v11;
    }

    self = v7;
    v14 = self;
  }

  else
  {
    v15 = sub_10001F638();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[EligibilityOverride initWithCoder:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: This device does not support overriding eligibility answers.", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EligibilityOverride *)self overrideMap];
  [v4 encodeObject:v5 forKey:@"overrideMap"];
}

- (id)overriddenDomains
{
  v2 = [(EligibilityOverride *)self overrideMap];
  v3 = [v2 allKeys];

  return v3;
}

- (id)overrideResultDictionaryForDomain:(unint64_t)a3
{
  v5 = [(EligibilityOverride *)self overrideMap];
  v6 = [NSNumber numberWithUnsignedLongLong:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [(EligibilityOverride *)self _answerDictionaryForOverrideData:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)resultDictionary
{
  v3 = objc_opt_new();
  v4 = [(EligibilityOverride *)self overrideMap];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10001AA18;
  v11 = &unk_100045B98;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

- (id)_answerDictionaryForOverrideData:(id)a3
{
  v3 = a3;
  v4 = [v3 context];

  if (v4)
  {
    v11[0] = @"os_eligibility_answer_t";
    v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 answer]);
    v12[0] = v5;
    v12[1] = &off_10004ABD8;
    v11[1] = @"os_eligibility_answer_source_t";
    v11[2] = @"context";
    v6 = [v3 context];
    v12[2] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  }

  else
  {
    v9[0] = @"os_eligibility_answer_t";
    v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 answer]);
    v9[1] = @"os_eligibility_answer_source_t";
    v10[0] = v5;
    v10[1] = &off_10004ABD8;
    v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  return v7;
}

- (void)resetAllAnswers
{
  v3 = objc_opt_new();
  overrideMap = self->_overrideMap;
  self->_overrideMap = v3;

  _objc_release_x1();
}

- (void)resetAnswerForDomain:(unint64_t)a3
{
  v5 = [(EligibilityOverride *)self overrideMap];
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  [v5 removeObjectForKey:v4];
}

- (void)forceDomain:(unint64_t)a3 answer:(unint64_t)a4 context:(id)a5
{
  v8 = a5;
  v11 = [[EligibilityOverrideData alloc] initWithAnswer:a4 context:v8];

  v9 = [(EligibilityOverride *)self overrideMap];
  v10 = [NSNumber numberWithUnsignedLongLong:a3];
  [v9 setObject:v11 forKeyedSubscript:v10];
}

- (EligibilityOverride)init
{
  v3 = +[GlobalConfiguration sharedInstance];
  v4 = [v3 supportsForcedAnswers];

  if (v4)
  {
    v11.receiver = self;
    v11.super_class = EligibilityOverride;
    v5 = [(EligibilityOverride *)&v11 init];
    if (v5)
    {
      v6 = objc_opt_new();
      overrideMap = v5->_overrideMap;
      v5->_overrideMap = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v9 = sub_10001F638();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[EligibilityOverride init]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: This device does not support overriding eligibility answers.", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

@end