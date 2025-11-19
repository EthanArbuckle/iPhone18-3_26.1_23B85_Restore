@interface GTRejectedConnectionReport
- (GTRejectedConnectionReport)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTRejectedConnectionReport

- (GTRejectedConnectionReport)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = GTRejectedConnectionReport;
  v5 = [(GTRejectedConnectionReport *)&v17 init];
  if (v5)
  {
    v16 = 0;
    v6 = [v4 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"timestamp" error:&v16];
    v7 = v16;
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    if (v7)
    {
      if (GTCoreLogUseOsLog())
      {
        v9 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000019FC(v7, v9);
        }
      }

      else
      {
        v10 = __stderrp;
        v9 = [v7 localizedDescription];
        v11 = [NSString stringWithFormat:@"Failure whilst decoding timestamp for GTRejectedConnectionReport, %@", v9];
        fprintf(v10, "%s\n", [v11 UTF8String]);
      }
    }

    v5->_pid = [v4 decodeInt64ForKey:@"pid"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"timestamp"];
  [v5 encodeInt64:self->_pid forKey:@"pid"];
  [v5 encodeObject:self->_name forKey:@"name"];
}

@end