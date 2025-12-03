@interface NFReaderOperation
- (NFReaderOperation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"Date"];
  [coderCopy encodeObject:self->_operation forKey:@"Operation"];
}

- (NFReaderOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NFReaderOperation;
  v5 = [(NFReaderOperation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Operation"];
    operation = v5->_operation;
    v5->_operation = v8;
  }

  return v5;
}

@end