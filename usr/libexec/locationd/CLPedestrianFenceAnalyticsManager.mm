@interface CLPedestrianFenceAnalyticsManager
- (void)cleanupPackets;
- (void)sendAnalyticsForAllReadySessions;
@end

@implementation CLPedestrianFenceAnalyticsManager

- (void)sendAnalyticsForAllReadySessions
{
  if (self->_odometryPackets.__tree_.__size_)
  {
    left = self->_odometryPackets.__tree_.__end_node_.__left_;
    p_end_node = &self->_odometryPackets.__tree_.__end_node_;
    if (left)
    {
      do
      {
        v4 = left;
        left = left[1];
      }

      while (left);
    }

    else
    {
      v5 = &self->_odometryPackets.__tree_.__end_node_;
      do
      {
        v4 = v5[2].__left_;
        v6 = *v4 == v5;
        v5 = v4;
      }

      while (v6);
    }

    v43 = v4[4];
    v40 = +[NSMutableArray array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    selfCopy = self;
    obj = [(CLPedestrianFenceAnalyticsManager *)self completedSessionsAwaitingPackets];
    v44 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v70 count:16];
    if (v44)
    {
      v42 = *v47;
      do
      {
        v8 = 0;
        do
        {
          if (*v47 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v46 + 1) + 8 * v8);
          v10 = [objc_msgSend(v9 objectForKeyedSubscript:{@"sequenceNumberEnd", "unsignedShortValue"}];
          v11 = v10 - 1;
          if (v43 < v10 - 1)
          {
            goto LABEL_52;
          }

          v12 = [objc_msgSend(v9 objectForKeyedSubscript:{@"sequenceNumberStart", "unsignedShortValue"}];
          v45 = v12;
          v13 = [objc_msgSend(v9 objectForKeyedSubscript:{@"metricType", "intValue"}];
          [v9 removeObjectForKey:@"sequenceNumberStart"];
          [v9 removeObjectForKey:@"sequenceNumberEnd"];
          if (!v13)
          {
            [v9 removeObjectForKey:@"metricType"];
          }

          v14 = [(CLPedestrianFenceAnalyticsManager *)selfCopy aggregateStatsFromPacket:v12 to:v10 useAOPDuration:v13 == 2];
          [v9 addEntriesFromDictionary:v14];
          v15 = sub_1000081AC();
          v16 = v15;
          if (v13 == 2 && v15 - selfCopy->_timestampLastLog <= 0.5)
          {
            goto LABEL_49;
          }

          v17 = p_end_node->__left_;
          if (!p_end_node->__left_)
          {
            v20 = 0;
            goto LABEL_32;
          }

          v18 = p_end_node->__left_;
          do
          {
            v19 = v18[4];
            if (v19 <= v12)
            {
              if (v19 >= v12)
              {
                v20 = sub_100240250(&selfCopy->_odometryPackets, &v45)[15];
                v17 = p_end_node->__left_;
                if (p_end_node->__left_)
                {
                  goto LABEL_27;
                }

LABEL_32:
                v23 = 0;
                goto LABEL_33;
              }

              ++v18;
            }

            v18 = *v18;
          }

          while (v18);
          v20 = 0;
          if (!v17)
          {
            goto LABEL_32;
          }

LABEL_27:
          v21 = v17;
          while (2)
          {
            v22 = v21[4];
            if (v11 < v22)
            {
LABEL_31:
              v21 = *v21;
              if (!v21)
              {
                goto LABEL_32;
              }

              continue;
            }

            break;
          }

          if (v22 < v11)
          {
            ++v21;
            goto LABEL_31;
          }

          while (1)
          {
            while (1)
            {
              v30 = v17;
              v31 = v17[4];
              if (v11 >= v31)
              {
                break;
              }

              v17 = *v30;
              if (!*v30)
              {
LABEL_58:
                operator new();
              }
            }

            if (v31 >= v11)
            {
              break;
            }

            v17 = v30[1];
            if (!v17)
            {
              goto LABEL_58;
            }
          }

          v23 = v30[21];
LABEL_33:
          if (qword_1025D4500 != -1)
          {
            sub_1019A8E28();
          }

          v24 = qword_1025D4508;
          if (os_log_type_enabled(qword_1025D4508, OS_LOG_TYPE_DEFAULT))
          {
            v25 = "unexpected";
            if (v13 == 2)
            {
              v25 = "interval";
            }

            if (v13 == 1)
            {
              v25 = "odometrySession";
            }

            if (v13)
            {
              v26 = v25;
            }

            else
            {
              v26 = "fenceSession";
            }

            if (v13)
            {
              v27 = @"clientId";
            }

            else
            {
              v27 = @"fenceId";
            }

            v28 = [NSString stringWithUTF8String:v26];
            v29 = [v9 objectForKeyedSubscript:v27];
            *buf = 138544386;
            v61 = v28;
            v62 = 2114;
            v63 = v29;
            v64 = 2050;
            v65 = v20;
            v66 = 2050;
            v67 = v23;
            v68 = 2114;
            v69 = v14;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "[Analytics] type,%{public}@,client,%{public}@,from,%{public}f,to,%{public}f: %{public}@", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4500 != -1)
            {
              sub_1019A8E28();
            }

            v32 = "unexpected";
            if (v13 == 2)
            {
              v32 = "interval";
            }

            if (v13 == 1)
            {
              v32 = "odometrySession";
            }

            if (v13)
            {
              v33 = v32;
            }

            else
            {
              v33 = "fenceSession";
            }

            if (v13)
            {
              v34 = @"clientId";
            }

            else
            {
              v34 = @"fenceId";
            }

            v35 = [NSString stringWithUTF8String:v33];
            v36 = [v9 objectForKeyedSubscript:v34];
            v50 = 138544386;
            v51 = v35;
            v52 = 2114;
            v53 = v36;
            v54 = 2050;
            v55 = v20;
            v56 = 2050;
            v57 = v23;
            v58 = 2114;
            v59 = v14;
            v37 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLPedestrianFenceAnalyticsManager sendAnalyticsForAllReadySessions]", "%s\n", v37);
            if (v37 != buf)
            {
              free(v37);
            }
          }

          selfCopy->_timestampLastLog = v16;
          if (v13 == 2)
          {
LABEL_49:
            if (([objc_msgSend(v9 objectForKeyedSubscript:{@"clientId", "isEqualToString:", @"fenceClient"}] & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          else
          {
LABEL_50:
            [NSDictionary dictionaryWithDictionary:v9];
            AnalyticsSendEventLazy();
          }

          [v40 addObject:v9];
LABEL_52:
          v8 = v8 + 1;
        }

        while (v8 != v44);
        v38 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v70 count:16];
        v44 = v38;
      }

      while (v38);
    }

    [(NSMutableArray *)[(CLPedestrianFenceAnalyticsManager *)selfCopy completedSessionsAwaitingPackets] removeObjectsInArray:v40];
    [(CLPedestrianFenceAnalyticsManager *)selfCopy cleanupPackets];
  }
}

- (void)cleanupPackets
{
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  allValues = [(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeOdometryClients] allValues];
  v4 = [allValues countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v4)
  {
    v5 = *v43;
    unsignedShortValue = -1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v43 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        if (unsignedShortValue >= [objc_msgSend(v8 objectForKeyedSubscript:{@"sequenceNumberStart", "unsignedShortValue"}])
        {
          unsignedShortValue = [objc_msgSend(v8 objectForKeyedSubscript:{@"sequenceNumberStart", "unsignedShortValue"}];
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v4);
  }

  else
  {
    unsignedShortValue = -1;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allValues2 = [(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeFenceSessions] allValues];
  v10 = [allValues2 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v10)
  {
    v11 = *v39;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(allValues2);
        }

        v13 = *(*(&v38 + 1) + 8 * j);
        if (unsignedShortValue >= [v13 unsignedShortValue])
        {
          unsignedShortValue = [v13 unsignedShortValue];
        }
      }

      v10 = [allValues2 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v10);
  }

  if (![(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeFenceSessions] count]&& ![(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeOdometryClients] count])
  {
    [(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeIntervalEvents] removeAllObjects];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  allValues3 = [(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeIntervalEvents] allValues];
  v15 = [allValues3 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v15)
  {
    v16 = *v35;
    do
    {
      for (k = 0; k != v15; k = k + 1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(allValues3);
        }

        v18 = *(*(&v34 + 1) + 8 * k);
        if (unsignedShortValue >= [v18 unsignedShortValue])
        {
          unsignedShortValue = [v18 unsignedShortValue];
        }
      }

      v15 = [allValues3 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v15);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  completedSessionsAwaitingPackets = [(CLPedestrianFenceAnalyticsManager *)self completedSessionsAwaitingPackets];
  v20 = [(NSMutableArray *)completedSessionsAwaitingPackets countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v20)
  {
    v21 = *v31;
    do
    {
      for (m = 0; m != v20; m = m + 1)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(completedSessionsAwaitingPackets);
        }

        v23 = *(*(&v30 + 1) + 8 * m);
        if (unsignedShortValue >= [objc_msgSend(v23 objectForKeyedSubscript:{@"sequenceNumberStart", "unsignedShortValue"}])
        {
          unsignedShortValue = [objc_msgSend(v23 objectForKeyedSubscript:{@"sequenceNumberStart", "unsignedShortValue"}];
        }
      }

      v20 = [(NSMutableArray *)completedSessionsAwaitingPackets countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v20);
  }

  begin_node = self->_odometryPackets.__tree_.__begin_node_;
  if (begin_node != &self->_odometryPackets.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[1].__left_;
      if (begin_node[4].__left_ >= unsignedShortValue)
      {
        if (left)
        {
          do
          {
            v27 = left;
            left = left->super.isa;
          }

          while (left);
        }

        else
        {
          do
          {
            v27 = begin_node[2].__left_;
            v28 = v27->super.isa == begin_node;
            begin_node = v27;
          }

          while (!v28);
        }
      }

      else
      {
        v26 = begin_node;
        if (left)
        {
          do
          {
            v27 = left;
            left = left->super.isa;
          }

          while (left);
        }

        else
        {
          do
          {
            v27 = v26[2];
            v28 = v27->super.isa == v26;
            v26 = v27;
          }

          while (!v28);
        }

        if (self->_odometryPackets.__tree_.__begin_node_ == begin_node)
        {
          self->_odometryPackets.__tree_.__begin_node_ = v27;
        }

        v29 = self->_odometryPackets.__tree_.__end_node_.__left_;
        --self->_odometryPackets.__tree_.__size_;
        sub_1000B8E4C(v29, begin_node);
        operator delete(begin_node);
      }

      begin_node = v27;
    }

    while (v27 != &self->_odometryPackets.__tree_.__end_node_);
  }
}

@end