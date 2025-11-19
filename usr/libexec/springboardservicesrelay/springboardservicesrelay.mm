void start()
{
  secure_lockdown_checkin();
  v0 = __error();
  NSLog(@"lockdown_checkin() failed: %d", *v0);
  exit(-1);
}