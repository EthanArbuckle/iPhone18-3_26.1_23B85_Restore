@interface CLRoutineMonitor
- (void)checkDiminishedMode;
- (void)sendInertialData;
- (void)sendLocations;
- (void)trySendLocations;
@end

@implementation CLRoutineMonitor

- (void)checkDiminishedMode
{
  [-[CLRoutineMonitor universe](self "universe")];
  v3 = ![(CLRoutineMonitor *)self authorized]&& [(NSMutableSet *)[(CLRoutineMonitor *)self visitClients] count];

  [(CLRoutineMonitor *)self setDiminishedMode:v3];
}

- (void)sendInertialData
{
  [-[CLRoutineMonitor universe](self "universe")];
  [-[NSXPCConnection _unboostingRemoteObjectProxy](-[CLRoutineMonitor connection](self "connection")];
  v3 = [(CLRoutineMonitor *)self inertialSamples];

  [(NSMutableArray *)v3 removeAllObjects];
}

- (void)trySendLocations
{
  if ([(CLRoutineMonitor *)self updating])
  {

    [(CLRoutineMonitor *)self sendLocations];
  }

  else
  {
    [(CLRoutineMonitor *)self setArmed:1];
    if ([(NSMutableArray *)[(CLRoutineMonitor *)self locations] count]>= 0x272)
    {
      *&v3 = 134349056;
      v5 = v3;
      do
      {
        if (qword_1025D47C0 != -1)
        {
          sub_101A3C878();
        }

        v4 = qword_1025D47C8;
        if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v5;
          v9 = 625;
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#warning in-memory cache has exceeded threshold of %{public}lu, removing oldest fix", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A3DC68(v6, &v7);
        }

        [(NSMutableArray *)[(CLRoutineMonitor *)self locations] removeObjectAtIndex:0];
      }

      while ([(NSMutableArray *)[(CLRoutineMonitor *)self locations] count]> 0x271);
    }
  }
}

- (void)sendLocations
{
  [-[CLRoutineMonitor universe](self "universe")];
  [-[NSXPCConnection _unboostingRemoteObjectProxy](-[CLRoutineMonitor connection](self "connection")];
  v3 = sub_10000AE98();
  sub_1005D5CFC(v3, [(CLRoutineMonitor *)self locations]);
  [(NSMutableArray *)[(CLRoutineMonitor *)self locations] removeAllObjects];

  [(CLRoutineMonitor *)self setArmed:0];
}

@end