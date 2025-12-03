@interface GTRejectedConnectionReport
- (GTRejectedConnectionReport)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTRejectedConnectionReport

- (GTRejectedConnectionReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = GTRejectedConnectionReport;
  v5 = [(GTRejectedConnectionReport *)&v17 init];
  if (v5)
  {
    v16 = 0;
    v6 = [coderCopy decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"timestamp" error:&v16];
    v7 = v16;
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    if (v7)
    {
      if (GTCoreLogUseOsLog())
      {
        localizedDescription = gt_tagged_log(0x10u);
        if (os_log_type_enabled(localizedDescription, OS_LOG_TYPE_ERROR))
        {
          sub_1000019FC(v7, localizedDescription);
        }
      }

      else
      {
        v10 = __stderrp;
        localizedDescription = [v7 localizedDescription];
        v11 = [NSString stringWithFormat:@"Failure whilst decoding timestamp for GTRejectedConnectionReport, %@", localizedDescription];
        fprintf(v10, "%s\n", [v11 UTF8String]);
      }
    }

    v5->_pid = [coderCopy decodeInt64ForKey:@"pid"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  [coderCopy encodeInt64:self->_pid forKey:@"pid"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
}

@end