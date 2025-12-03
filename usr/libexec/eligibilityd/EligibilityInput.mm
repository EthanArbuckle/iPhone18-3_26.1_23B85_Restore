@interface EligibilityInput
- (BOOL)isEqual:(id)equal;
- (EligibilityInput)initWithCoder:(id)coder;
- (EligibilityInput)initWithInputType:(unint64_t)type status:(unint64_t)status process:(id)process;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EligibilityInput

- (id)description
{
  v3 = sub_10001F4BC([(EligibilityInput *)self type]);
  v4 = sub_10001F528([(EligibilityInput *)self status]);
  settingProccessName = [(EligibilityInput *)self settingProccessName];
  if (settingProccessName)
  {
    v6 = settingProccessName;
  }

  else
  {
    v6 = @"<NULL>";
  }

  setTime = [(EligibilityInput *)self setTime];
  v8 = [NSString stringWithFormat:@"[EligibilityInput type:%@ status:%@ setTime:%@ settingProcess:%@]", v3, v4, setTime, v6];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v17.receiver = self;
  v17.super_class = EligibilityInput;
  if ([(EligibilityInput *)&v17 isEqual:equalCopy])
  {
    if (equalCopy == self)
    {
      v14 = 1;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(EligibilityInput *)self type];
      if (type == [(EligibilityInput *)v5 type])
      {
        status = [(EligibilityInput *)self status];
        if (status == [(EligibilityInput *)v5 status])
        {
          setTime = [(EligibilityInput *)self setTime];
          setTime2 = [(EligibilityInput *)v5 setTime];
          v10 = sub_1000277EC(setTime, setTime2);

          if (v10)
          {
            settingProccessName = [(EligibilityInput *)self settingProccessName];
            settingProccessName2 = [(EligibilityInput *)v5 settingProccessName];
            v13 = sub_1000277EC(settingProccessName, settingProccessName2);

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
  type = [(EligibilityInput *)self type];
  v4 = [(EligibilityInput *)self status]^ type;
  setTime = [(EligibilityInput *)self setTime];
  v6 = v4 ^ [setTime hash];
  settingProccessName = [(EligibilityInput *)self settingProccessName];
  v8 = [settingProccessName hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  type = [(EligibilityInput *)self type];
  status = [(EligibilityInput *)self status];
  settingProccessName = [(EligibilityInput *)self settingProccessName];
  v8 = [v4 initWithInputType:type status:status process:settingProccessName];

  setTime = [(EligibilityInput *)self setTime];
  [v8 setSetTime:setTime];

  return v8;
}

- (EligibilityInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = EligibilityInput;
  v5 = [(EligibilityInput *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = [v7 unsignedIntegerValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setTime"];
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

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settingProccessName"];
    settingProccessName = v5->_settingProccessName;
    v5->_settingProccessName = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedLongLong:[(EligibilityInput *)self type]];
  [coderCopy encodeObject:v5 forKey:@"type"];

  v6 = [NSNumber numberWithUnsignedLongLong:[(EligibilityInput *)self status]];
  [coderCopy encodeObject:v6 forKey:@"status"];

  setTime = [(EligibilityInput *)self setTime];
  [coderCopy encodeObject:setTime forKey:@"setTime"];

  settingProccessName = [(EligibilityInput *)self settingProccessName];
  [coderCopy encodeObject:settingProccessName forKey:@"settingProccessName"];
}

- (EligibilityInput)initWithInputType:(unint64_t)type status:(unint64_t)status process:(id)process
{
  processCopy = process;
  v15.receiver = self;
  v15.super_class = EligibilityInput;
  v10 = [(EligibilityInput *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v10->_status = status;
    v12 = +[NSDate now];
    setTime = v11->_setTime;
    v11->_setTime = v12;

    objc_storeStrong(&v11->_settingProccessName, process);
  }

  return v11;
}

@end