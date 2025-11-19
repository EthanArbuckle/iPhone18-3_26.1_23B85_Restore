@interface BirthdateInput
- (BOOL)isEqual:(id)a3;
- (BOOL)lessThan:(id)a3;
- (BirthdateInput)initWithCoder:(id)a3;
- (BirthdateInput)initWithDate:(id)a3 status:(unint64_t)a4 process:(id)a5;
- (NSNumber)age;
- (NSString)description;
- (id)ageBand;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BirthdateInput

- (BOOL)lessThan:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
  v3 = [(BirthdateInput *)self ageBand];
  v7.receiver = self;
  v7.super_class = BirthdateInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[BirthdateInput age:%@ %@]", v3, v4];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BirthdateInput;
  if (![(EligibilityInput *)&v11 isEqual:v4])
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
    v6 = [(BirthdateInput *)self birthdate];
    v7 = [(BirthdateInput *)v5 birthdate];
    v8 = sub_1000277EC(v6, v7);

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
  v4 = [(BirthdateInput *)self birthdate];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = BirthdateInput;
  v5 = [(EligibilityInput *)&v9 copyWithZone:?];
  v6 = [(BirthdateInput *)self birthdate];
  v7 = [v6 copyWithZone:a3];
  [v5 setBirthdate:v7];

  return v5;
}

- (BirthdateInput)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BirthdateInput;
  v5 = [(EligibilityInput *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"birthdate"];
    birthdate = v5->_birthdate;
    v5->_birthdate = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BirthdateInput;
  v4 = a3;
  [(EligibilityInput *)&v6 encodeWithCoder:v4];
  v5 = [(BirthdateInput *)self birthdate:v6.receiver];
  [v4 encodeObject:v5 forKey:@"birthdate"];
}

- (NSNumber)age
{
  v2 = [(BirthdateInput *)self birthdate];
  if (v2)
  {
    v3 = +[NSDate date];
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 components:4 fromDate:v2 toDate:v3 options:0];

    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 year]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BirthdateInput)initWithDate:(id)a3 status:(unint64_t)a4 process:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    type = xpc_get_type(v8);
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

      v13 = 0;
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
  v14 = [(EligibilityInput *)&v17 initWithInputType:15 status:a4 process:v9];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_birthdate, v12);
  }

  self = v15;
  v13 = self;
LABEL_11:

  return v13;
}

@end