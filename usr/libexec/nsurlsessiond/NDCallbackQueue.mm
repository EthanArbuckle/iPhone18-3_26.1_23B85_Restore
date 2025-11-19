@interface NDCallbackQueue
- (NDCallbackQueue)initWithDelegate:(id)a3;
- (NDCallbackQueueDelegate)delegate;
- (void)addPendingCallback:(id)a3 wakeRequirement:(int64_t)a4;
- (void)drainCallback:(id)a3;
- (void)drainCallbacksForTaskIdentifier:(unint64_t)a3;
- (void)performAllCallbacks;
- (void)performCallback:(id)a3;
@end

@implementation NDCallbackQueue

- (void)performAllCallbacks
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_callbacks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(NDCallbackQueue *)self performCallback:*(*(&v7 + 1) + 8 * v6), v7];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (NDCallbackQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)drainCallbacksForTaskIdentifier:(unint64_t)a3
{
  v5 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_callbacks;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v10 taskIdentifier] == a3)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v16 + 1) + 8 * j);
        [(NDCallbackQueue *)self drainCallback:v15, v16];
        [(NSMutableArray *)self->_callbacks removeObject:v15];
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)addPendingCallback:(id)a3 wakeRequirement:(int64_t)a4
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(NSMutableArray *)self->_callbacks addObject:v8];
  v7 = [WeakRetained getClientProxy];

  if (v7)
  {
    [(NDCallbackQueue *)self performCallback:v8];
  }

  else if (a4)
  {
    [WeakRetained wakeUpClient:a4];
  }
}

- (void)drainCallback:(id)a3
{
  v4 = a3;
  if (([v4 hasBeenCalled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [v4 type];
    if (v6 <= 5)
    {
      if (v6 != 2)
      {
        if (v6 == 5)
        {
          v11 = [v4 args];
          v8 = [v11 objectAtIndexedSubscript:1];

          v12 = qword_1000EB210;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [WeakRetained descriptionForTaskWithIdentifier:{objc_msgSend(v4, "taskIdentifier")}];
            v22 = 138543362;
            v23 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ draining willSendRequest callback", &v22, 0xCu);
          }

          v8[2](v8, 0, 0);
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v20 = [v4 args];
      v8 = [v20 objectAtIndexedSubscript:1];

      v18 = qword_1000EB210;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [WeakRetained descriptionForTaskWithIdentifier:{objc_msgSend(v4, "taskIdentifier")}];
        v22 = 138543362;
        v23 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ draining authentication challenge callback", &v22, 0xCu);
      }
    }

    else
    {
      if (v6 == 6)
      {
        v14 = [v4 args];
        v8 = [v14 objectAtIndexedSubscript:2];

        v15 = qword_1000EB210;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [WeakRetained descriptionForTaskWithIdentifier:{objc_msgSend(v4, "taskIdentifier")}];
          v22 = 138543362;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ draining openFileAtPath callback", &v22, 0xCu);
        }

        (v8[2])(v8, 0);
        goto LABEL_23;
      }

      if (v6 != 9)
      {
        if (v6 == 10)
        {
          v7 = [v4 args];
          v8 = [v7 objectAtIndexedSubscript:0];

          v9 = qword_1000EB210;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [WeakRetained descriptionForTaskWithIdentifier:{objc_msgSend(v4, "taskIdentifier")}];
            v22 = 138543362;
            v23 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ draining getAuthHeadersForResponse callback", &v22, 0xCu);
          }

          (v8[2])(v8, 0, 0, 0);
          goto LABEL_23;
        }

LABEL_24:
        [v4 setHasBeenCalled:1];

        goto LABEL_25;
      }

      v17 = [v4 args];
      v8 = [v17 objectAtIndexedSubscript:1];

      v18 = qword_1000EB210;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [WeakRetained descriptionForTaskWithIdentifier:{objc_msgSend(v4, "taskIdentifier")}];
        v22 = 138543362;
        v23 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ draining willBeginDelayedRequest callback", &v22, 0xCu);
      }
    }

    v8[2](v8, 2, 0);
LABEL_23:

    goto LABEL_24;
  }

LABEL_25:
}

- (void)performCallback:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained getClientProxy];
  v7 = [v4 taskIdentifier];
  v8 = [v4 type];
  if (v8 > 5)
  {
    if (v8 > 9)
    {
      switch(v8)
      {
        case 10:
          v55 = qword_1000EB210;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [WeakRetained descriptionForTaskWithIdentifier:v7];
            *buf = 138543362;
            v191 = v56;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ performing get auth headers for response callback.", buf, 0xCu);
          }

          v57 = [v4 args];
          v99 = [v57 objectAtIndexedSubscript:0];

          v58 = [v4 args];
          v59 = [v58 count] > 1;

          if (v59)
          {
            v60 = [v4 args];
            v10 = [v60 objectAtIndexedSubscript:1];
          }

          else
          {
            v10 = 0;
          }

          v113[0] = _NSConcreteStackBlock;
          v113[1] = 3221225472;
          v113[2] = sub_10007CBD0;
          v113[3] = &unk_1000D6358;
          v75 = v4;
          v114 = v75;
          v76 = WeakRetained;
          v115 = v76;
          v118 = v7;
          v77 = v99;
          v116 = self;
          v117 = v77;
          v78 = [v6 remoteObjectProxyWithErrorHandler:v113];
          v107[0] = _NSConcreteStackBlock;
          v107[1] = 3221225472;
          v107[2] = sub_10007CD18;
          v107[3] = &unk_1000D63A8;
          v108 = v75;
          v109 = v76;
          v112 = v7;
          v79 = v77;
          v110 = self;
          v111 = v79;
          [v78 backgroundTask:v7 getAuthHeadersForResponse:v10 reply:v107];

          break;
        case 11:
          v69 = [v4 args];
          if ([v69 count])
          {
            v70 = [v4 args];
            v10 = [v70 objectAtIndexedSubscript:0];
          }

          else
          {
            v10 = 0;
          }

          v133[0] = _NSConcreteStackBlock;
          v133[1] = 3221225472;
          v133[2] = sub_10007C84C;
          v133[3] = &unk_1000D6330;
          v137 = v7;
          v134 = WeakRetained;
          v135 = self;
          v94 = v4;
          v136 = v94;
          v95 = [v6 remoteObjectProxyWithErrorHandler:v133];
          v131[0] = _NSConcreteStackBlock;
          v131[1] = 3221225472;
          v131[2] = sub_10007C950;
          v131[3] = &unk_1000D6420;
          v131[4] = self;
          v132 = v94;
          [v95 backgroundAVAssetDownloadTask:v7 willDownloadVariants:v10 reply:v131];

          break;
        case 12:
          v37 = [v4 args];
          v10 = [v37 objectAtIndexedSubscript:0];

          v102[0] = _NSConcreteStackBlock;
          v102[1] = 3221225472;
          v102[2] = sub_10007CEA8;
          v102[3] = &unk_1000D6330;
          v106 = v7;
          v103 = WeakRetained;
          v104 = self;
          v38 = v4;
          v105 = v38;
          v39 = [v6 remoteObjectProxyWithErrorHandler:v102];
          v100[0] = _NSConcreteStackBlock;
          v100[1] = 3221225472;
          v100[2] = sub_10007CFAC;
          v100[3] = &unk_1000D6420;
          v100[4] = self;
          v101 = v38;
          [v39 backgroundAVAssetDownloadTask:v7 didReceiveMetricEvent:v10 reply:v100];

          break;
        default:
          goto LABEL_68;
      }
    }

    else
    {
      if (v8 == 6)
      {
        v42 = [v4 args];
        v10 = [v42 objectAtIndexedSubscript:0];

        v43 = [v4 args];
        v44 = [v43 objectAtIndexedSubscript:1];
        v45 = [v44 intValue];

        v46 = [v4 args];
        v47 = [v46 objectAtIndexedSubscript:2];

        v48 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v191 = v10;
          v192 = 1024;
          LODWORD(v193) = v45;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Performing open file at path callback for path %@ mode %d", buf, 0x12u);
        }

        v149[0] = _NSConcreteStackBlock;
        v149[1] = 3221225472;
        v149[2] = sub_10007C5B4;
        v149[3] = &unk_1000D62E0;
        v49 = v4;
        v150 = v49;
        v151 = self;
        v50 = [v6 remoteObjectProxyWithErrorHandler:v149];
        v145[0] = _NSConcreteStackBlock;
        v145[1] = 3221225472;
        v145[2] = sub_10007C638;
        v145[3] = &unk_1000D6308;
        v146 = v49;
        v51 = v47;
        v148 = v51;
        v147 = self;
        [v50 openFileAtPath:v10 mode:v45 withReply:v145];

        goto LABEL_67;
      }

      if (v8 != 8)
      {
        if (v8 == 9)
        {
          v19 = [v4 args];
          v10 = [v19 objectAtIndexedSubscript:0];

          v20 = [v4 args];
          v97 = [v20 objectAtIndexedSubscript:1];

          v21 = qword_1000EB210;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [WeakRetained descriptionForTaskWithIdentifier:v7];
            *buf = 138543362;
            v191 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ performing begin delayed request callback", buf, 0xCu);
          }

          v125[0] = _NSConcreteStackBlock;
          v125[1] = 3221225472;
          v125[2] = sub_10007C95C;
          v125[3] = &unk_1000D6358;
          v23 = v4;
          v126 = v23;
          v24 = WeakRetained;
          v127 = v24;
          v130 = v7;
          v25 = v97;
          v128 = self;
          v129 = v25;
          v26 = [v6 remoteObjectProxyWithErrorHandler:v125];
          v119[0] = _NSConcreteStackBlock;
          v119[1] = 3221225472;
          v119[2] = sub_10007CA80;
          v119[3] = &unk_1000D6380;
          v120 = v23;
          v121 = v24;
          v124 = v7;
          v27 = v25;
          v122 = self;
          v123 = v27;
          [v26 backgroundTask:v7 willBeginDelayedRequest:v10 reply:v119];

          goto LABEL_67;
        }

        goto LABEL_68;
      }

      v64 = [v4 args];
      if ([v64 count])
      {
        v65 = [v4 args];
        v10 = [v65 objectAtIndexedSubscript:0];
      }

      else
      {
        v10 = 0;
      }

      v140[0] = _NSConcreteStackBlock;
      v140[1] = 3221225472;
      v140[2] = sub_10007C73C;
      v140[3] = &unk_1000D6330;
      v144 = v7;
      v141 = WeakRetained;
      v142 = self;
      v92 = v4;
      v143 = v92;
      v93 = [v6 remoteObjectProxyWithErrorHandler:v140];
      v138[0] = _NSConcreteStackBlock;
      v138[1] = 3221225472;
      v138[2] = sub_10007C840;
      v138[3] = &unk_1000D6420;
      v138[4] = self;
      v139 = v92;
      [v93 backgroundAVAssetDownloadTask:v7 didResolveMediaSelectionProperyList:v10 reply:v138];
    }

LABEL_67:

    goto LABEL_68;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v52 = qword_1000EB210;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [WeakRetained descriptionForTaskWithIdentifier:v7];
        *buf = 138543362;
        v191 = v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ performing did start app wake callback.", buf, 0xCu);
      }

      v54 = [v4 args];
      v10 = [v54 objectAtIndexedSubscript:0];

      v167[0] = _NSConcreteStackBlock;
      v167[1] = 3221225472;
      v167[2] = sub_10007C310;
      v167[3] = &unk_1000D6420;
      v167[4] = self;
      v168 = v4;
      [v6 backgroundSessionDidStartAppWake:v10 reply:v167];
    }

    else if (v8 == 4)
    {
      v66 = qword_1000EB210;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [WeakRetained descriptionForTaskWithIdentifier:v7];
        *buf = 138543362;
        v191 = v67;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ performing did finish app wake callback.", buf, 0xCu);
      }

      v68 = [v4 args];
      v10 = [v68 objectAtIndexedSubscript:0];

      v165[0] = _NSConcreteStackBlock;
      v165[1] = 3221225472;
      v165[2] = sub_10007C31C;
      v165[3] = &unk_1000D6420;
      v165[4] = self;
      v166 = v4;
      [v6 backgroundSessionDidFinishAppWake:v10 reply:v165];
    }

    else
    {
      v28 = [v4 args];
      v98 = [v28 objectAtIndexedSubscript:0];

      v29 = [v4 args];
      v96 = [v29 objectAtIndexedSubscript:1];

      v30 = qword_1000EB210;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [WeakRetained descriptionForTaskWithIdentifier:v7];
        *buf = 138543618;
        v191 = v31;
        v192 = 2112;
        v193 = v98;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ performing will send request callback, request %@", buf, 0x16u);
      }

      v158[0] = _NSConcreteStackBlock;
      v158[1] = 3221225472;
      v158[2] = sub_10007C328;
      v158[3] = &unk_1000D6290;
      v32 = v4;
      v159 = v32;
      v33 = WeakRetained;
      v160 = v33;
      v164 = v7;
      v34 = v96;
      v163 = v34;
      v10 = v98;
      v161 = v10;
      v162 = self;
      v35 = [v6 remoteObjectProxyWithErrorHandler:v158];
      v152[0] = _NSConcreteStackBlock;
      v152[1] = 3221225472;
      v152[2] = sub_10007C44C;
      v152[3] = &unk_1000D62B8;
      v153 = v32;
      v154 = v33;
      v157 = v7;
      v36 = v34;
      v156 = v36;
      v155 = self;
      [v35 backgroundTask:v7 _willSendRequestForEstablishedConnection:v10 reply:v152];
    }

    goto LABEL_67;
  }

  switch(v8)
  {
    case 0:
      v40 = [v4 args];
      v41 = [v40 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = 0;
      }

      else
      {
        v71 = [v4 args];
        v10 = [v71 objectAtIndexedSubscript:0];
      }

      v72 = [v4 args];
      v73 = [v72 objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v74 = 0;
      }

      else
      {
        v80 = [v4 args];
        v74 = [v80 objectAtIndexedSubscript:1];
      }

      v81 = [v4 args];
      v82 = [v81 objectAtIndexedSubscript:2];

      v189[0] = _NSConcreteStackBlock;
      v189[1] = 3221225472;
      v189[2] = sub_10007BDA8;
      v189[3] = &unk_1000D6218;
      v189[4] = self;
      v83 = [v6 remoteObjectProxyWithErrorHandler:v189];
      v184[0] = _NSConcreteStackBlock;
      v184[1] = 3221225472;
      v184[2] = sub_10007BE1C;
      v184[3] = &unk_1000D6498;
      v188 = v7;
      v185 = WeakRetained;
      v186 = self;
      v187 = v4;
      [v83 backgroundTask:v7 didCompleteWithError:v10 taskMetrics:v74 info:v82 reply:v184];

      goto LABEL_67;
    case 1:
      v61 = [v4 args];
      if ([v61 count])
      {
        v62 = [v4 args];
        v63 = [v62 objectAtIndexedSubscript:0];
      }

      else
      {
        v63 = 0;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v85 = v63;
      v86 = v85;
      v10 = v85;
      if (isKindOfClass)
      {
        v87 = [v85 pathToDownloadTaskFile];
        if (v87 || ([v86 additionalProperties], v88 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v88, "objectForKeyedSubscript:", @"pathToDownloadTaskFile"), v87 = objc_claimAutoreleasedReturnValue(), v88, v87))
        {
          v10 = [NSURL fileURLWithPath:v87 isDirectory:0];
        }

        else
        {
          v10 = [v86 downloadFileURL];
        }
      }

      v89 = [v4 args];
      v90 = [v89 objectAtIndexedSubscript:1];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v91 = 0;
      }

      else
      {
        v91 = v90;
      }

      v179[0] = _NSConcreteStackBlock;
      v179[1] = 3221225472;
      v179[2] = sub_10007BF14;
      v179[3] = &unk_1000D6498;
      v183 = v7;
      v180 = WeakRetained;
      v181 = self;
      v182 = v4;
      [v6 backgroundDownloadTask:v7 didFinishDownloadingToURL:v10 response:v91 reply:v179];

      goto LABEL_67;
    case 2:
      v9 = [v4 args];
      v10 = [v9 objectAtIndexedSubscript:0];

      v11 = [v4 args];
      v12 = [v11 objectAtIndexedSubscript:1];

      v13 = qword_1000EB210;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [WeakRetained descriptionForTaskWithIdentifier:v7];
        *buf = 138543618;
        v191 = v14;
        v192 = 2112;
        v193 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ performing auth challenge callback, challenge %@", buf, 0x16u);
      }

      v175[0] = _NSConcreteStackBlock;
      v175[1] = 3221225472;
      v175[2] = sub_10007C000;
      v175[3] = &unk_1000D6240;
      v15 = v4;
      v176 = v15;
      v177 = self;
      v16 = v12;
      v178 = v16;
      v17 = [v6 remoteObjectProxyWithErrorHandler:v175];
      v169[0] = _NSConcreteStackBlock;
      v169[1] = 3221225472;
      v169[2] = sub_10007C09C;
      v169[3] = &unk_1000D6268;
      v170 = v15;
      v171 = WeakRetained;
      v174 = v7;
      v18 = v16;
      v173 = v18;
      v172 = self;
      [v17 backgroundTask:v7 didReceiveChallenge:v10 reply:v169];

      goto LABEL_67;
  }

LABEL_68:
}

- (NDCallbackQueue)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NDCallbackQueue;
  v5 = [(NDCallbackQueue *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(NDCallbackQueue *)v5 setDelegate:v4];
    v7 = +[NSMutableArray array];
    callbacks = v6->_callbacks;
    v6->_callbacks = v7;
  }

  return v6;
}

@end