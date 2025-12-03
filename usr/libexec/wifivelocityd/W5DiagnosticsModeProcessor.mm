@interface W5DiagnosticsModeProcessor
- (BOOL)_canStartMode:(id)mode error:(id *)error;
- (W5DiagnosticsModeProcessor)initWithCurrentPeer:(id)peer;
- (void)_cleanup;
- (void)_runAction:(int64_t)action peer:(id)peer info:(id)info handler:(id)handler completion:(id)completion;
- (void)performStartOperationsWithConfiguration:(id)configuration handler:(id)handler completion:(id)completion;
- (void)performStopOperationsForMode:(id)mode handler:(id)handler completion:(id)completion;
- (void)performUpdateOperationsForMode:(id)mode incomingMode:(id)incomingMode handler:(id)handler completion:(id)completion;
@end

@implementation W5DiagnosticsModeProcessor

- (W5DiagnosticsModeProcessor)initWithCurrentPeer:(id)peer
{
  peerCopy = peer;
  v12.receiver = self;
  v12.super_class = W5DiagnosticsModeProcessor;
  v5 = [(W5DiagnosticsModeProcessor *)&v12 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  if (!peerCopy)
  {
    v11 = sub_100098A04();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315906;
      v14 = "[W5DiagnosticsModeProcessor initWithCurrentPeer:]";
      v15 = 2080;
      v16 = "W5DiagnosticsModeProcessor.m";
      v17 = 1024;
      v18 = 32;
      v19 = 2080;
      v20 = "[W5DiagnosticsModeProcessor initWithCurrentPeer:]";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_9;
  }

  v5->_currentPeer = peerCopy;
  v7 = objc_alloc_init(NSOperationQueue);
  queue = v6->_queue;
  v6->_queue = v7;

  v9 = v6->_queue;
  if (!v9)
  {
LABEL_9:

    v6 = 0;
    goto LABEL_5;
  }

  [(NSOperationQueue *)v9 setMaxConcurrentOperationCount:1];
LABEL_5:

  return v6;
}

- (void)performStartOperationsWithConfiguration:(id)configuration handler:(id)handler completion:(id)completion
{
  configurationCopy = configuration;
  handlerCopy = handler;
  completionCopy = completion;
  v9 = sub_100098A04();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136316162;
    *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
    v101 = 2080;
    v102 = "W5DiagnosticsModeProcessor.m";
    v103 = 1024;
    v104 = 53;
    v105 = 2080;
    v106 = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
    v107 = 2114;
    v108 = configurationCopy;
    LODWORD(v57) = 48;
    v56 = location;
    _os_log_send_and_compose_impl();
  }

  v10 = [[W5DiagnosticsMode alloc] initWithConfiguration:configurationCopy];
  [(W5DiagnosticsModeProcessor *)self setMode:v10];

  mode = [(W5DiagnosticsModeProcessor *)self mode];
  LODWORD(v10) = mode == 0;

  if (v10)
  {
    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315906;
      *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
      v101 = 2080;
      v102 = "W5DiagnosticsModeProcessor.m";
      v103 = 1024;
      v104 = 57;
      v105 = 2114;
      v106 = configurationCopy;
      _os_log_send_and_compose_impl();
    }

    v97 = NSLocalizedFailureReasonErrorKey;
    v98 = @"W5ParamErr";
    v58 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    peers = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v58];
    v99 = peers;
    v23 = [NSArray arrayWithObjects:&v99 count:1];
    completionCopy[2](completionCopy, 0, v23);
  }

  else
  {
    mode2 = [(W5DiagnosticsModeProcessor *)self mode];
    v80 = 0;
    v13 = [(W5DiagnosticsModeProcessor *)self _canStartMode:mode2 error:&v80];
    v58 = v80;

    if (v13)
    {
      [(W5DiagnosticsModeProcessor *)self setConfiguration:configurationCopy];
      mode3 = [(W5DiagnosticsModeProcessor *)self mode];
      [mode3 setState:3];

      v15 = +[NSMutableArray array];
      [(W5DiagnosticsModeProcessor *)self setOperationErrors:v15];

      mode4 = [(W5DiagnosticsModeProcessor *)self mode];
      peers = [mode4 peers];

      currentPeer = [(W5DiagnosticsModeProcessor *)self currentPeer];
      role = [currentPeer role];

      if ((role & 8) != 0)
      {
        v25 = sub_10008EF68(peers, 1);
        obj = v25;
        if (v25)
        {
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v26 = [v25 countByEnumeratingWithState:&v76 objects:v95 count:16];
          if (v26)
          {
            v27 = *v77;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v77 != v27)
                {
                  objc_enumerationMutation(obj);
                }

                v29 = *(*(&v76 + 1) + 8 * i);
                v93 = @"DiagnosticsMode";
                v30 = [(W5DiagnosticsModeProcessor *)self mode:v56];
                v94 = v30;
                v31 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
                [(W5DiagnosticsModeProcessor *)self _runAction:3 peer:v29 info:v31 handler:handlerCopy completion:completionCopy];
              }

              v26 = [obj countByEnumeratingWithState:&v76 objects:v95 count:16];
            }

            while (v26);
          }
        }

        else
        {
          v37 = sub_100098A04();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *location = 136315138;
            *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
            LODWORD(v57) = 12;
            v56 = location;
            _os_log_send_and_compose_impl();
          }
        }

        v38 = sub_10008EF68(peers, 2);
        v62 = v38;
        if (v38)
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v39 = [v38 countByEnumeratingWithState:&v72 objects:v92 count:16];
          if (v39)
          {
            v40 = *v73;
            do
            {
              for (j = 0; j != v39; j = j + 1)
              {
                if (*v73 != v40)
                {
                  objc_enumerationMutation(v62);
                }

                v42 = *(*(&v72 + 1) + 8 * j);
                v90 = @"DiagnosticsMode";
                v43 = [(W5DiagnosticsModeProcessor *)self mode:v56];
                v91 = v43;
                v44 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
                [(W5DiagnosticsModeProcessor *)self _runAction:4 peer:v42 info:v44 handler:handlerCopy completion:completionCopy];
              }

              v39 = [v62 countByEnumeratingWithState:&v72 objects:v92 count:16];
            }

            while (v39);
          }
        }

        else
        {
          v45 = sub_100098A04();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *location = 136315138;
            *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
            LODWORD(v57) = 12;
            v56 = location;
            _os_log_send_and_compose_impl();
          }
        }

        v46 = sub_10008EF68(peers, 4);
        mode7 = v46;
        if (v46)
        {
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v47 = [v46 countByEnumeratingWithState:&v68 objects:v89 count:16];
          if (v47)
          {
            v48 = *v69;
            do
            {
              for (k = 0; k != v47; k = k + 1)
              {
                if (*v69 != v48)
                {
                  objc_enumerationMutation(mode7);
                }

                v50 = *(*(&v68 + 1) + 8 * k);
                v87 = @"DiagnosticsMode";
                v51 = [(W5DiagnosticsModeProcessor *)self mode:v56];
                v88 = v51;
                v52 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
                [(W5DiagnosticsModeProcessor *)self _runAction:0 peer:v50 info:v52 handler:handlerCopy completion:completionCopy];

                v85 = @"DiagnosticsMode";
                mode5 = [(W5DiagnosticsModeProcessor *)self mode];
                v86 = mode5;
                v54 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
                [(W5DiagnosticsModeProcessor *)self _runAction:5 peer:v50 info:v54 handler:handlerCopy completion:completionCopy];
              }

              v47 = [mode7 countByEnumeratingWithState:&v68 objects:v89 count:16];
            }

            while (v47);
          }

          goto LABEL_54;
        }

        v36 = sub_100098A04();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *location = 136315138;
          *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
          _os_log_send_and_compose_impl();
        }

        mode7 = 0;
      }

      else
      {
        currentPeer2 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        if ([currentPeer2 role])
        {
        }

        else
        {
          currentPeer3 = [(W5DiagnosticsModeProcessor *)self currentPeer];
          v21 = ([currentPeer3 role] & 2) == 0;

          if (v21)
          {
            goto LABEL_55;
          }
        }

        v32 = [(W5DiagnosticsModeProcessor *)self currentPeer:v56];
        v83[0] = @"event";
        v33 = [[NSNumber alloc] initWithInt:0];
        v83[1] = @"DiagnosticsMode";
        v84[0] = v33;
        mode6 = [(W5DiagnosticsModeProcessor *)self mode];
        v84[1] = mode6;
        v35 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:2];
        [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:v32 info:v35 handler:handlerCopy completion:completionCopy];

        obj = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v81[0] = @"event";
        v62 = [[NSNumber alloc] initWithInt:0];
        v81[1] = @"DiagnosticsMode";
        v82[0] = v62;
        mode7 = [(W5DiagnosticsModeProcessor *)self mode];
        v82[1] = mode7;
        v36 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:2];
        [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:obj info:v36 handler:handlerCopy completion:completionCopy];
      }

LABEL_54:
LABEL_55:
      objc_initWeak(location, self);
      queue = [(W5DiagnosticsModeProcessor *)self queue];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10008F0B4;
      v65[3] = &unk_1000E3520;
      objc_copyWeak(&v67, location);
      v66 = completionCopy;
      [queue addBarrierBlock:v65];

      objc_destroyWeak(&v67);
      objc_destroyWeak(location);
      goto LABEL_56;
    }

    v24 = sub_100098A04();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136316162;
      *&location[4] = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
      v101 = 2080;
      v102 = "W5DiagnosticsModeProcessor.m";
      v103 = 1024;
      v104 = 65;
      v105 = 2080;
      v106 = "[W5DiagnosticsModeProcessor performStartOperationsWithConfiguration:handler:completion:]";
      v107 = 2114;
      v108 = v58;
      _os_log_send_and_compose_impl();
    }

    v96 = v58;
    peers = [NSArray arrayWithObjects:&v96 count:1];
    completionCopy[2](completionCopy, 0, peers);
  }

LABEL_56:
}

- (BOOL)_canStartMode:(id)mode error:(id *)error
{
  peers = [mode peers];
  v6 = sub_10008EF68(peers, 4);

  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          info = [*(*(&v19 + 1) + 8 * i) info];
          v13 = [info objectForKeyedSubscript:@"PrimaryChannel"];

          if (!v13)
          {
            v23 = NSLocalizedFailureReasonErrorKey;
            v24 = @"W5ParamErr";
            v15 = 1;
            v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
            v14 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v17];

            if (error && v14)
            {
              v18 = v14;
              v15 = 0;
              *error = v14;
            }

            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v14 = 0;
  v15 = 1;
LABEL_12:

  return v15;
}

- (void)performStopOperationsForMode:(id)mode handler:(id)handler completion:(id)completion
{
  modeCopy = mode;
  handlerCopy = handler;
  completionCopy = completion;
  v93 = modeCopy;
  if ([modeCopy state] == 3 || objc_msgSend(modeCopy, "state") == 4 || objc_msgSend(modeCopy, "state") == 5)
  {
    [(W5DiagnosticsModeProcessor *)self setMode:modeCopy];
    v8 = +[NSMutableArray array];
    [(W5DiagnosticsModeProcessor *)self setOperationErrors:v8];

    mode = [(W5DiagnosticsModeProcessor *)self mode];
    [mode setState:10];

    currentPeer = [(W5DiagnosticsModeProcessor *)self currentPeer];
    if (([currentPeer role] & 8) != 0)
    {
    }

    else
    {
      currentPeer2 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      role = [currentPeer2 role];

      if ((role & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    mode2 = [(W5DiagnosticsModeProcessor *)self mode];
    peers = [mode2 peers];
    v92 = sub_10008EF68(peers, 4);

    if (!v92)
    {
      obj = sub_100098A04();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315138;
        *&location[4] = "[W5DiagnosticsModeProcessor performStopOperationsForMode:handler:completion:]";
        LODWORD(v91) = 12;
        v90 = location;
        _os_log_send_and_compose_impl();
      }

LABEL_25:

      mode3 = [(W5DiagnosticsModeProcessor *)self mode];
      peers2 = [mode3 peers];
      v34 = sub_10008EF68(peers2, 1);

      mode4 = [(W5DiagnosticsModeProcessor *)self mode];
      peers3 = [mode4 peers];
      v37 = sub_10008EF68(peers3, 2);

      v102 = objc_alloc_init(NSMutableArray);
      if (v34)
      {
        [v102 addObjectsFromArray:v34];
      }

      if (v37)
      {
        [v102 addObjectsFromArray:v37];
      }

      v151 = @"peers";
      v152 = v102;
      v38 = [NSDictionary dictionaryWithObjects:&v152 forKeys:&v151 count:1, v90, v91];
      [(W5DiagnosticsModeProcessor *)self _runAction:12 peer:0 info:v38 handler:handlerCopy completion:completionCopy];

      if (v34)
      {
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v39 = v34;
        v40 = [v39 countByEnumeratingWithState:&v111 objects:v150 count:16];
        if (v40)
        {
          v41 = *v112;
          do
          {
            for (i = 0; i != v40; i = i + 1)
            {
              if (*v112 != v41)
              {
                objc_enumerationMutation(v39);
              }

              v43 = *(*(&v111 + 1) + 8 * i);
              v148 = @"DiagnosticsMode";
              mode5 = [(W5DiagnosticsModeProcessor *)self mode];
              v149 = mode5;
              v45 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
              [(W5DiagnosticsModeProcessor *)self _runAction:3 peer:v43 info:v45 handler:handlerCopy completion:completionCopy];
            }

            v40 = [v39 countByEnumeratingWithState:&v111 objects:v150 count:16];
          }

          while (v40);
        }
      }

      else
      {
        v39 = sub_100098A04();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *location = 136315138;
          *&location[4] = "[W5DiagnosticsModeProcessor performStopOperationsForMode:handler:completion:]";
          LODWORD(v91) = 12;
          v90 = location;
          _os_log_send_and_compose_impl();
        }
      }

      if (v37)
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v46 = v37;
        v47 = [v46 countByEnumeratingWithState:&v107 objects:v147 count:16];
        if (v47)
        {
          v48 = *v108;
          do
          {
            for (j = 0; j != v47; j = j + 1)
            {
              if (*v108 != v48)
              {
                objc_enumerationMutation(v46);
              }

              v50 = *(*(&v107 + 1) + 8 * j);
              v145 = @"DiagnosticsMode";
              v51 = [(W5DiagnosticsModeProcessor *)self mode:v90];
              v146 = v51;
              v52 = [NSDictionary dictionaryWithObjects:&v146 forKeys:&v145 count:1];
              [(W5DiagnosticsModeProcessor *)self _runAction:4 peer:v50 info:v52 handler:handlerCopy completion:completionCopy];
            }

            v47 = [v46 countByEnumeratingWithState:&v107 objects:v147 count:16];
          }

          while (v47);
        }
      }

      else
      {
        v46 = sub_100098A04();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *location = 136315138;
          *&location[4] = "[W5DiagnosticsModeProcessor performStopOperationsForMode:handler:completion:]";
          LODWORD(v91) = 12;
          v90 = location;
          _os_log_send_and_compose_impl();
        }
      }

LABEL_52:
      v53 = [(W5DiagnosticsModeProcessor *)self currentPeer:v90];
      if ([v53 role])
      {
      }

      else
      {
        currentPeer3 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v55 = ([currentPeer3 role] & 2) == 0;

        if (v55)
        {
          goto LABEL_57;
        }
      }

      currentPeer4 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v143[0] = @"event";
      v57 = [[NSNumber alloc] initWithInt:1];
      v144[0] = v57;
      v143[1] = @"DiagnosticsMode";
      mode6 = [(W5DiagnosticsModeProcessor *)self mode];
      v144[1] = mode6;
      v59 = [NSDictionary dictionaryWithObjects:v144 forKeys:v143 count:2];
      [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:currentPeer4 info:v59 handler:handlerCopy completion:completionCopy];

      currentPeer5 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v141[0] = @"event";
      v61 = [[NSNumber alloc] initWithInt:1];
      v141[1] = @"DiagnosticsMode";
      v142[0] = v61;
      v142[1] = v93;
      v62 = [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:2];
      [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:currentPeer5 info:v62 handler:handlerCopy completion:completionCopy];

      currentPeer6 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v139 = @"DiagnosticsMode";
      mode7 = [(W5DiagnosticsModeProcessor *)self mode];
      v140 = mode7;
      v65 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:currentPeer6 info:v65 handler:handlerCopy completion:completionCopy];

      currentPeer7 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v137 = @"DiagnosticsMode";
      mode8 = [(W5DiagnosticsModeProcessor *)self mode];
      v138 = mode8;
      v68 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:10 peer:currentPeer7 info:v68 handler:handlerCopy completion:completionCopy];

LABEL_57:
      currentPeer8 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      role2 = [currentPeer8 role];

      if (role2)
      {
        currentPeer9 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v135 = @"DiagnosticsMode";
        mode9 = [(W5DiagnosticsModeProcessor *)self mode];
        v136 = mode9;
        v73 = [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
        [(W5DiagnosticsModeProcessor *)self _runAction:7 peer:currentPeer9 info:v73 handler:handlerCopy completion:completionCopy];
      }

      currentPeer10 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      role3 = [currentPeer10 role];

      if ((role3 & 4) != 0)
      {
        currentPeer11 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v133 = @"DiagnosticsMode";
        mode10 = [(W5DiagnosticsModeProcessor *)self mode];
        v134 = mode10;
        v78 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
        [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:currentPeer11 info:v78 handler:handlerCopy completion:completionCopy];

        currentPeer12 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v131 = @"DiagnosticsMode";
        v132 = v93;
        v80 = [NSDictionary dictionaryWithObjects:&v132 forKeys:&v131 count:1];
        [(W5DiagnosticsModeProcessor *)self _runAction:9 peer:currentPeer12 info:v80 handler:handlerCopy completion:completionCopy];
      }

      operationErrors = [(W5DiagnosticsModeProcessor *)self operationErrors];
      if (operationErrors)
      {
        operationErrors2 = [(W5DiagnosticsModeProcessor *)self operationErrors];
        v83 = [operationErrors2 count] == 0;

        if (!v83)
        {
          mode11 = [(W5DiagnosticsModeProcessor *)self mode];
          [mode11 setState:5];
        }
      }

      objc_initWeak(location, self);
      queue = [(W5DiagnosticsModeProcessor *)self queue];
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_100090310;
      v104[3] = &unk_1000E3520;
      objc_copyWeak(&v106, location);
      v105 = completionCopy;
      [queue addBarrierBlock:v104];

      objc_destroyWeak(&v106);
      objc_destroyWeak(location);
      goto LABEL_65;
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    obj = v92;
    v96 = [obj countByEnumeratingWithState:&v115 objects:v157 count:16];
    if (!v96)
    {
      goto LABEL_25;
    }

    v95 = *v116;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v116 != v95)
      {
        v16 = v15;
        objc_enumerationMutation(obj);
        v15 = v16;
      }

      v97 = v15;
      v101 = *(*(&v115 + 1) + 8 * v15);
      v155 = @"DiagnosticsMode";
      v17 = [(W5DiagnosticsModeProcessor *)self mode:v90];
      v156 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v156 forKeys:&v155 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:1 peer:v101 info:v18 handler:handlerCopy completion:completionCopy];

      peer = [v101 peer];
      peerID = [peer peerID];
      currentPeer13 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      peer2 = [currentPeer13 peer];
      peerID2 = [peer2 peerID];
      v23 = peerID2;
      if (peerID == peerID2)
      {
        break;
      }

      peer3 = [v101 peer];
      peerID3 = [peer3 peerID];
      currentPeer14 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      peer4 = [currentPeer14 peer];
      peerID4 = [peer4 peerID];
      v29 = [peerID3 isEqual:peerID4];

      if (v29)
      {
        goto LABEL_18;
      }

      v153 = @"DiagnosticsMode";
      mode12 = [(W5DiagnosticsModeProcessor *)self mode];
      v154 = mode12;
      v31 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v153 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:5 peer:v101 info:v31 handler:handlerCopy completion:completionCopy];

LABEL_20:
      v15 = v97 + 1;
      if (v96 == (v97 + 1))
      {
        v96 = [obj countByEnumeratingWithState:&v115 objects:v157 count:16];
        if (!v96)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }
    }

LABEL_18:
    mode12 = sub_100098A04();
    if (os_log_type_enabled(mode12, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315394;
      *&location[4] = "[W5DiagnosticsModeProcessor performStopOperationsForMode:handler:completion:]";
      v123 = 2112;
      v124 = v101;
      LODWORD(v91) = 22;
      v90 = location;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_20;
  }

  v86 = sub_100098A04();
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *&location[4] = "[W5DiagnosticsModeProcessor performStopOperationsForMode:handler:completion:]";
    v123 = 2080;
    *location = 136316162;
    v124 = "W5DiagnosticsModeProcessor.m";
    v125 = 1024;
    v126 = 351;
    v127 = 2048;
    state = [modeCopy state];
    v129 = 2114;
    v130 = modeCopy;
    _os_log_send_and_compose_impl();
  }

  v119 = NSLocalizedFailureReasonErrorKey;
  v120 = @"W5ParamErr";
  v87 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];
  v88 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v87];
  v121 = v88;
  v89 = [NSArray arrayWithObjects:&v121 count:1];
  (*(completionCopy + 2))(completionCopy, 0, v89);

LABEL_65:
}

- (void)performUpdateOperationsForMode:(id)mode incomingMode:(id)incomingMode handler:(id)handler completion:(id)completion
{
  modeCopy = mode;
  incomingModeCopy = incomingMode;
  handlerCopy = handler;
  completionCopy = completion;
  [(W5DiagnosticsModeProcessor *)self setMode:incomingModeCopy];
  v12 = +[NSMutableArray array];
  [(W5DiagnosticsModeProcessor *)self setOperationErrors:v12];

  if ([incomingModeCopy state] != 3)
  {
    goto LABEL_13;
  }

  if (!modeCopy)
  {
    v13 = sub_100098A04();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315650;
      *&location[4] = "[W5DiagnosticsModeProcessor performUpdateOperationsForMode:incomingMode:handler:completion:]";
      v88 = 2080;
      v89 = "W5DiagnosticsModeProcessor.m";
      v90 = 1024;
      v91 = 369;
      LODWORD(v61) = 28;
      v60 = location;
      _os_log_send_and_compose_impl();
    }

    modeCopy = incomingModeCopy;
  }

  v14 = [(W5DiagnosticsModeProcessor *)self currentPeer:v60];
  if ([v14 role])
  {

    goto LABEL_10;
  }

  currentPeer = [(W5DiagnosticsModeProcessor *)self currentPeer];
  v16 = ([currentPeer role] & 2) == 0;

  if (!v16)
  {
LABEL_10:
    currentPeer2 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v98[0] = @"event";
    v18 = [[NSNumber alloc] initWithInt:0];
    v98[1] = @"DiagnosticsMode";
    v99[0] = v18;
    v99[1] = modeCopy;
    v19 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:currentPeer2 info:v19 handler:handlerCopy completion:completionCopy];

    currentPeer3 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v96[0] = @"event";
    v21 = [[NSNumber alloc] initWithInt:0];
    v96[1] = @"DiagnosticsMode";
    v97[0] = v21;
    v97[1] = modeCopy;
    v22 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:currentPeer3 info:v22 handler:handlerCopy completion:completionCopy];
  }

  currentPeer4 = [(W5DiagnosticsModeProcessor *)self currentPeer];
  role = [currentPeer4 role];

  if ((role & 4) != 0)
  {
    currentPeer5 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v94 = @"DiagnosticsMode";
    v95 = modeCopy;
    v26 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    [(W5DiagnosticsModeProcessor *)self _runAction:5 peer:currentPeer5 info:v26 handler:handlerCopy completion:completionCopy];
  }

LABEL_13:
  if ([incomingModeCopy state] != 10)
  {
LABEL_29:
    objc_initWeak(location, self);
    queue = [(W5DiagnosticsModeProcessor *)self queue];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100090DE8;
    v64[3] = &unk_1000E3548;
    v66 = completionCopy;
    v65 = incomingModeCopy;
    objc_copyWeak(&v67, location);
    [queue addBarrierBlock:v64];

    objc_destroyWeak(&v67);
    objc_destroyWeak(location);
    goto LABEL_30;
  }

  if (modeCopy)
  {
    currentPeer6 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    role2 = [currentPeer6 role];

    if (role2)
    {
      currentPeer7 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v82 = @"DiagnosticsMode";
      v83 = modeCopy;
      v30 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:7 peer:currentPeer7 info:v30 handler:handlerCopy completion:completionCopy];
    }

    currentPeer8 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    role3 = [currentPeer8 role];

    if ((role3 & 2) != 0)
    {
      currentPeer9 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v80 = @"DiagnosticsMode";
      v81 = modeCopy;
      v34 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:9 peer:currentPeer9 info:v34 handler:handlerCopy completion:completionCopy];
    }

    currentPeer10 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    if ([currentPeer10 role])
    {
    }

    else
    {
      currentPeer11 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v37 = ([currentPeer11 role] & 2) == 0;

      if (v37)
      {
LABEL_27:
        currentPeer12 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        role4 = [currentPeer12 role];

        if ((role4 & 4) != 0)
        {
          currentPeer13 = [(W5DiagnosticsModeProcessor *)self currentPeer];
          v70 = @"DiagnosticsMode";
          v71 = modeCopy;
          v56 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:currentPeer13 info:v56 handler:handlerCopy completion:completionCopy];

          currentPeer14 = [(W5DiagnosticsModeProcessor *)self currentPeer];
          v68 = @"DiagnosticsMode";
          v69 = modeCopy;
          v58 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          [(W5DiagnosticsModeProcessor *)self _runAction:9 peer:currentPeer14 info:v58 handler:handlerCopy completion:completionCopy];
        }

        goto LABEL_29;
      }
    }

    currentPeer15 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v78[0] = @"event";
    v43 = [[NSNumber alloc] initWithInt:1];
    v78[1] = @"DiagnosticsMode";
    v79[0] = v43;
    v79[1] = modeCopy;
    v44 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:currentPeer15 info:v44 handler:handlerCopy completion:completionCopy];

    currentPeer16 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v76[0] = @"event";
    v46 = [[NSNumber alloc] initWithInt:1];
    v76[1] = @"DiagnosticsMode";
    v77[0] = v46;
    v77[1] = modeCopy;
    v47 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:currentPeer16 info:v47 handler:handlerCopy completion:completionCopy];

    currentPeer17 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v74 = @"DiagnosticsMode";
    v75 = modeCopy;
    v49 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:currentPeer17 info:v49 handler:handlerCopy completion:completionCopy];

    currentPeer18 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v72 = @"DiagnosticsMode";
    mode = [(W5DiagnosticsModeProcessor *)self mode];
    v73 = mode;
    v52 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    [(W5DiagnosticsModeProcessor *)self _runAction:10 peer:currentPeer18 info:v52 handler:handlerCopy completion:completionCopy];

    goto LABEL_27;
  }

  v38 = sub_100098A04();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136315906;
    *&location[4] = "[W5DiagnosticsModeProcessor performUpdateOperationsForMode:incomingMode:handler:completion:]";
    v88 = 2080;
    v89 = "W5DiagnosticsModeProcessor.m";
    v90 = 1024;
    v91 = 404;
    v92 = 2112;
    v93 = incomingModeCopy;
    _os_log_send_and_compose_impl();
  }

  v84 = NSLocalizedFailureReasonErrorKey;
  v85 = @"W5ParamErr";
  v39 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
  v40 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v39];
  v86 = v40;
  v41 = [NSArray arrayWithObjects:&v86 count:1];
  (*(completionCopy + 2))(completionCopy, 0, v41);

LABEL_30:
}

- (void)_runAction:(int64_t)action peer:(id)peer info:(id)info handler:(id)handler completion:(id)completion
{
  peerCopy = peer;
  infoCopy = info;
  handlerCopy = handler;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(W5DiagnosticsModeProcessor *)self queue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000910B4;
  v20[3] = &unk_1000E3570;
  v17 = handlerCopy;
  v23 = v17;
  v24[1] = action;
  v18 = peerCopy;
  v21 = v18;
  v19 = infoCopy;
  v22 = v19;
  objc_copyWeak(v24, &location);
  [queue addOperationWithBlock:v20];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

- (void)_cleanup
{
  queue = [(W5DiagnosticsModeProcessor *)self queue];
  [queue cancelAllOperations];
}

@end