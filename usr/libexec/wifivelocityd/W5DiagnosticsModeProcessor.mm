@interface W5DiagnosticsModeProcessor
- (BOOL)_canStartMode:(id)a3 error:(id *)a4;
- (W5DiagnosticsModeProcessor)initWithCurrentPeer:(id)a3;
- (void)_cleanup;
- (void)_runAction:(int64_t)a3 peer:(id)a4 info:(id)a5 handler:(id)a6 completion:(id)a7;
- (void)performStartOperationsWithConfiguration:(id)a3 handler:(id)a4 completion:(id)a5;
- (void)performStopOperationsForMode:(id)a3 handler:(id)a4 completion:(id)a5;
- (void)performUpdateOperationsForMode:(id)a3 incomingMode:(id)a4 handler:(id)a5 completion:(id)a6;
@end

@implementation W5DiagnosticsModeProcessor

- (W5DiagnosticsModeProcessor)initWithCurrentPeer:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = W5DiagnosticsModeProcessor;
  v5 = [(W5DiagnosticsModeProcessor *)&v12 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  if (!v4)
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

  v5->_currentPeer = v4;
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

- (void)performStartOperationsWithConfiguration:(id)a3 handler:(id)a4 completion:(id)a5
{
  v60 = a3;
  v64 = a4;
  v8 = a5;
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
    v108 = v60;
    LODWORD(v57) = 48;
    v56 = location;
    _os_log_send_and_compose_impl();
  }

  v10 = [[W5DiagnosticsMode alloc] initWithConfiguration:v60];
  [(W5DiagnosticsModeProcessor *)self setMode:v10];

  v11 = [(W5DiagnosticsModeProcessor *)self mode];
  LODWORD(v10) = v11 == 0;

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
      v106 = v60;
      _os_log_send_and_compose_impl();
    }

    v97 = NSLocalizedFailureReasonErrorKey;
    v98 = @"W5ParamErr";
    v58 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    v59 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v58];
    v99 = v59;
    v23 = [NSArray arrayWithObjects:&v99 count:1];
    v8[2](v8, 0, v23);
  }

  else
  {
    v12 = [(W5DiagnosticsModeProcessor *)self mode];
    v80 = 0;
    v13 = [(W5DiagnosticsModeProcessor *)self _canStartMode:v12 error:&v80];
    v58 = v80;

    if (v13)
    {
      [(W5DiagnosticsModeProcessor *)self setConfiguration:v60];
      v14 = [(W5DiagnosticsModeProcessor *)self mode];
      [v14 setState:3];

      v15 = +[NSMutableArray array];
      [(W5DiagnosticsModeProcessor *)self setOperationErrors:v15];

      v16 = [(W5DiagnosticsModeProcessor *)self mode];
      v59 = [v16 peers];

      v17 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v18 = [v17 role];

      if ((v18 & 8) != 0)
      {
        v25 = sub_10008EF68(v59, 1);
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
                [(W5DiagnosticsModeProcessor *)self _runAction:3 peer:v29 info:v31 handler:v64 completion:v8];
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

        v38 = sub_10008EF68(v59, 2);
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
                [(W5DiagnosticsModeProcessor *)self _runAction:4 peer:v42 info:v44 handler:v64 completion:v8];
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

        v46 = sub_10008EF68(v59, 4);
        v61 = v46;
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
                  objc_enumerationMutation(v61);
                }

                v50 = *(*(&v68 + 1) + 8 * k);
                v87 = @"DiagnosticsMode";
                v51 = [(W5DiagnosticsModeProcessor *)self mode:v56];
                v88 = v51;
                v52 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
                [(W5DiagnosticsModeProcessor *)self _runAction:0 peer:v50 info:v52 handler:v64 completion:v8];

                v85 = @"DiagnosticsMode";
                v53 = [(W5DiagnosticsModeProcessor *)self mode];
                v86 = v53;
                v54 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
                [(W5DiagnosticsModeProcessor *)self _runAction:5 peer:v50 info:v54 handler:v64 completion:v8];
              }

              v47 = [v61 countByEnumeratingWithState:&v68 objects:v89 count:16];
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

        v61 = 0;
      }

      else
      {
        v19 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        if ([v19 role])
        {
        }

        else
        {
          v20 = [(W5DiagnosticsModeProcessor *)self currentPeer];
          v21 = ([v20 role] & 2) == 0;

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
        v34 = [(W5DiagnosticsModeProcessor *)self mode];
        v84[1] = v34;
        v35 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:2];
        [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:v32 info:v35 handler:v64 completion:v8];

        obj = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v81[0] = @"event";
        v62 = [[NSNumber alloc] initWithInt:0];
        v81[1] = @"DiagnosticsMode";
        v82[0] = v62;
        v61 = [(W5DiagnosticsModeProcessor *)self mode];
        v82[1] = v61;
        v36 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:2];
        [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:obj info:v36 handler:v64 completion:v8];
      }

LABEL_54:
LABEL_55:
      objc_initWeak(location, self);
      v55 = [(W5DiagnosticsModeProcessor *)self queue];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10008F0B4;
      v65[3] = &unk_1000E3520;
      objc_copyWeak(&v67, location);
      v66 = v8;
      [v55 addBarrierBlock:v65];

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
    v59 = [NSArray arrayWithObjects:&v96 count:1];
    v8[2](v8, 0, v59);
  }

LABEL_56:
}

- (BOOL)_canStartMode:(id)a3 error:(id *)a4
{
  v5 = [a3 peers];
  v6 = sub_10008EF68(v5, 4);

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

          v12 = [*(*(&v19 + 1) + 8 * i) info];
          v13 = [v12 objectForKeyedSubscript:@"PrimaryChannel"];

          if (!v13)
          {
            v23 = NSLocalizedFailureReasonErrorKey;
            v24 = @"W5ParamErr";
            v15 = 1;
            v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
            v14 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v17];

            if (a4 && v14)
            {
              v18 = v14;
              v15 = 0;
              *a4 = v14;
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

- (void)performStopOperationsForMode:(id)a3 handler:(id)a4 completion:(id)a5
{
  v7 = a3;
  v99 = a4;
  v100 = a5;
  v93 = v7;
  if ([v7 state] == 3 || objc_msgSend(v7, "state") == 4 || objc_msgSend(v7, "state") == 5)
  {
    [(W5DiagnosticsModeProcessor *)self setMode:v7];
    v8 = +[NSMutableArray array];
    [(W5DiagnosticsModeProcessor *)self setOperationErrors:v8];

    v9 = [(W5DiagnosticsModeProcessor *)self mode];
    [v9 setState:10];

    v10 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    if (([v10 role] & 8) != 0)
    {
    }

    else
    {
      v11 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v12 = [v11 role];

      if ((v12 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v13 = [(W5DiagnosticsModeProcessor *)self mode];
    v14 = [v13 peers];
    v92 = sub_10008EF68(v14, 4);

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

      v32 = [(W5DiagnosticsModeProcessor *)self mode];
      v33 = [v32 peers];
      v34 = sub_10008EF68(v33, 1);

      v35 = [(W5DiagnosticsModeProcessor *)self mode];
      v36 = [v35 peers];
      v37 = sub_10008EF68(v36, 2);

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
      [(W5DiagnosticsModeProcessor *)self _runAction:12 peer:0 info:v38 handler:v99 completion:v100];

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
              v44 = [(W5DiagnosticsModeProcessor *)self mode];
              v149 = v44;
              v45 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
              [(W5DiagnosticsModeProcessor *)self _runAction:3 peer:v43 info:v45 handler:v99 completion:v100];
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
              [(W5DiagnosticsModeProcessor *)self _runAction:4 peer:v50 info:v52 handler:v99 completion:v100];
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
        v54 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v55 = ([v54 role] & 2) == 0;

        if (v55)
        {
          goto LABEL_57;
        }
      }

      v56 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v143[0] = @"event";
      v57 = [[NSNumber alloc] initWithInt:1];
      v144[0] = v57;
      v143[1] = @"DiagnosticsMode";
      v58 = [(W5DiagnosticsModeProcessor *)self mode];
      v144[1] = v58;
      v59 = [NSDictionary dictionaryWithObjects:v144 forKeys:v143 count:2];
      [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:v56 info:v59 handler:v99 completion:v100];

      v60 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v141[0] = @"event";
      v61 = [[NSNumber alloc] initWithInt:1];
      v141[1] = @"DiagnosticsMode";
      v142[0] = v61;
      v142[1] = v93;
      v62 = [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:2];
      [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:v60 info:v62 handler:v99 completion:v100];

      v63 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v139 = @"DiagnosticsMode";
      v64 = [(W5DiagnosticsModeProcessor *)self mode];
      v140 = v64;
      v65 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:v63 info:v65 handler:v99 completion:v100];

      v66 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v137 = @"DiagnosticsMode";
      v67 = [(W5DiagnosticsModeProcessor *)self mode];
      v138 = v67;
      v68 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:10 peer:v66 info:v68 handler:v99 completion:v100];

LABEL_57:
      v69 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v70 = [v69 role];

      if (v70)
      {
        v71 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v135 = @"DiagnosticsMode";
        v72 = [(W5DiagnosticsModeProcessor *)self mode];
        v136 = v72;
        v73 = [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
        [(W5DiagnosticsModeProcessor *)self _runAction:7 peer:v71 info:v73 handler:v99 completion:v100];
      }

      v74 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v75 = [v74 role];

      if ((v75 & 4) != 0)
      {
        v76 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v133 = @"DiagnosticsMode";
        v77 = [(W5DiagnosticsModeProcessor *)self mode];
        v134 = v77;
        v78 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
        [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:v76 info:v78 handler:v99 completion:v100];

        v79 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v131 = @"DiagnosticsMode";
        v132 = v93;
        v80 = [NSDictionary dictionaryWithObjects:&v132 forKeys:&v131 count:1];
        [(W5DiagnosticsModeProcessor *)self _runAction:9 peer:v79 info:v80 handler:v99 completion:v100];
      }

      v81 = [(W5DiagnosticsModeProcessor *)self operationErrors];
      if (v81)
      {
        v82 = [(W5DiagnosticsModeProcessor *)self operationErrors];
        v83 = [v82 count] == 0;

        if (!v83)
        {
          v84 = [(W5DiagnosticsModeProcessor *)self mode];
          [v84 setState:5];
        }
      }

      objc_initWeak(location, self);
      v85 = [(W5DiagnosticsModeProcessor *)self queue];
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_100090310;
      v104[3] = &unk_1000E3520;
      objc_copyWeak(&v106, location);
      v105 = v100;
      [v85 addBarrierBlock:v104];

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
      [(W5DiagnosticsModeProcessor *)self _runAction:1 peer:v101 info:v18 handler:v99 completion:v100];

      v98 = [v101 peer];
      v19 = [v98 peerID];
      v20 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v21 = [v20 peer];
      v22 = [v21 peerID];
      v23 = v22;
      if (v19 == v22)
      {
        break;
      }

      v24 = [v101 peer];
      v25 = [v24 peerID];
      v26 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v27 = [v26 peer];
      v28 = [v27 peerID];
      v29 = [v25 isEqual:v28];

      if (v29)
      {
        goto LABEL_18;
      }

      v153 = @"DiagnosticsMode";
      v30 = [(W5DiagnosticsModeProcessor *)self mode];
      v154 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v153 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:5 peer:v101 info:v31 handler:v99 completion:v100];

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
    v30 = sub_100098A04();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
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
    v128 = [v7 state];
    v129 = 2114;
    v130 = v7;
    _os_log_send_and_compose_impl();
  }

  v119 = NSLocalizedFailureReasonErrorKey;
  v120 = @"W5ParamErr";
  v87 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];
  v88 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v87];
  v121 = v88;
  v89 = [NSArray arrayWithObjects:&v121 count:1];
  (*(v100 + 2))(v100, 0, v89);

LABEL_65:
}

- (void)performUpdateOperationsForMode:(id)a3 incomingMode:(id)a4 handler:(id)a5 completion:(id)a6
{
  v63 = a3;
  v10 = a4;
  v62 = a5;
  v11 = a6;
  [(W5DiagnosticsModeProcessor *)self setMode:v10];
  v12 = +[NSMutableArray array];
  [(W5DiagnosticsModeProcessor *)self setOperationErrors:v12];

  if ([v10 state] != 3)
  {
    goto LABEL_13;
  }

  if (!v63)
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

    v63 = v10;
  }

  v14 = [(W5DiagnosticsModeProcessor *)self currentPeer:v60];
  if ([v14 role])
  {

    goto LABEL_10;
  }

  v15 = [(W5DiagnosticsModeProcessor *)self currentPeer];
  v16 = ([v15 role] & 2) == 0;

  if (!v16)
  {
LABEL_10:
    v17 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v98[0] = @"event";
    v18 = [[NSNumber alloc] initWithInt:0];
    v98[1] = @"DiagnosticsMode";
    v99[0] = v18;
    v99[1] = v63;
    v19 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:v17 info:v19 handler:v62 completion:v11];

    v20 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v96[0] = @"event";
    v21 = [[NSNumber alloc] initWithInt:0];
    v96[1] = @"DiagnosticsMode";
    v97[0] = v21;
    v97[1] = v63;
    v22 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:v20 info:v22 handler:v62 completion:v11];
  }

  v23 = [(W5DiagnosticsModeProcessor *)self currentPeer];
  v24 = [v23 role];

  if ((v24 & 4) != 0)
  {
    v25 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v94 = @"DiagnosticsMode";
    v95 = v63;
    v26 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    [(W5DiagnosticsModeProcessor *)self _runAction:5 peer:v25 info:v26 handler:v62 completion:v11];
  }

LABEL_13:
  if ([v10 state] != 10)
  {
LABEL_29:
    objc_initWeak(location, self);
    v59 = [(W5DiagnosticsModeProcessor *)self queue];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100090DE8;
    v64[3] = &unk_1000E3548;
    v66 = v11;
    v65 = v10;
    objc_copyWeak(&v67, location);
    [v59 addBarrierBlock:v64];

    objc_destroyWeak(&v67);
    objc_destroyWeak(location);
    goto LABEL_30;
  }

  if (v63)
  {
    v27 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v28 = [v27 role];

    if (v28)
    {
      v29 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v82 = @"DiagnosticsMode";
      v83 = v63;
      v30 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:7 peer:v29 info:v30 handler:v62 completion:v11];
    }

    v31 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v32 = [v31 role];

    if ((v32 & 2) != 0)
    {
      v33 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v80 = @"DiagnosticsMode";
      v81 = v63;
      v34 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      [(W5DiagnosticsModeProcessor *)self _runAction:9 peer:v33 info:v34 handler:v62 completion:v11];
    }

    v35 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    if ([v35 role])
    {
    }

    else
    {
      v36 = [(W5DiagnosticsModeProcessor *)self currentPeer];
      v37 = ([v36 role] & 2) == 0;

      if (v37)
      {
LABEL_27:
        v53 = [(W5DiagnosticsModeProcessor *)self currentPeer];
        v54 = [v53 role];

        if ((v54 & 4) != 0)
        {
          v55 = [(W5DiagnosticsModeProcessor *)self currentPeer];
          v70 = @"DiagnosticsMode";
          v71 = v63;
          v56 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:v55 info:v56 handler:v62 completion:v11];

          v57 = [(W5DiagnosticsModeProcessor *)self currentPeer];
          v68 = @"DiagnosticsMode";
          v69 = v63;
          v58 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          [(W5DiagnosticsModeProcessor *)self _runAction:9 peer:v57 info:v58 handler:v62 completion:v11];
        }

        goto LABEL_29;
      }
    }

    v42 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v78[0] = @"event";
    v43 = [[NSNumber alloc] initWithInt:1];
    v78[1] = @"DiagnosticsMode";
    v79[0] = v43;
    v79[1] = v63;
    v44 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:6 peer:v42 info:v44 handler:v62 completion:v11];

    v45 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v76[0] = @"event";
    v46 = [[NSNumber alloc] initWithInt:1];
    v76[1] = @"DiagnosticsMode";
    v77[0] = v46;
    v77[1] = v63;
    v47 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
    [(W5DiagnosticsModeProcessor *)self _runAction:11 peer:v45 info:v47 handler:v62 completion:v11];

    v48 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v74 = @"DiagnosticsMode";
    v75 = v63;
    v49 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    [(W5DiagnosticsModeProcessor *)self _runAction:8 peer:v48 info:v49 handler:v62 completion:v11];

    v50 = [(W5DiagnosticsModeProcessor *)self currentPeer];
    v72 = @"DiagnosticsMode";
    v51 = [(W5DiagnosticsModeProcessor *)self mode];
    v73 = v51;
    v52 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    [(W5DiagnosticsModeProcessor *)self _runAction:10 peer:v50 info:v52 handler:v62 completion:v11];

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
    v93 = v10;
    _os_log_send_and_compose_impl();
  }

  v84 = NSLocalizedFailureReasonErrorKey;
  v85 = @"W5ParamErr";
  v39 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
  v40 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v39];
  v86 = v40;
  v41 = [NSArray arrayWithObjects:&v86 count:1];
  (*(v11 + 2))(v11, 0, v41);

LABEL_30:
}

- (void)_runAction:(int64_t)a3 peer:(id)a4 info:(id)a5 handler:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_initWeak(&location, self);
  v16 = [(W5DiagnosticsModeProcessor *)self queue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000910B4;
  v20[3] = &unk_1000E3570;
  v17 = v14;
  v23 = v17;
  v24[1] = a3;
  v18 = v12;
  v21 = v18;
  v19 = v13;
  v22 = v19;
  objc_copyWeak(v24, &location);
  [v16 addOperationWithBlock:v20];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

- (void)_cleanup
{
  v2 = [(W5DiagnosticsModeProcessor *)self queue];
  [v2 cancelAllOperations];
}

@end