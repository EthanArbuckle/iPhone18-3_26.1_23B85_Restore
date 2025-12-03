@interface CAIssuerDelegate
- (BOOL)fetchNext:(id)next context:(id)context;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
@end

@implementation CAIssuerDelegate

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  metricsCopy = metrics;
  originalRequest = [task originalRequest];
  taskId = [originalRequest taskId];

  v10 = [(TrustURLSessionDelegate *)self contextForTask:taskId];
  v11 = v10;
  if (!v10)
  {
    taskInterval = sub_1000027AC("http");
    if (os_log_type_enabled(taskInterval, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = taskId;
      _os_log_impl(&_mh_execute_header, taskInterval, OS_LOG_TYPE_DEFAULT, "failed to find context for %@", &v16, 0xCu);
    }

    goto LABEL_7;
  }

  context = [v10 context];
  if (context)
  {
    v13 = context[34];
    if (v13)
    {
      taskInterval = [metricsCopy taskInterval];
      [taskInterval duration];
      *(v13 + 32) += (v15 * 1000000000.0);
LABEL_7:
    }
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v63.receiver = self;
  v63.super_class = CAIssuerDelegate;
  [(TrustURLSessionDelegate *)&v63 URLSession:sessionCopy task:taskCopy didCompleteWithError:errorCopy];
  originalRequest = [taskCopy originalRequest];
  taskId = [originalRequest taskId];

  v13 = [(TrustURLSessionDelegate *)self contextForTask:taskId];
  v14 = v13;
  if (v13)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    context = [v13 context];
    v15 = v60[3];
    if (!v15)
    {
      [(TrustURLSessionDelegate *)self removeTask:taskId];
LABEL_37:
      _Block_object_dispose(&v59, 8);
      goto LABEL_38;
    }

    v39 = *(v15 + 272);
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = sub_100038934;
    v57 = sub_100038944;
    v58 = 0;
    if (errorCopy)
    {
      v16 = sub_1000027AC("caissuer");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        originalRequest2 = [taskCopy originalRequest];
        v18 = [originalRequest2 URL];
        *buf = 138412546;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = errorCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to download issuer %@, with error %@", buf, 0x16u);
      }

      if (v39 != 0.0)
      {
        ++*(*&v39 + 40);
      }

      goto LABEL_23;
    }

    response = [v14 response];

    if (!response)
    {
      goto LABEL_23;
    }

    response2 = [v14 response];
    v22 = SecCertificateCreateWithData(0, response2);
    v23 = v22;
    if (v22)
    {
      goto LABEL_14;
    }

    v24 = SecCMSCertificatesOnlyMessageCopyCertificates();
    if (!v24)
    {
      v22 = SecCertificateCreateWithPEM();
      v23 = v22;
      if (v22)
      {
LABEL_14:
        *buf = v22;
        v24 = [NSArray arrayWithObjects:buf count:1];
        CFRelease(v23);
        goto LABEL_18;
      }

      v24 = 0;
    }

LABEL_18:

    v25 = v54[5];
    v54[5] = v24;

    if (v39 != 0.0)
    {
      v26 = v54[5];
      if (v26)
      {
        if ([v26 count] >= 2)
        {
          *(*&v39 + 45) = 1;
        }
      }

      else
      {
        *(*&v39 + 44) = 1;
      }
    }

LABEL_23:
    v27 = v54[5];
    if (v27)
    {
      originalRequest3 = [taskCopy originalRequest];
      v29 = [originalRequest3 URL];
      [v14 maxAge];
      v31 = v30;
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_100092D28 != -1)
      {
        v39 = Current;
        dispatch_once(&qword_100092D28, &stru_100082D80);
        Current = v39;
      }

      if (qword_100092D30)
      {
        v33 = *qword_100092D30;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_10003751C;
        v65 = &unk_100082DA0;
        v66 = v27;
        v67 = v29;
        v68 = v31 + Current;
        dispatch_sync(v33, buf);
      }

      v34 = v60[3];
      if (v34)
      {
        v34 = v34[2];
      }

      v35 = v34;
      v46 = _NSConcreteStackBlock;
      v47 = 3221225472;
      v48 = sub_10003894C;
      v49 = &unk_100082F10;
      v36 = &v50;
      v50 = v14;
      v51 = &v59;
      v52 = &v53;
      p_block = &v46;
    }

    else
    {
      if (![(CAIssuerDelegate *)self fetchNext:sessionCopy context:v14])
      {
LABEL_36:
        [(TrustURLSessionDelegate *)self removeTask:taskId, *&v39, block, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53];
        _Block_object_dispose(&v53, 8);

        goto LABEL_37;
      }

      v38 = v60[3];
      if (v38)
      {
        v38 = v38[2];
      }

      v35 = v38;
      block = _NSConcreteStackBlock;
      v41 = 3221225472;
      v42 = sub_10003899C;
      v43 = &unk_100082F38;
      v36 = &v44;
      v44 = v14;
      v45 = &v59;
      p_block = &block;
    }

    dispatch_async(v35, p_block);

    goto LABEL_36;
  }

  v19 = sub_1000027AC("http");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = taskId;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "failed to find context for %@", buf, 0xCu);
  }

LABEL_38:
}

- (BOOL)fetchNext:(id)next context:(id)context
{
  contextCopy = context;
  nextCopy = next;
  context = [contextCopy context];
  if (context)
  {
    v9 = context[34];
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = self;
  v12.super_class = CAIssuerDelegate;
  v10 = [(TrustURLSessionDelegate *)&v12 fetchNext:nextCopy context:contextCopy];

  if (!v10 && v9)
  {
    ++*(v9 + 24);
  }

  return v10;
}

@end