@interface EligibilityOverrideData
- (BOOL)isEqual:(id)a3;
- (EligibilityOverrideData)initWithAnswer:(unint64_t)a3 context:(id)a4;
- (EligibilityOverrideData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EligibilityOverrideData

- (id)description
{
  v3 = [(EligibilityOverrideData *)self context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 description];
  }

  else
  {
    v5 = @"<NULL>";
  }

  v6 = objc_opt_class();
  v7 = [(EligibilityOverrideData *)self answer];
  if (sub_10001F30C(v7))
  {
    [NSString stringWithUTF8String:?];
  }

  else
  {
    [NSString stringWithFormat:@"<Unknown: %llu>", v7];
  }
  v8 = ;
  v9 = [NSString stringWithFormat:@"<%@: answer: %@ context: %@>", v6, v8, v5];;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EligibilityOverrideData;
  if ([(EligibilityOverrideData *)&v13 isEqual:v4])
  {
    if (v4 == self)
    {
      v10 = 1;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(EligibilityOverrideData *)self answer];
      if (v6 == [(EligibilityOverrideData *)v5 answer])
      {
        v7 = [(EligibilityOverrideData *)self context];
        v8 = [(EligibilityOverrideData *)v5 context];
        v9 = sub_1000277EC(v7, v8);

        if (v9)
        {
          v10 = 1;
LABEL_15:

          goto LABEL_16;
        }

        v11 = sub_10001F638();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v15 = "[EligibilityOverrideData isEqual:]";
          v16 = 2080;
          v17 = "context";
          goto LABEL_13;
        }
      }

      else
      {
        v11 = sub_10001F638();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v15 = "[EligibilityOverrideData isEqual:]";
          v16 = 2080;
          v17 = "answer";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", buf, 0x16u);
        }
      }

      v10 = 0;
      goto LABEL_15;
    }
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(EligibilityOverrideData *)self answer];
  v4 = [(EligibilityOverrideData *)self context];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setAnswer:{-[EligibilityOverrideData answer](self, "answer")}];
  v6 = [(EligibilityOverrideData *)self context];
  v7 = [v6 copyWithZone:a3];
  [v5 setContext:v7];

  return v5;
}

- (EligibilityOverrideData)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EligibilityOverrideData;
  v5 = [(EligibilityOverrideData *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"answer"];
    v5->_answer = [v6 unsignedIntegerValue];

    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"context"];
    context = v5->_context;
    v5->_context = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedLongLong:[(EligibilityOverrideData *)self answer]];
  [v4 encodeObject:v5 forKey:@"answer"];

  v6 = [(EligibilityOverrideData *)self context];
  [v4 encodeObject:v6 forKey:@"context"];
}

- (EligibilityOverrideData)initWithAnswer:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = EligibilityOverrideData;
  v7 = [(EligibilityOverrideData *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EligibilityOverrideData *)v7 setAnswer:a3];
    [(EligibilityOverrideData *)v8 setContext:v6];
  }

  return v8;
}

@end