@interface GreymatterQueueInput
- (BOOL)isEqual:(id)a3;
- (GreymatterQueueInput)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initOnQueue:(id)a3 status:(unint64_t)a4 process:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GreymatterQueueInput

- (NSString)description
{
  if ([(GreymatterQueueInput *)self onGreymatterQueue])
  {
    v3 = @"Y";
  }

  else
  {
    v3 = @"N";
  }

  v7.receiver = self;
  v7.super_class = GreymatterQueueInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[GreymatterQueueInput onQueue: %@ %@]", v3, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GreymatterQueueInput;
  if (![(EligibilityInput *)&v11 isEqual:v4])
  {
    goto LABEL_9;
  }

  if (v4 == self)
  {
    v9 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GreymatterQueueInput *)self onGreymatterQueue];
    v7 = v6 ^ [(GreymatterQueueInput *)v5 onGreymatterQueue];
    if (v7 == 1)
    {
      v8 = sub_10001F638();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[GreymatterQueueInput isEqual:]";
        v14 = 2080;
        v15 = "onGreymatterQueue";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", buf, 0x16u);
      }
    }

    v9 = v7 ^ 1;
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = GreymatterQueueInput;
  v3 = [(EligibilityInput *)&v5 hash];
  return v3 ^ [(GreymatterQueueInput *)self onGreymatterQueue];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = GreymatterQueueInput;
  v4 = [(EligibilityInput *)&v6 copyWithZone:a3];
  [v4 setOnGreymatterQueue:{-[GreymatterQueueInput onGreymatterQueue](self, "onGreymatterQueue")}];
  return v4;
}

- (GreymatterQueueInput)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GreymatterQueueInput;
  v5 = [(EligibilityInput *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_onGreymatterQueue = [v4 decodeBoolForKey:@"onGreymatterQueue"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GreymatterQueueInput;
  v4 = a3;
  [(EligibilityInput *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[GreymatterQueueInput onGreymatterQueue](self forKey:{"onGreymatterQueue", v5.receiver, v5.super_class), @"onGreymatterQueue"}];
}

- (id)initOnQueue:(id)a3 status:(unint64_t)a4 process:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    type = xpc_get_type(v8);
    if (type != &_xpc_type_BOOL)
    {
      v11 = type;
      v12 = sub_10001F638();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[GreymatterQueueInput initOnQueue:status:process:]";
        v20 = 2080;
        name = xpc_type_get_name(v11);
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Greymatter Queue state input is wrong data type: %s", buf, 0x16u);
      }

      v13 = 0;
      goto LABEL_11;
    }

    value = xpc_BOOL_get_value(v8);
  }

  else
  {
    value = 0;
  }

  v17.receiver = self;
  v17.super_class = GreymatterQueueInput;
  v15 = [(EligibilityInput *)&v17 initWithInputType:9 status:a4 process:v9];
  if (v15)
  {
    v15->_onGreymatterQueue = value;
  }

  self = v15;
  v13 = self;
LABEL_11:

  return v13;
}

@end