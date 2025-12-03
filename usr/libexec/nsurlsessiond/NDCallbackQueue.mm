@interface NDCallbackQueue
- (NDCallbackQueue)initWithDelegate:(id)delegate;
- (NDCallbackQueueDelegate)delegate;
- (void)addPendingCallback:(id)callback wakeRequirement:(int64_t)requirement;
- (void)drainCallback:(id)callback;
- (void)drainCallbacksForTaskIdentifier:(unint64_t)identifier;
- (void)performAllCallbacks;
- (void)performCallback:(id)callback;
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

- (void)drainCallbacksForTaskIdentifier:(unint64_t)identifier
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
        if ([v10 taskIdentifier] == identifier)
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

- (void)addPendingCallback:(id)callback wakeRequirement:(int64_t)requirement
{
  callbackCopy = callback;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(NSMutableArray *)self->_callbacks addObject:callbackCopy];
  getClientProxy = [WeakRetained getClientProxy];

  if (getClientProxy)
  {
    [(NDCallbackQueue *)self performCallback:callbackCopy];
  }

  else if (requirement)
  {
    [WeakRetained wakeUpClient:requirement];
  }
}

- (void)drainCallback:(id)callback
{
  callbackCopy = callback;
  if (([callbackCopy hasBeenCalled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    type = [callbackCopy type];
    if (type <= 5)
    {
      if (type != 2)
      {
        if (type == 5)
        {
          args = [callbackCopy args];
          v8 = [args objectAtIndexedSubscript:1];

          v12 = qword_1000EB210;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [WeakRetained descriptionForTaskWithIdentifier:{objc_msgSend(callbackCopy, "taskIdentifier")}];
            v22 = 138543362;
            v23 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ draining willSendRequest callback", &v22, 0xCu);
          }

          v8[2](v8, 0, 0);
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      args2 = [callbackCopy args];
      v8 = [args2 objectAtIndexedSubscript:1];

      v18 = qword_1000EB210;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [WeakRetained descriptionForTaskWithIdentifier:{objc_msgSend(callbackCopy, "taskIdentifier")}];
        v22 = 138543362;
        v23 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ draining authentication challenge callback", &v22, 0xCu);
      }
    }

    else
    {
      if (type == 6)
      {
        args3 = [callbackCopy args];
        v8 = [args3 objectAtIndexedSubscript:2];

        v15 = qword_1000EB210;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [WeakRetained descriptionForTaskWithIdentifier:{objc_msgSend(callbackCopy, "taskIdentifier")}];
          v22 = 138543362;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ draining openFileAtPath callback", &v22, 0xCu);
        }

        (v8[2])(v8, 0);
        goto LABEL_23;
      }

      if (type != 9)
      {
        if (type == 10)
        {
          args4 = [callbackCopy args];
          v8 = [args4 objectAtIndexedSubscript:0];

          v9 = qword_1000EB210;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [WeakRetained descriptionForTaskWithIdentifier:{objc_msgSend(callbackCopy, "taskIdentifier")}];
            v22 = 138543362;
            v23 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ draining getAuthHeadersForResponse callback", &v22, 0xCu);
          }

          (v8[2])(v8, 0, 0, 0);
          goto LABEL_23;
        }

LABEL_24:
        [callbackCopy setHasBeenCalled:1];

        goto LABEL_25;
      }

      args5 = [callbackCopy args];
      v8 = [args5 objectAtIndexedSubscript:1];

      v18 = qword_1000EB210;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [WeakRetained descriptionForTaskWithIdentifier:{objc_msgSend(callbackCopy, "taskIdentifier")}];
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

- (void)performCallback:(id)callback
{
  callbackCopy = callback;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  getClientProxy = [WeakRetained getClientProxy];
  taskIdentifier = [callbackCopy taskIdentifier];
  type = [callbackCopy type];
  if (type > 5)
  {
    if (type > 9)
    {
      switch(type)
      {
        case 10:
          v55 = qword_1000EB210;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [WeakRetained descriptionForTaskWithIdentifier:taskIdentifier];
            *buf = 138543362;
            v191 = v56;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ performing get auth headers for response callback.", buf, 0xCu);
          }

          args = [callbackCopy args];
          v99 = [args objectAtIndexedSubscript:0];

          args2 = [callbackCopy args];
          v59 = [args2 count] > 1;

          if (v59)
          {
            args3 = [callbackCopy args];
            downloadFileURL = [args3 objectAtIndexedSubscript:1];
          }

          else
          {
            downloadFileURL = 0;
          }

          v113[0] = _NSConcreteStackBlock;
          v113[1] = 3221225472;
          v113[2] = sub_10007CBD0;
          v113[3] = &unk_1000D6358;
          v75 = callbackCopy;
          v114 = v75;
          v76 = WeakRetained;
          v115 = v76;
          v118 = taskIdentifier;
          v77 = v99;
          selfCopy = self;
          v117 = v77;
          v78 = [getClientProxy remoteObjectProxyWithErrorHandler:v113];
          v107[0] = _NSConcreteStackBlock;
          v107[1] = 3221225472;
          v107[2] = sub_10007CD18;
          v107[3] = &unk_1000D63A8;
          v108 = v75;
          v109 = v76;
          v112 = taskIdentifier;
          v79 = v77;
          selfCopy2 = self;
          v111 = v79;
          [v78 backgroundTask:taskIdentifier getAuthHeadersForResponse:downloadFileURL reply:v107];

          break;
        case 11:
          args4 = [callbackCopy args];
          if ([args4 count])
          {
            args5 = [callbackCopy args];
            downloadFileURL = [args5 objectAtIndexedSubscript:0];
          }

          else
          {
            downloadFileURL = 0;
          }

          v133[0] = _NSConcreteStackBlock;
          v133[1] = 3221225472;
          v133[2] = sub_10007C84C;
          v133[3] = &unk_1000D6330;
          v137 = taskIdentifier;
          v134 = WeakRetained;
          selfCopy3 = self;
          v94 = callbackCopy;
          v136 = v94;
          v95 = [getClientProxy remoteObjectProxyWithErrorHandler:v133];
          v131[0] = _NSConcreteStackBlock;
          v131[1] = 3221225472;
          v131[2] = sub_10007C950;
          v131[3] = &unk_1000D6420;
          v131[4] = self;
          v132 = v94;
          [v95 backgroundAVAssetDownloadTask:taskIdentifier willDownloadVariants:downloadFileURL reply:v131];

          break;
        case 12:
          args6 = [callbackCopy args];
          downloadFileURL = [args6 objectAtIndexedSubscript:0];

          v102[0] = _NSConcreteStackBlock;
          v102[1] = 3221225472;
          v102[2] = sub_10007CEA8;
          v102[3] = &unk_1000D6330;
          v106 = taskIdentifier;
          v103 = WeakRetained;
          selfCopy4 = self;
          v38 = callbackCopy;
          v105 = v38;
          v39 = [getClientProxy remoteObjectProxyWithErrorHandler:v102];
          v100[0] = _NSConcreteStackBlock;
          v100[1] = 3221225472;
          v100[2] = sub_10007CFAC;
          v100[3] = &unk_1000D6420;
          v100[4] = self;
          v101 = v38;
          [v39 backgroundAVAssetDownloadTask:taskIdentifier didReceiveMetricEvent:downloadFileURL reply:v100];

          break;
        default:
          goto LABEL_68;
      }
    }

    else
    {
      if (type == 6)
      {
        args7 = [callbackCopy args];
        downloadFileURL = [args7 objectAtIndexedSubscript:0];

        args8 = [callbackCopy args];
        v44 = [args8 objectAtIndexedSubscript:1];
        intValue = [v44 intValue];

        args9 = [callbackCopy args];
        v47 = [args9 objectAtIndexedSubscript:2];

        v48 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v191 = downloadFileURL;
          v192 = 1024;
          LODWORD(v193) = intValue;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Performing open file at path callback for path %@ mode %d", buf, 0x12u);
        }

        v149[0] = _NSConcreteStackBlock;
        v149[1] = 3221225472;
        v149[2] = sub_10007C5B4;
        v149[3] = &unk_1000D62E0;
        v49 = callbackCopy;
        v150 = v49;
        selfCopy5 = self;
        v50 = [getClientProxy remoteObjectProxyWithErrorHandler:v149];
        v145[0] = _NSConcreteStackBlock;
        v145[1] = 3221225472;
        v145[2] = sub_10007C638;
        v145[3] = &unk_1000D6308;
        v146 = v49;
        v51 = v47;
        v148 = v51;
        selfCopy6 = self;
        [v50 openFileAtPath:downloadFileURL mode:intValue withReply:v145];

        goto LABEL_67;
      }

      if (type != 8)
      {
        if (type == 9)
        {
          args10 = [callbackCopy args];
          downloadFileURL = [args10 objectAtIndexedSubscript:0];

          args11 = [callbackCopy args];
          v97 = [args11 objectAtIndexedSubscript:1];

          v21 = qword_1000EB210;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [WeakRetained descriptionForTaskWithIdentifier:taskIdentifier];
            *buf = 138543362;
            v191 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ performing begin delayed request callback", buf, 0xCu);
          }

          v125[0] = _NSConcreteStackBlock;
          v125[1] = 3221225472;
          v125[2] = sub_10007C95C;
          v125[3] = &unk_1000D6358;
          v23 = callbackCopy;
          v126 = v23;
          v24 = WeakRetained;
          v127 = v24;
          v130 = taskIdentifier;
          v25 = v97;
          selfCopy7 = self;
          v129 = v25;
          v26 = [getClientProxy remoteObjectProxyWithErrorHandler:v125];
          v119[0] = _NSConcreteStackBlock;
          v119[1] = 3221225472;
          v119[2] = sub_10007CA80;
          v119[3] = &unk_1000D6380;
          v120 = v23;
          v121 = v24;
          v124 = taskIdentifier;
          v27 = v25;
          selfCopy8 = self;
          v123 = v27;
          [v26 backgroundTask:taskIdentifier willBeginDelayedRequest:downloadFileURL reply:v119];

          goto LABEL_67;
        }

        goto LABEL_68;
      }

      args12 = [callbackCopy args];
      if ([args12 count])
      {
        args13 = [callbackCopy args];
        downloadFileURL = [args13 objectAtIndexedSubscript:0];
      }

      else
      {
        downloadFileURL = 0;
      }

      v140[0] = _NSConcreteStackBlock;
      v140[1] = 3221225472;
      v140[2] = sub_10007C73C;
      v140[3] = &unk_1000D6330;
      v144 = taskIdentifier;
      v141 = WeakRetained;
      selfCopy9 = self;
      v92 = callbackCopy;
      v143 = v92;
      v93 = [getClientProxy remoteObjectProxyWithErrorHandler:v140];
      v138[0] = _NSConcreteStackBlock;
      v138[1] = 3221225472;
      v138[2] = sub_10007C840;
      v138[3] = &unk_1000D6420;
      v138[4] = self;
      v139 = v92;
      [v93 backgroundAVAssetDownloadTask:taskIdentifier didResolveMediaSelectionProperyList:downloadFileURL reply:v138];
    }

LABEL_67:

    goto LABEL_68;
  }

  if (type > 2)
  {
    if (type == 3)
    {
      v52 = qword_1000EB210;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [WeakRetained descriptionForTaskWithIdentifier:taskIdentifier];
        *buf = 138543362;
        v191 = v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ performing did start app wake callback.", buf, 0xCu);
      }

      args14 = [callbackCopy args];
      downloadFileURL = [args14 objectAtIndexedSubscript:0];

      v167[0] = _NSConcreteStackBlock;
      v167[1] = 3221225472;
      v167[2] = sub_10007C310;
      v167[3] = &unk_1000D6420;
      v167[4] = self;
      v168 = callbackCopy;
      [getClientProxy backgroundSessionDidStartAppWake:downloadFileURL reply:v167];
    }

    else if (type == 4)
    {
      v66 = qword_1000EB210;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [WeakRetained descriptionForTaskWithIdentifier:taskIdentifier];
        *buf = 138543362;
        v191 = v67;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ performing did finish app wake callback.", buf, 0xCu);
      }

      args15 = [callbackCopy args];
      downloadFileURL = [args15 objectAtIndexedSubscript:0];

      v165[0] = _NSConcreteStackBlock;
      v165[1] = 3221225472;
      v165[2] = sub_10007C31C;
      v165[3] = &unk_1000D6420;
      v165[4] = self;
      v166 = callbackCopy;
      [getClientProxy backgroundSessionDidFinishAppWake:downloadFileURL reply:v165];
    }

    else
    {
      args16 = [callbackCopy args];
      v98 = [args16 objectAtIndexedSubscript:0];

      args17 = [callbackCopy args];
      v96 = [args17 objectAtIndexedSubscript:1];

      v30 = qword_1000EB210;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [WeakRetained descriptionForTaskWithIdentifier:taskIdentifier];
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
      v32 = callbackCopy;
      v159 = v32;
      v33 = WeakRetained;
      v160 = v33;
      v164 = taskIdentifier;
      v34 = v96;
      v163 = v34;
      downloadFileURL = v98;
      v161 = downloadFileURL;
      selfCopy10 = self;
      v35 = [getClientProxy remoteObjectProxyWithErrorHandler:v158];
      v152[0] = _NSConcreteStackBlock;
      v152[1] = 3221225472;
      v152[2] = sub_10007C44C;
      v152[3] = &unk_1000D62B8;
      v153 = v32;
      v154 = v33;
      v157 = taskIdentifier;
      v36 = v34;
      v156 = v36;
      selfCopy11 = self;
      [v35 backgroundTask:taskIdentifier _willSendRequestForEstablishedConnection:downloadFileURL reply:v152];
    }

    goto LABEL_67;
  }

  switch(type)
  {
    case 0:
      args18 = [callbackCopy args];
      v41 = [args18 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        downloadFileURL = 0;
      }

      else
      {
        args19 = [callbackCopy args];
        downloadFileURL = [args19 objectAtIndexedSubscript:0];
      }

      args20 = [callbackCopy args];
      v73 = [args20 objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v74 = 0;
      }

      else
      {
        args21 = [callbackCopy args];
        v74 = [args21 objectAtIndexedSubscript:1];
      }

      args22 = [callbackCopy args];
      v82 = [args22 objectAtIndexedSubscript:2];

      v189[0] = _NSConcreteStackBlock;
      v189[1] = 3221225472;
      v189[2] = sub_10007BDA8;
      v189[3] = &unk_1000D6218;
      v189[4] = self;
      v83 = [getClientProxy remoteObjectProxyWithErrorHandler:v189];
      v184[0] = _NSConcreteStackBlock;
      v184[1] = 3221225472;
      v184[2] = sub_10007BE1C;
      v184[3] = &unk_1000D6498;
      v188 = taskIdentifier;
      v185 = WeakRetained;
      selfCopy12 = self;
      v187 = callbackCopy;
      [v83 backgroundTask:taskIdentifier didCompleteWithError:downloadFileURL taskMetrics:v74 info:v82 reply:v184];

      goto LABEL_67;
    case 1:
      args23 = [callbackCopy args];
      if ([args23 count])
      {
        args24 = [callbackCopy args];
        v63 = [args24 objectAtIndexedSubscript:0];
      }

      else
      {
        v63 = 0;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v85 = v63;
      v86 = v85;
      downloadFileURL = v85;
      if (isKindOfClass)
      {
        pathToDownloadTaskFile = [v85 pathToDownloadTaskFile];
        if (pathToDownloadTaskFile || ([v86 additionalProperties], v88 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v88, "objectForKeyedSubscript:", @"pathToDownloadTaskFile"), pathToDownloadTaskFile = objc_claimAutoreleasedReturnValue(), v88, pathToDownloadTaskFile))
        {
          downloadFileURL = [NSURL fileURLWithPath:pathToDownloadTaskFile isDirectory:0];
        }

        else
        {
          downloadFileURL = [v86 downloadFileURL];
        }
      }

      args25 = [callbackCopy args];
      v90 = [args25 objectAtIndexedSubscript:1];

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
      v183 = taskIdentifier;
      v180 = WeakRetained;
      selfCopy13 = self;
      v182 = callbackCopy;
      [getClientProxy backgroundDownloadTask:taskIdentifier didFinishDownloadingToURL:downloadFileURL response:v91 reply:v179];

      goto LABEL_67;
    case 2:
      args26 = [callbackCopy args];
      downloadFileURL = [args26 objectAtIndexedSubscript:0];

      args27 = [callbackCopy args];
      v12 = [args27 objectAtIndexedSubscript:1];

      v13 = qword_1000EB210;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [WeakRetained descriptionForTaskWithIdentifier:taskIdentifier];
        *buf = 138543618;
        v191 = v14;
        v192 = 2112;
        v193 = downloadFileURL;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ performing auth challenge callback, challenge %@", buf, 0x16u);
      }

      v175[0] = _NSConcreteStackBlock;
      v175[1] = 3221225472;
      v175[2] = sub_10007C000;
      v175[3] = &unk_1000D6240;
      v15 = callbackCopy;
      v176 = v15;
      selfCopy14 = self;
      v16 = v12;
      v178 = v16;
      v17 = [getClientProxy remoteObjectProxyWithErrorHandler:v175];
      v169[0] = _NSConcreteStackBlock;
      v169[1] = 3221225472;
      v169[2] = sub_10007C09C;
      v169[3] = &unk_1000D6268;
      v170 = v15;
      v171 = WeakRetained;
      v174 = taskIdentifier;
      v18 = v16;
      v173 = v18;
      selfCopy15 = self;
      [v17 backgroundTask:taskIdentifier didReceiveChallenge:downloadFileURL reply:v169];

      goto LABEL_67;
  }

LABEL_68:
}

- (NDCallbackQueue)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = NDCallbackQueue;
  v5 = [(NDCallbackQueue *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(NDCallbackQueue *)v5 setDelegate:delegateCopy];
    v7 = +[NSMutableArray array];
    callbacks = v6->_callbacks;
    v6->_callbacks = v7;
  }

  return v6;
}

@end