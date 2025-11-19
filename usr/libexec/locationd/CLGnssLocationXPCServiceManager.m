@interface CLGnssLocationXPCServiceManager
- (CLGnssLocationXPCServiceManager)init;
- (id)getConnection;
- (id)getSynchronousRemoteObjectProxy;
- (void)configureInitializeAndStartRavenSupervisorWithPlatformInfo:(id)a3 withParametersOverrideString:(id)a4 withCompletion:(id)a5;
- (void)dealloc;
- (void)getRavenSolutionAtMCTime:(double)a3 WithReply:(id)a4;
- (void)getRavenSolutionWithReply:(id)a3;
- (void)initializeTriangleSleepManager;
- (void)pauseResetAndFreeRavenSupervisorWithCompletion:(id)a3;
- (void)raiseRavenEventsFromData:(id)a3;
- (void)reconfigureRavenIfNeeded;
- (void)reset;
- (void)shutdown;
@end

@implementation CLGnssLocationXPCServiceManager

- (void)reconfigureRavenIfNeeded
{
  if (self->fRavenCurrentlyRunning)
  {
    v11 = v2;
    v12 = v3;
    if (self->fConnectionInterruptedAfterRavenConfiguration && self->fRavenPlatformInfoData && self->fRavenParametersString)
    {
      if (qword_1025D4680 != -1)
      {
        sub_1018B510C();
      }

      v5 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLGLS,reconfigureRavenIfNeeded", v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B53B4();
      }

      v6 = [(CLGnssLocationXPCServiceManager *)self getSynchronousRemoteObjectProxy];
      fRavenPlatformInfoData = self->fRavenPlatformInfoData;
      fRavenParametersString = self->fRavenParametersString;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10052D938;
      v9[3] = &unk_10245C2C8;
      v9[4] = self;
      [v6 configureInitializeAndStartRavenSupervisorWithPlatformInfo:fRavenPlatformInfoData withParametersOverrideString:fRavenParametersString withCompletion:v9];
    }
  }
}

- (id)getSynchronousRemoteObjectProxy
{
  v2 = [(CLGnssLocationXPCServiceManager *)self getConnection];

  return [v2 synchronousRemoteObjectProxyWithErrorHandler:&stru_10245C7C0];
}

- (id)getConnection
{
  result = self->_connection;
  if (!result)
  {
    result = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.corelocation.GNSSLocationService"];
    self->_connection = result;
    if (result)
    {
      [(NSXPCConnection *)self->_connection setRemoteObjectInterface:[NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GNSSLocationServiceProtocol]];
      v4 = objc_opt_class();
      v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
      [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v5 forSelector:"getRavenSolutionWithReply:" argumentIndex:0 ofReply:0];
      [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v5 forSelector:"getRavenSolutionWithReply:" argumentIndex:0 ofReply:1];
      [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v5 forSelector:"getRavenSolutionAtMCTime:WithReply:" argumentIndex:0 ofReply:0];
      [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v5 forSelector:"getRavenSolutionAtMCTime:WithReply:" argumentIndex:0 ofReply:1];
      [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v5 forSelector:"raiseRavenEventsFromData:" argumentIndex:0 ofReply:0];
      connection = self->_connection;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10052D6C4;
      v9[3] = &unk_102447418;
      v9[4] = self;
      [(NSXPCConnection *)connection setInvalidationHandler:v9];
      v7 = self->_connection;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10052D774;
      v8[3] = &unk_102447418;
      v8[4] = self;
      [(NSXPCConnection *)v7 setInterruptionHandler:v8];
      [(NSXPCConnection *)self->_connection activate];
      return self->_connection;
    }
  }

  return result;
}

- (CLGnssLocationXPCServiceManager)init
{
  v7.receiver = self;
  v7.super_class = CLGnssLocationXPCServiceManager;
  v2 = [(CLGnssLocationXPCServiceManager *)&v7 init];
  if (v2)
  {
    if (qword_1025D4680 != -1)
    {
      sub_1018B4F20();
    }

    v3 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLGLS,CLGnssLocationXPCServiceManager,init", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B4F48();
    }
  }

  else
  {
    if (qword_1025D4680 != -1)
    {
      sub_1018B4F20();
    }

    v4 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLGLS,CLGnssLocationXPCServiceManager,could not initialize object", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B5024();
    }
  }

  *&v2->fRavenCurrentlyRunning = 0;
  v2->fRavenPlatformInfoData = 0;
  v2->fRavenParametersString = 0;
  [(CLGnssLocationXPCServiceManager *)v2 initializeTriangleSleepManager];
  return v2;
}

- (void)dealloc
{
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v3 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,dealloc", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B52D8();
  }

  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  self->_connection = 0;
  fRavenPlatformInfoData = self->fRavenPlatformInfoData;
  if (fRavenPlatformInfoData)
  {

    self->fRavenPlatformInfoData = 0;
  }

  fRavenParametersString = self->fRavenParametersString;
  if (fRavenParametersString)
  {

    self->fRavenParametersString = 0;
  }

  fTriangleSleepManager = self->fTriangleSleepManager;
  if (fTriangleSleepManager)
  {

    self->fTriangleSleepManager = 0;
  }

  v8.receiver = self;
  v8.super_class = CLGnssLocationXPCServiceManager;
  [(CLGnssLocationXPCServiceManager *)&v8 dealloc];
}

- (void)configureInitializeAndStartRavenSupervisorWithPlatformInfo:(id)a3 withParametersOverrideString:(id)a4 withCompletion:(id)a5
{
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v9 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLGLS,CLGnssLocationXPCServiceManager,configureInitializeAndStartRavenSupervisorWithPlatformInfo", v10, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B56C8();
  }

  [-[CLGnssLocationXPCServiceManager getSynchronousRemoteObjectProxy](self "getSynchronousRemoteObjectProxy")];
  *&self->fRavenCurrentlyRunning = 1;
  self->fRavenPlatformInfoData = a3;
  self->fRavenParametersString = a4;
}

- (void)pauseResetAndFreeRavenSupervisorWithCompletion:(id)a3
{
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v5 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLGLS,CLGnssLocationXPCServiceManager,pauseResetAndFreeRavenSupervisor", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B57A4();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10052DCE0;
  v6[3] = &unk_10245C2F0;
  v6[4] = self;
  v6[5] = a3;
  [-[CLGnssLocationXPCServiceManager getSynchronousRemoteObjectProxy](self "getSynchronousRemoteObjectProxy")];
}

- (void)getRavenSolutionAtMCTime:(double)a3 WithReply:(id)a4
{
  [(CLTriangleSleepManager *)self->fTriangleSleepManager performSleep];
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v7 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v10 = a3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CLGLS,CLGnssLocationXPCServiceManager,getRavenSolutionAtMCTimeWithReply,%{public}.2lf", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B5880(a3);
  }

  [(CLGnssLocationXPCServiceManager *)self reconfigureRavenIfNeeded];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10052DE84;
  v8[3] = &unk_10245C7E8;
  v8[4] = a4;
  [-[CLGnssLocationXPCServiceManager getSynchronousRemoteObjectProxy](self "getSynchronousRemoteObjectProxy")];
}

- (void)getRavenSolutionWithReply:(id)a3
{
  [(CLTriangleSleepManager *)self->fTriangleSleepManager performSleep];
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v5 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLGLS,CLGnssLocationXPCServiceManager,getRavenSolutionAtMCTimeWithReply", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B5998();
  }

  [(CLGnssLocationXPCServiceManager *)self reconfigureRavenIfNeeded];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10052DFA0;
  v6[3] = &unk_10245C7E8;
  v6[4] = a3;
  [-[CLGnssLocationXPCServiceManager getSynchronousRemoteObjectProxy](self "getSynchronousRemoteObjectProxy")];
}

- (void)raiseRavenEventsFromData:(id)a3
{
  [(CLGnssLocationXPCServiceManager *)self reconfigureRavenIfNeeded];
  v5 = [(CLGnssLocationXPCServiceManager *)self getSynchronousRemoteObjectProxy];

  [v5 raiseRavenEventsFromData:a3];
}

- (void)reset
{
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v3 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,reset", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B5A74();
  }

  fRavenPlatformInfoData = self->fRavenPlatformInfoData;
  if (fRavenPlatformInfoData)
  {

    self->fRavenPlatformInfoData = 0;
  }

  fRavenParametersString = self->fRavenParametersString;
  if (fRavenParametersString)
  {

    self->fRavenParametersString = 0;
  }

  self->fRavenCurrentlyRunning = 0;
}

- (void)shutdown
{
  [(CLGnssLocationXPCServiceManager *)self reset];
  if (self->_connection)
  {
    if (qword_1025D4680 != -1)
    {
      sub_1018B510C();
    }

    v3 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,invalidating connection", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B5B50();
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }
}

- (void)initializeTriangleSleepManager
{
  sub_10001CAF4(&v12);
  LOBYTE(v14) = 0;
  v3 = sub_10001CB4C(v12, "CLGnssLocationXPCServiceManager.TriangleSleepEnabled", &v14);
  v4 = v3 & v14;
  if (v13)
  {
    sub_100008080(v13);
  }

  if (v4)
  {
    sub_10001CAF4(&v12);
    v14 = 0;
    if (sub_10005BBE4(v12, "CLGnssLocationXPCServiceManager.TriangleSleepMinMs", &v14))
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    if (v13)
    {
      sub_100008080(v13);
    }

    sub_10001CAF4(&v12);
    v14 = 0;
    if (sub_10005BBE4(v12, "CLGnssLocationXPCServiceManager.TriangleSleepMaxMs", &v14))
    {
      v6 = v14;
    }

    else
    {
      v6 = 1000;
    }

    if (v13)
    {
      sub_100008080(v13);
    }

    sub_10001CAF4(&v12);
    v14 = 0;
    if (sub_10005BBE4(v12, "CLGnssLocationXPCServiceManager.TriangleSleepIncrementMs", &v14))
    {
      v7 = v14;
    }

    else
    {
      v7 = 100;
    }

    if (v13)
    {
      sub_100008080(v13);
    }

    v8 = [[CLTriangleSleepManager alloc] initWithMinMs:v5 maxMs:v6 incrementMs:v7];
    self->fTriangleSleepManager = v8;
    if (v8)
    {
      if (qword_1025D4680 != -1)
      {
        sub_1018B4F20();
      }

      v9 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLGLS,CLGnssLocationXPCServiceManager,triangle sleep manager created and enabled", &v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B5D10();
      }
    }

    else
    {
      if (qword_1025D4680 != -1)
      {
        sub_1018B4F20();
      }

      v11 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "CLGLS,CLGnssLocationXPCServiceManager,triangle sleep manager not created (min=0,max=0)", &v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B5DF4();
      }
    }
  }

  else
  {
    if (qword_1025D4680 != -1)
    {
      sub_1018B4F20();
    }

    v10 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "CLGLS,CLGnssLocationXPCServiceManager,triangle sleep disabled via TriangleSleepEnabled=NO", &v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B5C2C();
    }
  }
}

@end