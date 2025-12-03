@interface FMDBluetoothFrameworkBTManagingFactory
+ (BOOL)isAutomationActive;
+ (id)bluetoothManagerWithQueue:(id)queue delegate:(id)delegate;
@end

@implementation FMDBluetoothFrameworkBTManagingFactory

+ (BOOL)isAutomationActive
{
  if (qword_100314A40 != -1)
  {
    sub_10022F75C();
  }

  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_100314A38;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAutomationBluetoothManager: isAutomationActive: %d", v4, 8u);
  }

  return byte_100314A38;
}

+ (id)bluetoothManagerWithQueue:(id)queue delegate:(id)delegate
{
  delegateCopy = delegate;
  if (+[FMDBluetoothFrameworkBTManagingFactory isAutomationActive])
  {
    if (qword_100314A50 != -1)
    {
      sub_10022F770();
    }

    [qword_100314A48 setBluetoothManager:delegateCopy];
    v5 = qword_100314A48;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end