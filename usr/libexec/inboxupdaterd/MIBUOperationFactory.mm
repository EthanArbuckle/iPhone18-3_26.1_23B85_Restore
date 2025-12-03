@interface MIBUOperationFactory
+ (id)sharedInstance;
- (id)buildCurrentOperationWithDelegate:(id)delegate;
- (id)buildOperationFromCode:(unint64_t)code andDelegate:(id)delegate;
@end

@implementation MIBUOperationFactory

+ (id)sharedInstance
{
  if (qword_1000B83A8 != -1)
  {
    sub_100057460();
  }

  v3 = qword_1000B83A0;

  return v3;
}

- (id)buildCurrentOperationWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[MIBUOperation currentOperationCode];
  if (qword_1000B84A8[0] != -1)
  {
    sub_100057474();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Current ongoing operation code is %lu", &v9, 0xCu);
  }

  v7 = [(MIBUOperationFactory *)self buildOperationFromCode:v5 andDelegate:delegateCopy];

  return v7;
}

- (id)buildOperationFromCode:(unint64_t)code andDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (code > 1)
  {
    if (code == 2)
    {
      v6 = MIBUDiagnosticsOperation;
      goto LABEL_14;
    }

    if (code == 4)
    {
      v6 = MIBUShippingUpdateOperation;
      goto LABEL_14;
    }
  }

  else
  {
    if (!code)
    {
      goto LABEL_15;
    }

    if (code == 1)
    {
      v6 = MIBUSoftwareUpdateOperation;
LABEL_14:
      code = [[v6 alloc] initWithDelegate:delegateCopy];
      goto LABEL_15;
    }
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_100057488();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10005749C(code, v7);
  }

  code = 0;
LABEL_15:

  return code;
}

@end