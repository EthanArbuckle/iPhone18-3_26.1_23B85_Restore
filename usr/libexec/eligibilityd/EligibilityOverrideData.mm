@interface EligibilityOverrideData
- (BOOL)isEqual:(id)equal;
- (EligibilityOverrideData)initWithAnswer:(unint64_t)answer context:(id)context;
- (EligibilityOverrideData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EligibilityOverrideData

- (id)description
{
  context = [(EligibilityOverrideData *)self context];
  v4 = context;
  if (context)
  {
    v5 = [context description];
  }

  else
  {
    v5 = @"<NULL>";
  }

  v6 = objc_opt_class();
  answer = [(EligibilityOverrideData *)self answer];
  if (sub_10001F30C(answer))
  {
    [NSString stringWithUTF8String:?];
  }

  else
  {
    [NSString stringWithFormat:@"<Unknown: %llu>", answer];
  }
  v8 = ;
  v9 = [NSString stringWithFormat:@"<%@: answer: %@ context: %@>", v6, v8, v5];;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = EligibilityOverrideData;
  if ([(EligibilityOverrideData *)&v13 isEqual:equalCopy])
  {
    if (equalCopy == self)
    {
      v10 = 1;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      answer = [(EligibilityOverrideData *)self answer];
      if (answer == [(EligibilityOverrideData *)v5 answer])
      {
        context = [(EligibilityOverrideData *)self context];
        context2 = [(EligibilityOverrideData *)v5 context];
        v9 = sub_1000277EC(context, context2);

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
  answer = [(EligibilityOverrideData *)self answer];
  context = [(EligibilityOverrideData *)self context];
  v5 = [context hash];

  return v5 ^ answer;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAnswer:{-[EligibilityOverrideData answer](self, "answer")}];
  context = [(EligibilityOverrideData *)self context];
  v7 = [context copyWithZone:zone];
  [v5 setContext:v7];

  return v5;
}

- (EligibilityOverrideData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = EligibilityOverrideData;
  v5 = [(EligibilityOverrideData *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"answer"];
    v5->_answer = [v6 unsignedIntegerValue];

    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"context"];
    context = v5->_context;
    v5->_context = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedLongLong:[(EligibilityOverrideData *)self answer]];
  [coderCopy encodeObject:v5 forKey:@"answer"];

  context = [(EligibilityOverrideData *)self context];
  [coderCopy encodeObject:context forKey:@"context"];
}

- (EligibilityOverrideData)initWithAnswer:(unint64_t)answer context:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = EligibilityOverrideData;
  v7 = [(EligibilityOverrideData *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EligibilityOverrideData *)v7 setAnswer:answer];
    [(EligibilityOverrideData *)v8 setContext:contextCopy];
  }

  return v8;
}

@end