@interface MIBUOperationFactory
+ (id)sharedInstance;
- (id)buildCurrentOperationWithDelegate:(id)a3;
- (id)buildOperationFromCode:(unint64_t)a3 andDelegate:(id)a4;
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

- (id)buildCurrentOperationWithDelegate:(id)a3
{
  v4 = a3;
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

  v7 = [(MIBUOperationFactory *)self buildOperationFromCode:v5 andDelegate:v4];

  return v7;
}

- (id)buildOperationFromCode:(unint64_t)a3 andDelegate:(id)a4
{
  v5 = a4;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v6 = MIBUDiagnosticsOperation;
      goto LABEL_14;
    }

    if (a3 == 4)
    {
      v6 = MIBUShippingUpdateOperation;
      goto LABEL_14;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      v6 = MIBUSoftwareUpdateOperation;
LABEL_14:
      a3 = [[v6 alloc] initWithDelegate:v5];
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
    sub_10005749C(a3, v7);
  }

  a3 = 0;
LABEL_15:

  return a3;
}

@end