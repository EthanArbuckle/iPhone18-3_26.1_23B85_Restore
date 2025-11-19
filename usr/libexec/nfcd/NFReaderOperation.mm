@interface NFReaderOperation
- (NFReaderOperation)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFReaderOperation

- (id)description
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSS"];
  v4 = [NSString alloc];
  operation = self->_operation;
  v6 = [v3 stringFromDate:self->_date];
  v7 = [v4 initWithFormat:@"%@ : %@", operation, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"Date"];
  [v5 encodeObject:self->_operation forKey:@"Operation"];
}

- (NFReaderOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NFReaderOperation;
  v5 = [(NFReaderOperation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Operation"];
    operation = v5->_operation;
    v5->_operation = v8;
  }

  return v5;
}

@end