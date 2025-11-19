@interface CLSignificantVisitManager
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)clientInterestStoreGetValueForClientKey:(const char *)a3 parameterKey:(const char *)a4 value:(int *)a5;
- (BOOL)clientInterestStoreSetValueForClientKey:(const char *)a3 parameterKey:(const char *)a4 value:(int)a5;
- (BOOL)interestForClientKey:(const char *)a3 outInterest:(int *)a4;
- (BOOL)interestTypeForClientKey:(const char *)a3 outType:(int *)a4;
- (BOOL)isClientWithKeyInterested:(id)a3;
- (CLSignificantVisitManager)init;
- (id).cxx_construct;
- (id)authorizationDateForClientWithKey:(id)a3;
- (id)keyForClient:(id)a3;
- (void)actOnPendingDeleteForClientKey:(id)a3;
- (void)beginService;
- (void)checkForMonitoring;
- (void)connectClient:(id)a3 withKey:(id)a4;
- (void)deliverVisit:(id)a3 toClient:(id)a4;
- (void)disconnectClient:(id)a3;
- (void)endService;
- (void)ensureMonitoringWithType:(int)a3;
- (void)ensureStop;
- (void)flushAll;
- (void)flushAuthDates;
- (void)flushInterest;
- (void)migrateClientInterestData;
- (void)notifyClientsOfVisit:(id)a3;
- (void)onAuthDateStoreTimer;
- (void)onClientManagerNotification:(int)a3 data:(NotificationData *)a4;
- (void)onInterestStoreTimer;
- (void)onVisit:(id)a3;
- (void)performBlockWhenArmed:(id)a3;
- (void)removeInterestForClientKey:(id)a3;
- (void)removeOldVisits;
- (void)sendVisitsToClient:(id)a3;
- (void)settingsDidChange:(id)a3;
- (void)simulateVisit:(id)a3;
- (void)startMonitoringSignificantVisitsForClient:(id)a3 type:(int)a4;
- (void)stopMonitoringSignificantVisitsForClient:(id)a3;
@end

@implementation CLSignificantVisitManager

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102659FA8 != -1)
  {
    sub_101939564();
  }

  return qword_102659FA0;
}

- (CLSignificantVisitManager)init
{
  v3.receiver = self;
  v3.super_class = CLSignificantVisitManager;
  return [(CLSignificantVisitManager *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLSignificantVisitManagerProtocol outboundProtocol:&OBJC_PROTOCOL___CLSignificantVisitManagerClientProtocol];
}

- (void)beginService
{
  [-[CLSignificantVisitManager universe](self "universe")];
  v3 = [[CLSettingsMirror alloc] initInUniverse:{-[CLSignificantVisitManager universe](self, "universe")}];
  self->fSettings = v3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007BF774;
  v4[3] = &unk_10246F4D0;
  v4[4] = self;
  [(CLSettingsMirror *)v3 setSettingsChangeHandler:v4];
  [(CLSignificantVisitManager *)self universe];
  sub_1007A98FC();
}

- (void)endService
{
  [-[CLSignificantVisitManager universe](self "universe")];
  [(CLSignificantVisitManager *)self ensureStop];
  (*(*[(CLSignificantVisitManager *)self clientInterest]+ 960))();
  (*(*[(CLSignificantVisitManager *)self clientAuthDate]+ 960))();
  [(CLSignificantVisitManager *)self flushAll];
  ptr = self->_clientManagerClient.__ptr_;
  self->_clientManagerClient.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  v4 = [(CLSignificantVisitManager *)self clientInterest];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  [(CLSignificantVisitManager *)self setClientInterest:0];
  v5 = [(CLSignificantVisitManager *)self clientAuthDate];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  [(CLSignificantVisitManager *)self setClientAuthDate:0];
  [(CLSignificantVisitManager *)self setClientAuthorizationCache:0];
  [(CLSignificantVisitManager *)self setRecentVisits:0];
  [(CLSignificantVisitManager *)self setRoutineMonitor:0];
  p_end_node = &self->_clientToKey.__tree_.__end_node_;
  begin_node = self->_clientToKey.__tree_.__begin_node_;
  if (begin_node != &self->_clientToKey.__tree_.__end_node_)
  {
    do
    {

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v9 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v9 = begin_node[2].__left_;
          v10 = v9->__left_ == begin_node;
          begin_node = v9;
        }

        while (!v10);
      }

      begin_node = v9;
    }

    while (v9 != p_end_node);
  }

  sub_1003C93BC(&self->_clientToKey, self->_clientToKey.__tree_.__end_node_.__left_);
  self->_clientToKey.__tree_.__end_node_.__left_ = 0;
  self->_clientToKey.__tree_.__size_ = 0;
  self->_clientToKey.__tree_.__begin_node_ = p_end_node;
  fSettings = self->fSettings;
}

- (void)flushAuthDates
{
  v2 = [(CLSignificantVisitManager *)self clientAuthDate];
  if (((*(*v2 + 944))(v2) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#slv Could not store client auth dates}", &v5, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v4 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv Could not store client auth dates", "{msg%{public}.0s:#slv Could not store client auth dates}", &v5, 0x12u);
    }
  }
}

- (void)flushInterest
{
  v2 = [(CLSignificantVisitManager *)self clientInterest];
  if (((*(*v2 + 944))(v2) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#slv Could not store significant location visit clients}", &v5, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v4 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv Could not store significant location visit clients", "{msg%{public}.0s:#slv Could not store significant location visit clients}", &v5, 0x12u);
    }
  }
}

- (void)flushAll
{
  [(CLSignificantVisitManager *)self flushAuthDates];

  [(CLSignificantVisitManager *)self flushInterest];
}

- (void)ensureMonitoringWithType:(int)a3
{
  [-[CLSignificantVisitManager universe](self "universe")];
  if (qword_1025D47A0 != -1)
  {
    sub_101939528();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v14 = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 1026;
    v19 = a3;
    v20 = 1026;
    v21 = [(CLSignificantVisitManager *)self monitoring];
    v22 = 1026;
    v23 = [(CLSignificantVisitManager *)self leeching];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#slv ensureMonitoringWithType, type:%{public}d, monitoring:%{public}hhd, leeching:%{public}hhd}", &v14, 0x24u);
  }

  if (a3 == 1)
  {
    if (![(CLSignificantVisitManager *)self leeching])
    {
      v11 = [(CLSignificantVisitManager *)self routineMonitor];
      [(CLRoutineMonitorServiceProtocol *)v11 startLeechingVisitsForClient:CLISP_ME_TOKEN];
      [(CLSignificantVisitManager *)self setLeeching:1];
      if ([(CLSignificantVisitManager *)self monitoring])
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10193953C();
        }

        v12 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 68289026;
          v15 = 0;
          v16 = 2082;
          v17 = "";
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Currently monitoring. Stop monitoring and switch to leeching}", &v14, 0x12u);
        }

        v13 = [(CLSignificantVisitManager *)self routineMonitor];
        [(CLRoutineMonitorServiceProtocol *)v13 stopMonitoringVisitsForClient:CLISP_ME_TOKEN];
        [(CLSignificantVisitManager *)self setMonitoring:0];
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 68289026;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v10 = "{msg%{public}.0s:#slv Begin leeching}";
        goto LABEL_29;
      }
    }
  }

  else if (!a3 && ![(CLSignificantVisitManager *)self monitoring])
  {
    v6 = [(CLSignificantVisitManager *)self routineMonitor];
    [(CLRoutineMonitorServiceProtocol *)v6 startMonitoringVisitsForClient:CLISP_ME_TOKEN];
    [(CLSignificantVisitManager *)self setMonitoring:1];
    if ([(CLSignificantVisitManager *)self leeching])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 68289026;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Currently leeching. Stop leeching and switch to monitoring}", &v14, 0x12u);
      }

      v8 = [(CLSignificantVisitManager *)self routineMonitor];
      [(CLRoutineMonitorServiceProtocol *)v8 stopLeechingVisitsForClient:CLISP_ME_TOKEN];
      [(CLSignificantVisitManager *)self setLeeching:0];
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10193953C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 68289026;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v10 = "{msg%{public}.0s:#slv Begin monitoring}";
LABEL_29:
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, v10, &v14, 0x12u);
    }
  }
}

- (void)ensureStop
{
  [-[CLSignificantVisitManager universe](self "universe")];
  if (qword_1025D47A0 != -1)
  {
    sub_101939528();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = [(CLSignificantVisitManager *)self monitoring];
    v12 = 1026;
    v13 = [(CLSignificantVisitManager *)self leeching];
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#slv ensureStop, monitoring:%{public}hhd, leeching:%{public}hhd}", v7, 0x1Eu);
  }

  if ([(CLSignificantVisitManager *)self monitoring]|| [(CLSignificantVisitManager *)self leeching])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10193953C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#slv Stop monitoring or leeching", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101939578();
    }

    [(CLSignificantVisitManager *)self setRecentVisits:+[NSMutableArray array]];
    if ([(CLSignificantVisitManager *)self monitoring])
    {
      v5 = [(CLSignificantVisitManager *)self routineMonitor];
      [(CLRoutineMonitorServiceProtocol *)v5 stopMonitoringVisitsForClient:CLISP_ME_TOKEN];
      [(CLSignificantVisitManager *)self setMonitoring:0];
    }

    if ([(CLSignificantVisitManager *)self leeching])
    {
      v6 = [(CLSignificantVisitManager *)self routineMonitor];
      [(CLRoutineMonitorServiceProtocol *)v6 stopLeechingVisitsForClient:CLISP_ME_TOKEN];
      [(CLSignificantVisitManager *)self setLeeching:0];
    }
  }
}

- (void)removeOldVisits
{
  v2 = [(CLSignificantVisitManager *)self recentVisits];
  v3 = [NSPredicate predicateWithBlock:&stru_1024716F8];

  [(NSMutableArray *)v2 filterUsingPredicate:v3];
}

- (BOOL)isClientWithKeyInterested:(id)a3
{
  v10 = 0;
  if (!-[CLSignificantVisitManager interestForClientKey:outInterest:](self, "interestForClientKey:outInterest:", [a3 UTF8String], &v10) || v10)
  {
    LOBYTE(v7) = v10 == 1;
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10193953C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v5 = [a3 UTF8String];
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#slv Client in store with no interest, key:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v6 = off_1025D47A8;
    v7 = os_signpost_enabled(off_1025D47A8);
    if (v7)
    {
      v8 = [a3 UTF8String];
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = v8;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv Client in store with no interest", "{msg%{public}.0s:#slv Client in store with no interest, key:%{public, location:escape_only}s}", buf, 0x1Cu);
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)sendVisitsToClient:(id)a3
{
  [-[CLSignificantVisitManager universe](self "universe")];
  v5 = [(CLSignificantVisitManager *)self keyForClient:a3];
  if (v5)
  {
    v6 = v5;
    if ([(CLSignificantVisitManager *)self isClientWithKeyInterested:v5])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101939528();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        buf = 68289282;
        v22 = 2082;
        v23 = "";
        v24 = 2082;
        v25 = [v6 UTF8String];
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#slv Client is interested, key:%{public, location:escape_only}s}", &buf, 0x1Cu);
      }

      [(CLSignificantVisitManager *)self removeOldVisits];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [(CLSignificantVisitManager *)self recentVisits];
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [(CLSignificantVisitManager *)self deliverVisit:*(*(&v16 + 1) + 8 * i) toClient:a3];
          }

          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101939528();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        buf = 68289282;
        v22 = 2082;
        v23 = "";
        v24 = 2082;
        v25 = [v6 UTF8String];
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#slv Client has no interest, key:%{public, location:escape_only}s}", &buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      buf = 68289026;
      v22 = 2082;
      v23 = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#slv Can't deliver visit to client that hasn't connected}", &buf, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v14 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      buf = 68289026;
      v22 = 2082;
      v23 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv Can't deliver visit to client that hasn't connected", "{msg%{public}.0s:#slv Can't deliver visit to client that hasn't connected}", &buf, 0x12u);
    }
  }
}

- (void)deliverVisit:(id)a3 toClient:(id)a4
{
  [-[CLSignificantVisitManager universe](self "universe")];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007C0B58;
  v7[3] = &unk_102447468;
  v7[4] = self;
  v7[5] = a4;
  v7[6] = a3;
  [(CLSignificantVisitManager *)self performBlockWhenArmed:v7];
}

- (void)performBlockWhenArmed:(id)a3
{
  [-[CLSignificantVisitManager universe](self "universe")];
  if ([(CLSignificantVisitManager *)self armed])
  {
    v5 = *(a3 + 2);

    v5(a3);
  }

  else
  {
    v6 = [(CLSignificantVisitManager *)self clientAuthorizationCache];

    [(CLClientAuthorizationCacheProtocol *)v6 notifyWhenCacheIsPopulatedWithReply:a3];
  }
}

- (id)keyForClient:(id)a3
{
  [-[CLSignificantVisitManager universe](self "universe")];
  left = self->_clientToKey.__tree_.__end_node_.__left_;
  if (!left)
  {
    return 0;
  }

  p_end_node = &self->_clientToKey.__tree_.__end_node_;
  do
  {
    size = left->_clientToKey.__tree_.__size_;
    v8 = size >= a3;
    v9 = size < a3;
    if (v8)
    {
      p_end_node = left;
    }

    left = *&left->CLIntersiloService_opaque[8 * v9];
  }

  while (left);
  if (p_end_node == &self->_clientToKey.__tree_.__end_node_ || p_end_node->_clientToKey.__tree_.__size_ > a3)
  {
    return 0;
  }

  v11 = p_end_node->fSettings;

  return v11;
}

- (void)connectClient:(id)a3 withKey:(id)a4
{
  v15 = a3;
  [-[CLSignificantVisitManager universe](self "universe")];
  if (qword_1025D47A0 != -1)
  {
    sub_101939528();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = [a4 UTF8String];
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#slv Client is connecting, key:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  left = self->_clientToKey.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_clientToKey.__tree_.__end_node_;
    do
    {
      size = left->_clientToKey.__tree_.__size_;
      v11 = size >= a3;
      v12 = size < a3;
      if (v11)
      {
        p_end_node = left;
      }

      left = *&left->CLIntersiloService_opaque[8 * v12];
    }

    while (left);
    if (p_end_node != &self->_clientToKey.__tree_.__end_node_ && p_end_node->_clientToKey.__tree_.__size_ <= a3)
    {
    }
  }

  *buf = &v15;
  sub_1007C3B34(&self->_clientToKey, &v15)[5] = a4;
  v13 = v15;
  v14 = a4;
  [(CLSignificantVisitManager *)self sendVisitsToClient:v15];
}

- (void)startMonitoringSignificantVisitsForClient:(id)a3 type:(int)a4
{
  v4 = *&a4;
  [-[CLSignificantVisitManager universe](self "universe")];
  v7 = [(CLSignificantVisitManager *)self keyForClient:a3];
  if (v7)
  {
    v8 = v7;
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = [v8 UTF8String];
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Client start, key:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    -[CLSignificantVisitManager clientInterestStoreSetValueForClientKey:parameterKey:value:](self, "clientInterestStoreSetValueForClientKey:parameterKey:value:", [v8 UTF8String], "interest", 1);
    -[CLSignificantVisitManager clientInterestStoreSetValueForClientKey:parameterKey:value:](self, "clientInterestStoreSetValueForClientKey:parameterKey:value:", [v8 UTF8String], "type", v4);
    [(CLSignificantVisitManager *)self flushInterest];
    if ([(CLSignificantVisitManager *)self authorizationDateForClientWithKey:v8])
    {
      v10 = [v8 UTF8String];
      v11 = strlen(v10);
      if (v11 < 0x7FFFFFFFFFFFFFF8)
      {
        v12 = v11;
        if (v11 < 0x17)
        {
          *(&__dst.__r_.__value_.__s + 23) = v11;
          if (v11)
          {
            memmove(&__dst, v10, v11);
          }

          __dst.__r_.__value_.__s.__data_[v12] = 0;
          sub_1000EBF44(&__dst, buf);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_10079ADEC();
        }

        operator new();
      }

      sub_100061080();
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#slv Tried to start monitoring for a client that isn't connected}", buf, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v14 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv Tried to start monitoring for a client that isn't connected", "{msg%{public}.0s:#slv Tried to start monitoring for a client that isn't connected}", buf, 0x12u);
    }
  }
}

- (void)stopMonitoringSignificantVisitsForClient:(id)a3
{
  [-[CLSignificantVisitManager universe](self "universe")];
  v5 = [(CLSignificantVisitManager *)self keyForClient:a3];
  if (v5)
  {
    v6 = v5;
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = [v6 UTF8String];
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv client stop, key:%{public, location:escape_only}s}", &v10, 0x1Cu);
    }

    [(CLSignificantVisitManager *)self removeInterestForClientKey:v6];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#slv Tried to stop monitoring for a client that isn't connected}", &v10, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v9 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv Tried to stop monitoring for a client that isn't connected", "{msg%{public}.0s:#slv Tried to stop monitoring for a client that isn't connected}", &v10, 0x12u);
    }
  }
}

- (void)removeInterestForClientKey:(id)a3
{
  v5 = 0;
  -[CLSignificantVisitManager interestForClientKey:outInterest:](self, "interestForClientKey:outInterest:", [a3 UTF8String], &v5);
  if (v5 == 1)
  {
    -[CLSignificantVisitManager clientInterestStoreSetValueForClientKey:parameterKey:value:](self, "clientInterestStoreSetValueForClientKey:parameterKey:value:", [a3 UTF8String], "interest", 2);
    [(CLSignificantVisitManager *)self flushAll];
    [(CLSignificantVisitManager *)self actOnPendingDeleteForClientKey:a3];
    [(CLSignificantVisitManager *)self checkForMonitoring];
  }
}

- (void)actOnPendingDeleteForClientKey:(id)a3
{
  [-[CLSignificantVisitManager universe](self "universe")];
  v10 = 0;
  -[CLSignificantVisitManager interestForClientKey:outInterest:](self, "interestForClientKey:outInterest:", [a3 UTF8String], &v10);
  if (v10 != 2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10193953C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      buf = 68289539;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "false";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#slv programmer error.  Only call this function after setting client interest to PendingDelete, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      buf = 68289539;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv programmer error.  Only call this function after setting client interest to PendingDelete", "{msg%{public}.0s:#slv programmer error.  Only call this function after setting client interest to PendingDelete, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      buf = 68289539;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "false";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#slv programmer error.  Only call this function after setting client interest to PendingDelete, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    abort_report_np();
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007C1AD0;
  v9[3] = &unk_102471720;
  v9[4] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007C1B20;
  v8[3] = &unk_1024473F0;
  v8[4] = self;
  v8[5] = a3;
  [(CLClientManagerPublicProtocol *)[(CLSignificantVisitManager *)self clientManager] doAsync:v9 withReply:v8];
}

- (void)simulateVisit:(id)a3
{
  if (qword_1025D4810 != -1)
  {
    sub_10193968C();
  }

  v5 = qword_1025D4818;
  if (os_log_type_enabled(qword_1025D4818, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Sending simulated visit to clients}", v6, 0x12u);
  }

  [(CLSignificantVisitManager *)self notifyClientsOfVisit:a3];
}

- (void)disconnectClient:(id)a3
{
  [-[CLSignificantVisitManager universe](self "universe")];
  p_clientToKey = &self->_clientToKey;
  left = p_clientToKey->__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &p_clientToKey->__tree_.__end_node_;
    do
    {
      v8 = *(left + 4);
      v9 = v8 >= a3;
      v10 = v8 < a3;
      if (v9)
      {
        p_end_node = left;
      }

      left = *(left + v10);
    }

    while (left);
    if (p_end_node != &p_clientToKey->__tree_.__end_node_)
    {
      v11 = p_end_node[4].__left_;
      if (v11 <= a3)
      {

        sub_10045E8A0(p_clientToKey, p_end_node);

        operator delete(p_end_node);
      }
    }
  }
}

- (void)notifyClientsOfVisit:(id)a3
{
  [-[CLSignificantVisitManager universe](self "universe")];
  if (!a3)
  {
    sub_1019396A0();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007C1DEC;
  v5[3] = &unk_1024473F0;
  v5[4] = a3;
  v5[5] = self;
  [(CLSignificantVisitManager *)self performBlockWhenArmed:v5];
}

- (id)authorizationDateForClientWithKey:(id)a3
{
  [-[CLSignificantVisitManager universe](self "universe")];
  if (![(CLSignificantVisitManager *)self armed])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv #warning Can't produce a meaningful authorization date before arming is complete.  Returning nil}", buf, 0x12u);
    }

    return 0;
  }

  if (([-[CLClientAuthorizationCacheProtocol syncgetAuthorizationContextIfClientIsNonZonal:](-[CLSignificantVisitManager clientAuthorizationCache](self "clientAuthorizationCache")] & 1) == 0)
  {
    sub_1004FA8B8(-[CLSignificantVisitManager clientAuthDate](self, "clientAuthDate"), [a3 UTF8String], 0xFFFFFFFFLL);
    [(CLSignificantVisitManager *)self flushAuthDates];
    return 0;
  }

  *buf = 0;
  if (sub_1000B9370(-[CLSignificantVisitManager clientAuthDate](self, "clientAuthDate"), [a3 UTF8String], buf))
  {
    return [NSDate dateWithTimeIntervalSinceReferenceDate:*buf];
  }

  [objc_msgSend(-[CLSignificantVisitManager universe](self "universe")];
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v8 = [(CLSignificantVisitManager *)self clientAuthDate];
  v9 = [a3 UTF8String];
  [(NSDate *)v5 timeIntervalSinceReferenceDate];
  v11 = v10;
  sub_100116D68(v8, v9, &v11);
  [(CLSignificantVisitManager *)self flushAuthDates];
  return v5;
}

- (void)checkForMonitoring
{
  [-[CLSignificantVisitManager universe](self "universe")];
  if ([(CLSignificantVisitManager *)self armed])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#slv Checking if SLV should be active}", buf, 0x12u);
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_1004FAFA0([(CLSignificantVisitManager *)self clientInterest]);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101939528();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#slv Not checking for monitoring... not armed}", buf, 0x12u);
  }
}

- (void)migrateClientInterestData
{
  [-[CLSignificantVisitManager universe](self "universe")];
  v3 = 0;
  v4 = 0;
  v5 = 0;
  sub_1004FAFA0([(CLSignificantVisitManager *)self clientInterest]);
}

- (BOOL)interestForClientKey:(const char *)a3 outInterest:(int *)a4
{
  [-[CLSignificantVisitManager universe](self "universe")];

  return [(CLSignificantVisitManager *)self clientInterestStoreGetValueForClientKey:a3 parameterKey:"interest" value:a4];
}

- (BOOL)interestTypeForClientKey:(const char *)a3 outType:(int *)a4
{
  [-[CLSignificantVisitManager universe](self "universe")];

  return [(CLSignificantVisitManager *)self clientInterestStoreGetValueForClientKey:a3 parameterKey:"type" value:a4];
}

- (BOOL)clientInterestStoreGetValueForClientKey:(const char *)a3 parameterKey:(const char *)a4 value:(int *)a5
{
  [-[CLSignificantVisitManager universe](self "universe")];
  sub_10004FD18(v11);
  if (sub_100185ADC([(CLSignificantVisitManager *)self clientInterest], a3, v11))
  {
    v9 = sub_10005BBE4(v11, a4, a5);
  }

  else
  {
    v9 = 0;
  }

  sub_100005DA4(v11);
  return v9;
}

- (BOOL)clientInterestStoreSetValueForClientKey:(const char *)a3 parameterKey:(const char *)a4 value:(int)a5
{
  v11 = a5;
  [-[CLSignificantVisitManager universe](self "universe")];
  sub_10004FD18(v10);
  sub_100185ADC([(CLSignificantVisitManager *)self clientInterest], a3, v10);
  v8 = sub_10004345C(v10, a4, &v11) && sub_1004FD480([(CLSignificantVisitManager *)self clientInterest], a3, v10);
  sub_100005DA4(v10);
  return v8;
}

- (void)onVisit:(id)a3
{
  [-[CLSignificantVisitManager universe](self "universe")];
  if (a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289283;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2113;
      v13 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Received visit from routined, visit:%{private, location:escape_only}@}", &v8, 0x1Cu);
    }

    [(CLSignificantVisitManager *)self notifyClientsOfVisit:a3];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#slv Attempting to notify nil visit}", &v8, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v7 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv Attempting to notify nil visit", "{msg%{public}.0s:#slv Attempting to notify nil visit}", &v8, 0x12u);
    }
  }
}

- (void)onClientManagerNotification:(int)a3 data:(NotificationData *)a4
{
  [-[CLSignificantVisitManager universe](self universe];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sub_100037ACC(a4, &__p);
        if (v15 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        [(CLSignificantVisitManager *)self removeInterestForClientKey:[NSString stringWithUTF8String:p_p]];
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p);
        }

        return;
      }

      goto LABEL_15;
    }

LABEL_11:
    if (*(a4 + 47) != 1)
    {
      sub_1004FA320([(CLSignificantVisitManager *)self clientAuthDate]);
      [(CLSignificantVisitManager *)self flushAuthDates];

      [(CLSignificantVisitManager *)self ensureStop];
    }

    return;
  }

  if (a3 != 2)
  {
    if (a3 != 4)
    {
LABEL_15:
      if (qword_1025D47A0 != -1)
      {
        sub_101939528();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        __p = 68289282;
        v12 = 2082;
        v13 = "";
        v14 = 1026;
        v15 = a3;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#slv received unhandled notification, notification:%{public}d}", &__p, 0x18u);
        if (qword_1025D47A0 != -1)
        {
          sub_10193953C();
        }
      }

      v10 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        __p = 68289282;
        v12 = 2082;
        v13 = "";
        v14 = 1026;
        v15 = a3;
        _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv received unhandled notification", "{msg%{public}.0s:#slv received unhandled notification, notification:%{public}d}", &__p, 0x18u);
      }

      return;
    }

    goto LABEL_11;
  }

  [(CLSignificantVisitManager *)self checkForMonitoring];
}

- (void)onInterestStoreTimer
{
  [-[CLSignificantVisitManager universe](self "universe")];
  v3 = [(CLSignificantVisitManager *)self clientInterest];

  sub_100566B4C(v3);
}

- (void)onAuthDateStoreTimer
{
  [-[CLSignificantVisitManager universe](self "universe")];
  v3 = [(CLSignificantVisitManager *)self clientAuthDate];

  sub_100566B4C(v3);
}

- (void)settingsDidChange:(id)a3
{
  if ([a3 dictionaryForKey:@"SpoofSignificantVisit" defaultValue:0])
  {
    [a3 doubleForKey:@"Latitude" defaultValue:34.076452];
    v6 = v5;
    [a3 doubleForKey:@"Longitude" defaultValue:-118.429474];
    v8 = v7;
    [a3 doubleForKey:@"Accuracy" defaultValue:54.321];
    v10 = v9;
    [objc_msgSend(-[CLSignificantVisitManager universe](self "universe")];
    v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v12 = +[NSDate distantFuture];
    [objc_msgSend(-[CLSignificantVisitManager universe](self "universe")];
    v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [a3 doubleForKey:@"ArrivalTimestamp" defaultValue:0.0];
    if (v14 != 0.0)
    {
      v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    [a3 doubleForKey:@"DepartureTimestamp" defaultValue:0.0];
    if (v15 != 0.0)
    {
      v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    [a3 doubleForKey:@"DetectionTimestamp" defaultValue:0.0];
    if (v16 != 0.0)
    {
      v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    v17 = [CLVisit alloc];
    v18 = CLLocationCoordinate2DMake(v6, v8);
    v19 = [v17 initWithCoordinate:v11 horizontalAccuracy:v12 arrivalDate:v13 departureDate:v18.latitude detectionDate:{v18.longitude, v10}];
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v21[0] = 68289283;
      v21[1] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2113;
      v25 = v19;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Spoofing a Significant Visit, visit:%{private, location:escape_only}@}", v21, 0x1Cu);
    }

    [(CLSignificantVisitManager *)self notifyClientsOfVisit:v19];
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 2) = self + 24;
  return self;
}

@end