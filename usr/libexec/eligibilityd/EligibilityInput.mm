@interface EligibilityInput
- (BOOL)isEqual:(id)a3;
- (EligibilityInput)initWithCoder:(id)a3;
- (EligibilityInput)initWithInputType:(unint64_t)a3 status:(unint64_t)a4 process:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EligibilityInput

- (id)description
{
  v3 = sub_10001F4BC([(EligibilityInput *)self type]);
  v4 = sub_10001F528([(EligibilityInput *)self status]);
  v5 = [(EligibilityInput *)self settingProccessName];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"<NULL>";
  }

  v7 = [(EligibilityInput *)self setTime];
  v8 = [NSString stringWithFormat:@"[EligibilityInput type:%@ status:%@ setTime:%@ settingProcess:%@]", v3, v4, v7, v6];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = EligibilityInput;
  if ([(EligibilityInput *)&v17 isEqual:v4])
  {
    if (v4 == self)
    {
      v14 = 1;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(EligibilityInput *)self type];
      if (v6 == [(EligibilityInput *)v5 type])
      {
        v7 = [(EligibilityInput *)self status];
        if (v7 == [(EligibilityInput *)v5 status])
        {
          v8 = [(EligibilityInput *)self setTime];
          v9 = [(EligibilityInput *)v5 setTime];
          v10 = sub_1000277EC(v8, v9);

          if (v10)
          {
            v11 = [(EligibilityInput *)self settingProccessName];
            v12 = [(EligibilityInput *)v5 settingProccessName];
            v13 = sub_1000277EC(v11, v12);

            if (v13)
            {
              v14 = 1;
LABEL_21:

              goto LABEL_22;
            }

            v15 = sub_10001F638();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v19 = "[EligibilityInput isEqual:]";
              v20 = 2080;
              v21 = "settingProccessName";
              goto LABEL_19;
            }

LABEL_20:

            v14 = 0;
            goto LABEL_21;
          }

          v15 = sub_10001F638();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          *buf = 136315394;
          v19 = "[EligibilityInput isEqual:]";
          v20 = 2080;
          v21 = "setTime";
        }

        else
        {
          v15 = sub_10001F638();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          *buf = 136315394;
          v19 = "[EligibilityInput isEqual:]";
          v20 = 2080;
          v21 = "status";
        }
      }

      else
      {
        v15 = sub_10001F638();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *buf = 136315394;
        v19 = "[EligibilityInput isEqual:]";
        v20 = 2080;
        v21 = "type";
      }

LABEL_19:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", buf, 0x16u);
      goto LABEL_20;
    }
  }

  v14 = 0;
LABEL_22:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(EligibilityInput *)self type];
  v4 = [(EligibilityInput *)self status]^ v3;
  v5 = [(EligibilityInput *)self setTime];
  v6 = v4 ^ [v5 hash];
  v7 = [(EligibilityInput *)self settingProccessName];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EligibilityInput *)self type];
  v6 = [(EligibilityInput *)self status];
  v7 = [(EligibilityInput *)self settingProccessName];
  v8 = [v4 initWithInputType:v5 status:v6 process:v7];

  v9 = [(EligibilityInput *)self setTime];
  [v8 setSetTime:v9];

  return v8;
}

- (EligibilityInput)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = EligibilityInput;
  v5 = [(EligibilityInput *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = [v7 unsignedIntegerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setTime"];
    if (!v8)
    {
      v9 = sub_10001F638();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = "[EligibilityInput initWithCoder:]";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Failed to deserialize setTime, setting to default value", buf, 0xCu);
      }

      v8 = +[NSDate now];
    }

    setTime = v5->_setTime;
    v5->_setTime = v8;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"settingProccessName"];
    settingProccessName = v5->_settingProccessName;
    v5->_settingProccessName = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedLongLong:[(EligibilityInput *)self type]];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [NSNumber numberWithUnsignedLongLong:[(EligibilityInput *)self status]];
  [v4 encodeObject:v6 forKey:@"status"];

  v7 = [(EligibilityInput *)self setTime];
  [v4 encodeObject:v7 forKey:@"setTime"];

  v8 = [(EligibilityInput *)self settingProccessName];
  [v4 encodeObject:v8 forKey:@"settingProccessName"];
}

- (EligibilityInput)initWithInputType:(unint64_t)a3 status:(unint64_t)a4 process:(id)a5
{
  v9 = a5;
  v15.receiver = self;
  v15.super_class = EligibilityInput;
  v10 = [(EligibilityInput *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v10->_status = a4;
    v12 = +[NSDate now];
    setTime = v11->_setTime;
    v11->_setTime = v12;

    objc_storeStrong(&v11->_settingProccessName, a5);
  }

  return v11;
}

@end