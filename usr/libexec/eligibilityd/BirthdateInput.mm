@interface BirthdateInput
- (BOOL)isEqual:(id)equal;
- (BOOL)lessThan:(id)than;
- (BirthdateInput)initWithCoder:(id)coder;
- (BirthdateInput)initWithDate:(id)date status:(unint64_t)status process:(id)process;
- (NSNumber)age;
- (NSString)description;
- (id)ageBand;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BirthdateInput

- (BOOL)lessThan:(id)than
{
  thanCopy = than;
  objc_opt_class();
  v5 = thanCopy;
  if (objc_opt_isKindOfClass())
  {
    if (v5)
    {
      v6 = [(BirthdateInput *)self age];
      v7 = [v6 compare:v5] == -1;

      v8 = v5;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = sub_10001F638();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[BirthdateInput lessThan:]";
    v12 = 2112;
    v13 = v5;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Unexpected type passed to selector: %@", &v10, 0x16u);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (NSString)description
{
  ageBand = [(BirthdateInput *)self ageBand];
  v7.receiver = self;
  v7.super_class = BirthdateInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[BirthdateInput age:%@ %@]", ageBand, v4];

  return v5;
}

- (id)ageBand
{
  v2 = [(BirthdateInput *)self age];
  v3 = v2;
  if (v2)
  {
    if ([v2 compare:&off_10004ABF0] == -1)
    {
      v4 = @"< 18";
    }

    else
    {
      v4 = @">= 18";
    }
  }

  else
  {
    v4 = @"<NULL>";
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = BirthdateInput;
  if (![(EligibilityInput *)&v11 isEqual:equalCopy])
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    birthdate = [(BirthdateInput *)self birthdate];
    birthdate2 = [(BirthdateInput *)v5 birthdate];
    v8 = sub_1000277EC(birthdate, birthdate2);

    if ((v8 & 1) == 0)
    {
      v9 = sub_10001F638();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[BirthdateInput isEqual:]";
        v14 = 2080;
        v15 = "birthdate";
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
  v7.receiver = self;
  v7.super_class = BirthdateInput;
  v3 = [(EligibilityInput *)&v7 hash];
  birthdate = [(BirthdateInput *)self birthdate];
  v5 = [birthdate hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = BirthdateInput;
  v5 = [(EligibilityInput *)&v9 copyWithZone:?];
  birthdate = [(BirthdateInput *)self birthdate];
  v7 = [birthdate copyWithZone:zone];
  [v5 setBirthdate:v7];

  return v5;
}

- (BirthdateInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BirthdateInput;
  v5 = [(EligibilityInput *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"birthdate"];
    birthdate = v5->_birthdate;
    v5->_birthdate = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BirthdateInput;
  coderCopy = coder;
  [(EligibilityInput *)&v6 encodeWithCoder:coderCopy];
  v5 = [(BirthdateInput *)self birthdate:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"birthdate"];
}

- (NSNumber)age
{
  birthdate = [(BirthdateInput *)self birthdate];
  if (birthdate)
  {
    v3 = +[NSDate date];
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 components:4 fromDate:birthdate toDate:v3 options:0];

    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 year]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BirthdateInput)initWithDate:(id)date status:(unint64_t)status process:(id)process
{
  dateCopy = date;
  processCopy = process;
  if (dateCopy)
  {
    type = xpc_get_type(dateCopy);
    if (type != &_xpc_type_date)
    {
      v11 = type;
      v12 = sub_10001F638();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[BirthdateInput initWithDate:status:process:]";
        v20 = 2080;
        name = xpc_type_get_name(v11);
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Birthdate input is wrong data type: %s", buf, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_11;
    }

    v12 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v12 = 0;
  }

  v17.receiver = self;
  v17.super_class = BirthdateInput;
  v14 = [(EligibilityInput *)&v17 initWithInputType:15 status:status process:processCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_birthdate, v12);
  }

  self = v15;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

@end