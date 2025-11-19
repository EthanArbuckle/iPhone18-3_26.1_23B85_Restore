void sub_100226E80(id a1)
{
  qword_10039CD50 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100227098(id a1)
{
  qword_10039CD50 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100227260(id a1)
{
  qword_10039CD60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100227388(id a1)
{
  qword_10039CD60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002277E4(id a1)
{
  qword_10039CD60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100227828(id a1)
{
  qword_10039CD60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100227ABC(id a1)
{
  qword_10039CD70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100227B00(id a1)
{
  qword_10039CD70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100228310(id a1)
{
  qword_10039CD70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002289F0(id a1)
{
  qword_10039CD80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022900C(id a1)
{
  qword_10039CD80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1002291B8(uint64_t a1, void *a2, void *a3)
{
  if (![*(a1 + 32) hasStartSlh] || (objc_msgSend(*(a1 + 32), "startSlh"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v36 = -181;
    if (!a2)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (![*(a1 + 32) hasEndSlh] || (objc_msgSend(*(a1 + 32), "endSlh"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v36 = -182;
    if (!a2)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = [*(a1 + 32) proofHashesArray];
  if (v8)
  {
    v9 = [*(a1 + 32) proofHashesArray_Count];

    if (v9)
    {
      v10 = [*(a1 + 32) startSlh];
      v11 = [*(a1 + 32) verifier];
      v12 = [v11 trustedKeyStore];
      v13 = [v12 signatureVerifier];
      v14 = [*(a1 + 32) dataStore];
      v39 = [SignedLogHead signedTypeWithObject:v10 verifier:v13 dataStore:v14];

      v15 = [*(a1 + 32) endSlh];
      v16 = [*(a1 + 32) verifier];
      v17 = [v16 trustedKeyStore];
      v18 = [v17 signatureVerifier];
      v19 = [*(a1 + 32) dataStore];
      v20 = [SignedLogHead signedTypeWithObject:v15 verifier:v18 dataStore:v19];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v51 = 0x3032000000;
      v52 = sub_100229720;
      v53 = sub_100229730;
      v54 = 0;
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v21 = [*(a1 + 32) verifier];
      v22 = [*(a1 + 32) proofHashesArray];
      v23 = (*(&buf + 1) + 40);
      obj = *(*(&buf + 1) + 40);
      v24 = [v21 verifyConsistencyProof:v22 startLogHead:v39 endLogHead:v20 error:&obj];
      objc_storeStrong(v23, obj);

      v49 = v24;
      v25 = [*(a1 + 32) dataStore];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100229738;
      v40[3] = &unk_10031A230;
      v40[4] = *(a1 + 32);
      v26 = v39;
      v41 = v26;
      p_buf = &buf;
      v27 = v20;
      v42 = v27;
      v44 = &v46;
      [v25 performBlockAndWait:v40];

      v28 = +[NSMutableDictionary dictionary];
      v29 = [*(a1 + 32) metadata];
      v30 = kTransparencyResponseMetadataKeyServerHint;
      v31 = [v29 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

      if (v31)
      {
        v32 = [*(a1 + 32) metadata];
        v33 = [v32 objectForKeyedSubscript:v30];
        [v28 setObject:v33 forKeyedSubscript:v30];
      }

      if ([v28 count])
      {
        v34 = v28;
        *a3 = v28;
      }

      if (a2)
      {
        *a2 = *(*(&buf + 1) + 40);
      }

      v35 = v47[3];

      _Block_object_dispose(&v46, 8);
      _Block_object_dispose(&buf, 8);

      return v35;
    }
  }

  v36 = -183;
  if (a2)
  {
LABEL_19:
    *a2 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v36 description:@"log consistency response missing data required for verification"];
  }

LABEL_20:
  if (qword_10039CD78 != -1)
  {
    sub_10025F638();
  }

  v37 = qword_10039CD80;
  if (os_log_type_enabled(qword_10039CD80, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v36;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "log consistency response missing data required for verification: %ld", &buf, 0xCu);
  }

  return 0;
}

void sub_1002296A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1002296DC(id a1)
{
  qword_10039CD80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_100229720(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100229738(uint64_t a1)
{
  v2 = [*(a1 + 32) forwards];
  v3 = *(*(a1 + 56) + 8);
  v6 = *(v3 + 40);
  v5 = (v3 + 40);
  v4 = v6;
  if (v2)
  {
    v7 = *(a1 + 40);
    obj = v4;
    v8 = [v7 copyManagedObject:&obj];
    objc_storeStrong(v5, obj);
    v9 = *(a1 + 48);
    v10 = *(*(a1 + 56) + 8);
    v12 = *(v10 + 40);
    v11 = (v10 + 40);
    v35 = v12;
    v13 = [v9 copyManagedObject:&v35];
    v14 = v35;
  }

  else
  {
    v15 = *(a1 + 48);
    v34 = v4;
    v8 = [v15 copyManagedObject:&v34];
    objc_storeStrong(v5, v34);
    v16 = *(a1 + 40);
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    v11 = (v17 + 40);
    v33 = v18;
    v13 = [v16 copyManagedObject:&v33];
    v14 = v33;
  }

  v19 = v14;
  v20 = *v11;
  *v11 = v19;

  if (!v8 || !v13)
  {
    if (qword_10039CD78 != -1)
    {
      sub_10025F64C();
    }

    v21 = qword_10039CD80;
    if (os_log_type_enabled(qword_10039CD80, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v38 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to get SLHs from data store: %@", buf, 0xCu);
    }
  }

  if ([*(a1 + 32) forwards])
  {
    if ([v8 consistencyVerified] == 2)
    {
      v23 = [v8 revision];
      v24 = [*(a1 + 32) startRevision];
      v25 = [v24 longLongValue];

      if (v23 == v25)
      {
        [*(a1 + 32) setResult:*(*(*(a1 + 64) + 8) + 24) treeHead:v8 error:*(*(*(a1 + 56) + 8) + 40)];
      }
    }
  }

  if ([v8 consistencyVerified] == 1)
  {
    [*(a1 + 32) setResult:*(*(*(a1 + 64) + 8) + 24) treeHead:v13 error:*(*(*(a1 + 56) + 8) + 40)];
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [*(a1 + 32) checkSplitsFor:v13];
  }

  v26 = [*(a1 + 32) dataStore];
  v27 = *(*(a1 + 56) + 8);
  v32 = *(v27 + 40);
  v28 = [v26 persistWithError:&v32];
  objc_storeStrong((v27 + 40), v32);

  if ((v28 & 1) == 0)
  {
    if (qword_10039CD78 != -1)
    {
      sub_10025F674();
    }

    v29 = qword_10039CD80;
    if (os_log_type_enabled(qword_10039CD80, OS_LOG_TYPE_ERROR))
    {
      v30 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v38 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to save consistency results: %@", buf, 0xCu);
    }

    v31 = [*(a1 + 32) dataStore];
    [v31 reportCoreDataPersistEventForLocation:@"verifyConsistency" underlyingError:*(*(*(a1 + 56) + 8) + 40)];
  }
}

void sub_100229A64(id a1)
{
  qword_10039CD80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100229AA8(id a1)
{
  qword_10039CD80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022A2B0(id a1)
{
  qword_10039CD90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022A47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10022A4A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10022A4C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v42 = 0;
  v3 = [v2 copyManagedObject:&v42];
  v4 = v42;
  if (!v3)
  {
    if (qword_10039CD88 != -1)
    {
      sub_10025F700();
    }

    v9 = qword_10039CD90;
    if (os_log_type_enabled(qword_10039CD90, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to find tree head after inclusion verification: %@", buf, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v10 = [SecXPCHelper cleanseErrorForXPC:v4];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
    v13 = v4;
    goto LABEL_31;
  }

  [v3 setUnsigned:"inclusionVerified" value:*(a1 + 64)];
  if (*(a1 + 64) != 1)
  {
    v5 = [*(a1 + 40) dataStore];
    v6 = [v5 createSignedTreeHeadFailure];

    v7 = *(a1 + 72);
    if (v7 && *v7)
    {
      v8 = [*v7 code];
    }

    else
    {
      v8 = -120;
    }

    [v6 setErrorCode:v8];
    v14 = *(a1 + 72);
    if (v14 && *v14)
    {
      v15 = [*v14 domain];
      [v6 setErrorDomain:v15];
    }

    else
    {
      [v6 setErrorDomain:kTransparencyErrorUnknown];
    }

    [v6 setSth:v3];
    [v6 setVerificationType:1];
    if (!*(a1 + 64))
    {
      v16 = [*(a1 + 40) dataStore];
      v17 = [v3 application];
      v18 = [*(a1 + 40) optInServer];
      v19 = [v16 createFailureEvent:v4 application:v17 optInServer:v18];

      [v3 setFailureEvent:v19];
      v20 = [*(a1 + 40) optInServer];
      v21 = [v20 getAggregateOptInState:0];

      if (qword_10039CD88 != -1)
      {
        sub_10025F6B0();
      }

      v22 = qword_10039CD90;
      if (os_log_type_enabled(qword_10039CD90, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = [v19 eventId];
        *buf = 138543362;
        v44 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Created failure eventId %{public}@ for STH inclusion validation", buf, 0xCu);
      }

      v25 = [*(a1 + 40) followUp];
      v26 = [v3 application];
      v27 = [v19 eventId];
      [v25 postFollowup:v26 type:2 eventId:v27 errorCode:objc_msgSend(v4 optInState:"code") infoLink:v21 additionalInfo:0 error:{0, 0}];
    }
  }

  v28 = [*(a1 + 40) dataStore];
  v41 = v4;
  v29 = [v28 persistWithError:&v41];
  v13 = v41;

  if ((v29 & 1) == 0)
  {
    if (qword_10039CD88 != -1)
    {
      sub_10025F6D8();
    }

    v30 = qword_10039CD90;
    if (os_log_type_enabled(qword_10039CD90, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v13;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "failed to save inclusion verification state to PAT head after TLT entry verification: %@", buf, 0xCu);
    }

    v31 = [*(a1 + 40) dataStore];
    [v31 reportCoreDataPersistEventForLocation:@"verifyPatHeadInclusion" underlyingError:v13];

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v32 = [SecXPCHelper cleanseErrorForXPC:v13];
    v33 = *(*(a1 + 56) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [v3 receiptTime];
  if (Current - v36 > 1.0)
  {
    v37 = CFAbsoluteTimeGetCurrent();
    [v3 receiptTime];
    v39 = v37 - v38;
    v12 = +[TransparencyAnalytics logger];
    v40 = [NSNumber numberWithDouble:v39];
    [v12 logMetric:v40 withName:@"ktTLTInclusionProofTime"];

LABEL_31:
  }
}

void sub_10022A9C0(id a1)
{
  qword_10039CD90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022AA04(id a1)
{
  qword_10039CD90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022AA48(id a1)
{
  qword_10039CD90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_10022AB58(uint64_t a1, void *a2, void *a3)
{
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [*(a1 + 32) metadata];
    v8 = kTransparencyResponseMetadataKeyServerHint;
    v9 = [v7 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

    if (v9)
    {
      v10 = [*(a1 + 32) metadata];
      v11 = [v10 objectForKeyedSubscript:v8];
      [v6 setObject:v11 forKeyedSubscript:v8];
    }

    if ([v6 count])
    {
      v12 = v6;
      *a3 = v6;
    }
  }

  v13 = [*(a1 + 32) verifyWithError:a2];
  if (v13 == 1)
  {
    v14 = [*(a1 + 32) nodeBytes];
    v15 = [(TransparencyGPBMessage *)TopLevelTreeNode parseFromData:v14 error:a2];

    if (v15)
    {
      if ([v15 hasPatHead])
      {
        v16 = [v15 patHead];
        v17 = [v16 object];
        v18 = [*(a1 + 40) logHead];
        v19 = [v17 isEqualToData:v18];

        if (v19)
        {
          v20 = 1;
LABEL_36:
          v23 = [*(a1 + 32) setInclusionResult:v20 signedLogHead:*(a1 + 40) error:a2];

          return v23;
        }
      }

      if (a2)
      {
        *a2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-63 description:@"top-level tree entry does not contain the SLH in the per-app tree entry"];
      }

      if (qword_10039CD88 != -1)
      {
        sub_10025F73C();
      }

      v24 = qword_10039CD90;
      if (!os_log_type_enabled(qword_10039CD90, OS_LOG_TYPE_ERROR))
      {
LABEL_35:
        v20 = 0;
        goto LABEL_36;
      }

      *buf = 0;
      v25 = "top-level tree entry does not contain the SLH in the per-app tree entry";
      v26 = v24;
      v27 = 2;
    }

    else
    {
      if (a2)
      {
        *a2 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-141 underlyingError:*a2 description:?];
      }

      if (qword_10039CD88 != -1)
      {
        sub_10025F750();
      }

      v28 = qword_10039CD90;
      if (!os_log_type_enabled(qword_10039CD90, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      if (a2)
      {
        v29 = *a2;
      }

      else
      {
        v29 = 0;
      }

      *buf = 138412290;
      v32 = v29;
      v25 = "failed to decode top-level tree node: %@";
      v26 = v28;
      v27 = 12;
    }

    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
    goto LABEL_35;
  }

  v21 = v13;
  if (a2)
  {
    *a2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-14 underlyingError:*a2 description:@"top-level tree verification failed"];
  }

  if (qword_10039CD88 != -1)
  {
    sub_10025F728();
  }

  v22 = qword_10039CD90;
  if (os_log_type_enabled(qword_10039CD90, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "top level tree verification failed", buf, 2u);
  }

  return [*(a1 + 32) setInclusionResult:v21 signedLogHead:*(a1 + 40) error:a2];
}

void sub_10022AF2C(id a1)
{
  qword_10039CD90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022AF70(id a1)
{
  qword_10039CD90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022AFB4(id a1)
{
  qword_10039CD90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022B3E0(id a1)
{
  qword_10039CDA0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022BA40(id a1)
{
  qword_10039CDB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022BA84(id a1)
{
  qword_10039CDB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022BE44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v17 = 0;
  v3 = [v2 createManagedObjectWithError:&v17];
  v4 = v17;
  [v3 getUnsigned:"signatureVerified"];
  [v3 setUnsigned:"signatureVerified" value:*(a1 + 40)];
  [v3 setGossip:{objc_msgSend(*(a1 + 32), "gossip")}];
  if (!*(a1 + 40))
  {
    v5 = [*(a1 + 32) dataStore];
    v6 = [v5 createSignedTreeHeadFailure];

    v7 = *(a1 + 48);
    if (v7 && *v7)
    {
      v8 = [*v7 code];
    }

    else
    {
      v8 = -120;
    }

    [v6 setErrorCode:v8];
    v9 = *(a1 + 48);
    if (v9 && *v9)
    {
      v10 = [*v9 domain];
      [v6 setErrorDomain:v10];
    }

    else
    {
      [v6 setErrorDomain:kTransparencyErrorUnknown];
    }

    [v6 setSth:v3];
    [v6 setVerificationType:0];
  }

  v11 = [*(a1 + 32) dataStore];
  v16 = v4;
  v12 = [v11 persistWithError:&v16];
  v13 = v16;

  if ((v12 & 1) == 0)
  {
    if (qword_10039CDA8 != -1)
    {
      sub_10025F7B4();
    }

    v14 = qword_10039CDB0;
    if (os_log_type_enabled(qword_10039CDB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to save signature result for STH: %@", buf, 0xCu);
    }

    v15 = [*(a1 + 32) dataStore];
    [v15 reportCoreDataPersistEventForLocation:@"verifySTHSignature" underlyingError:v13];
  }
}

void sub_10022C07C(id a1)
{
  qword_10039CDB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_10022C1F4(uint64_t a1, uint64_t *a2)
{
  v4 = [*(a1 + 32) logHead];
  v5 = [(TransparencyGPBMessage *)LogHead parseFromData:v4 error:a2];

  if (![*(a1 + 32) hasSignature] || (objc_msgSend(*(a1 + 32), "signature"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v37 = -27;
    goto LABEL_24;
  }

  v7 = [*(a1 + 32) logHead];
  if (!v7 || (v8 = v7, [*(a1 + 32) logHead], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, !v10))
  {
    v37 = -26;
    goto LABEL_24;
  }

  if (!v5)
  {
    v37 = -208;
    goto LABEL_24;
  }

  v11 = [*(a1 + 32) signature];
  v12 = [v11 signature];
  if (!v12)
  {
    v37 = -46;
LABEL_36:

    goto LABEL_24;
  }

  v13 = v12;
  v14 = [*(a1 + 32) signature];
  v15 = [v14 signature];
  v16 = [v15 length];

  if (!v16)
  {
    v37 = -46;
    goto LABEL_24;
  }

  v11 = [*(a1 + 32) signature];
  v17 = [v11 signingKeySpkihash];
  if (!v17)
  {
    v37 = -47;
    goto LABEL_36;
  }

  v18 = v17;
  v19 = [*(a1 + 32) signature];
  v20 = [v19 signingKeySpkihash];
  v21 = [v20 length];

  if (v21)
  {
    v42 = [*(a1 + 32) verifier];
    v22 = [*(a1 + 32) logHead];
    v43 = [*(a1 + 32) signature];
    v23 = [v43 signature];
    v24 = [*(a1 + 32) signature];
    v25 = [v24 signingKeySpkihash];
    v26 = [*(a1 + 32) signature];
    v44 = 0;
    v27 = [v42 verifyMessage:v22 signature:v23 spkiHash:v25 algorithm:+[TransparencySignatureVerifier secKeyAlgorithmForProtoAlgorithm:](TransparencySignatureVerifier error:{"secKeyAlgorithmForProtoAlgorithm:", objc_msgSend(v26, "algorithm")), &v44}];
    v28 = v44;

    v29 = v27;
    v30 = [TransparencyError hasUnknownSPKIHashError:v28];
    if (v30)
    {
      v29 = 2;
    }

    if (a2 && v28)
    {
      v31 = v28;
      *a2 = v28;
    }

    if (![*(a1 + 32) gossip] || v29)
    {
      [*(a1 + 32) storeSignatureResult:v29 signatureError:a2];
      if (((v30 ^ 1) & v27 & 1) == 0)
      {
        if (a2)
        {
          *a2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-139 underlyingError:*a2 description:?];
        }

        if (qword_10039CDA8 != -1)
        {
          sub_10025F7DC();
        }

        v40 = qword_10039CDB0;
        if (os_log_type_enabled(qword_10039CDB0, OS_LOG_TYPE_ERROR))
        {
          if (a2)
          {
            v41 = *a2;
          }

          else
          {
            v41 = 0;
          }

          *buf = 138412290;
          v46 = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Signed log head signature verification failed: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (qword_10039CDA8 != -1)
      {
        sub_10025F804();
      }

      v32 = qword_10039CDB0;
      if (os_log_type_enabled(qword_10039CDB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "gossiped signed log head failed signature validation, will not store result", buf, 2u);
      }

      v33 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-139 underlyingError:*a2 description:?];
      v34 = [TransparencyAnalytics formatEventName:@"GossipSignatureVerificationFailed" application:kKTApplicationIdentifierTLT];
      v35 = +[TransparencyAnalytics logger];
      [v35 logResultForEvent:v34 hardFailure:1 result:v33];

      v36 = v33;
      *a2 = v33;
    }

    goto LABEL_31;
  }

  v37 = -47;
LABEL_24:
  if (a2)
  {
    *a2 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v37 underlyingError:*a2 description:@"SLH missing data required for verification"];
  }

  if (qword_10039CDA8 != -1)
  {
    sub_10025F82C();
  }

  v38 = qword_10039CDB0;
  if (os_log_type_enabled(qword_10039CDB0, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v46 = v37;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "SLH missing data required for verification: %ld", buf, 0xCu);
  }

  v29 = 0;
LABEL_31:

  return v29;
}

void sub_10022C76C(id a1)
{
  qword_10039CDB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022C7B0(id a1)
{
  qword_10039CDB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022C7F4(id a1)
{
  qword_10039CDB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022D268(id a1)
{
  qword_10039CDC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022D2AC(id a1)
{
  qword_10039CDC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_10022D424(uint64_t a1, uint64_t *a2)
{
  v4 = [*(a1 + 32) mapHead];
  v5 = [(TransparencyGPBMessage *)MapHead parseFromData:v4 error:a2];

  if (![*(a1 + 32) hasSignature] || (objc_msgSend(*(a1 + 32), "signature"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v41 = -22;
    goto LABEL_36;
  }

  v7 = [*(a1 + 32) mapHead];
  if (!v7 || (v8 = v7, [*(a1 + 32) mapHead], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, !v10))
  {
    v41 = -21;
    goto LABEL_36;
  }

  v11 = [*(a1 + 32) signature];
  v12 = [v11 signature];
  if (!v12)
  {
    v41 = -51;
LABEL_35:

    goto LABEL_36;
  }

  v13 = v12;
  v14 = [*(a1 + 32) signature];
  v15 = [v14 signature];
  v16 = [v15 length];

  if (!v16)
  {
    v41 = -51;
    goto LABEL_36;
  }

  v11 = [*(a1 + 32) signature];
  v17 = [v11 signingKeySpkihash];
  if (!v17)
  {
    v41 = -52;
    goto LABEL_35;
  }

  v18 = v17;
  v19 = [*(a1 + 32) signature];
  v20 = [v19 signingKeySpkihash];
  v21 = [v20 length];

  if (v21)
  {
    if (v5)
    {
      v22 = [v5 mapHeadHash];
      if (v22 && (v23 = v22, [v5 mapHeadHash], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "length"), v24, v23, v25))
      {
        if ([v5 application] && objc_msgSend(v5, "application"))
        {
          if ([v5 hasChangeLogHead] && (objc_msgSend(v5, "changeLogHead"), v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
          {
            if ([v5 timestampMs])
            {
              v27 = [*(a1 + 32) verifier];
              v28 = [*(a1 + 32) mapHead];
              v44 = [*(a1 + 32) signature];
              v29 = [v44 signature];
              v30 = [*(a1 + 32) signature];
              v31 = [v30 signingKeySpkihash];
              v32 = [*(a1 + 32) signature];
              v45 = 0;
              v33 = v28;
              v34 = [v27 verifyMessage:v28 signature:v29 spkiHash:v31 algorithm:+[TransparencySignatureVerifier secKeyAlgorithmForProtoAlgorithm:](TransparencySignatureVerifier error:{"secKeyAlgorithmForProtoAlgorithm:", objc_msgSend(v32, "algorithm")), &v45}];
              v35 = v45;

              v36 = v34;
              v37 = [TransparencyError hasUnknownSPKIHashError:v35];
              if (v37)
              {
                v36 = 2;
              }

              if (a2 && v35)
              {
                v38 = v35;
                *a2 = v35;
              }

              if (((v37 ^ 1) & v34 & 1) == 0)
              {
                if (a2)
                {
                  *a2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-138 underlyingError:*a2 description:?];
                }

                if (qword_10039CDB8 != -1)
                {
                  sub_10025F87C();
                }

                v39 = qword_10039CDC0;
                if (os_log_type_enabled(qword_10039CDC0, OS_LOG_TYPE_ERROR))
                {
                  if (a2)
                  {
                    v40 = *a2;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  *buf = 138412290;
                  v47 = v40;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "SMH signature verification failed: %@", buf, 0xCu);
                }
              }

              goto LABEL_43;
            }

            v41 = -227;
          }

          else
          {
            v41 = -25;
          }
        }

        else
        {
          v41 = -24;
        }
      }

      else
      {
        v41 = -23;
      }
    }

    else
    {
      v41 = -207;
    }
  }

  else
  {
    v41 = -52;
  }

LABEL_36:
  if (a2)
  {
    *a2 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v41 underlyingError:*a2 description:@"SMH missing data required for verification"];
  }

  if (qword_10039CDB8 != -1)
  {
    sub_10025F8A4();
  }

  v42 = qword_10039CDC0;
  if (os_log_type_enabled(qword_10039CDC0, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v47 = v41;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "SMH missing data required for verification: %ld", buf, 0xCu);
  }

  v36 = 0;
LABEL_43:

  return v36;
}

void sub_10022D930(id a1)
{
  qword_10039CDC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022D974(id a1)
{
  qword_10039CDC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022DA74(uint64_t a1)
{
  v2 = [*(a1 + 32) copyManagedObject:0];
  if (v2)
  {
    v3 = [*(a1 + 32) dataStore];
    [v3 onMocSetMapHead:v2 mmdResult:*(a1 + 48) mmdError:*(a1 + 40)];

    v4 = [*(a1 + 32) dataStore];
    v9 = 0;
    v5 = [v4 persistWithError:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      if (qword_10039CDB8 != -1)
      {
        sub_10025F8B8();
      }

      v7 = qword_10039CDC0;
      if (os_log_type_enabled(qword_10039CDC0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to save inclusion state for map head: %@", buf, 0xCu);
      }

      v8 = [*(a1 + 32) dataStore];
      [v8 reportCoreDataPersistEventForLocation:@"mapHeadMMDState" underlyingError:v6];
    }
  }
}

void sub_10022DBD0(id a1)
{
  qword_10039CDC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_10022DDA8(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) mapHead];
  v5 = [(TransparencyGPBMessage *)MapHead parseFromData:v4 error:a2];

  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(a1 + 40)];
  [v6 timeIntervalSince1970];
  v8 = (v7 * 1000.0);

  v9 = [v5 timestampMs];
  if (v9 + kKTMaximumMergeDelayMs >= v8)
  {
    if (qword_10039CDB8 != -1)
    {
      sub_10025F8E0();
    }

    v15 = qword_10039CDC0;
    if (os_log_type_enabled(qword_10039CDC0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "SMH MMD verified", buf, 2u);
    }

    v16 = *(a1 + 32);
    v14 = 1;
    [v16 setMMDVerifiedForMapHead:1 mmdError:0];
  }

  else
  {
    if (qword_10039CDB8 != -1)
    {
      sub_10025F8F4();
    }

    v10 = qword_10039CDC0;
    if (os_log_type_enabled(qword_10039CDC0, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 134217984;
      v19 = [v5 timestampMs];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "SMH timestamp exceeds MMD: %lld", buf, 0xCu);
    }

    v12 = +[TransparencyError errorWithDomain:code:underlyingError:description:](TransparencyError, "errorWithDomain:code:underlyingError:description:", @"TransparencyErrorVerify", -228, *a2, @"SMH timestamp exceeds MMD: %lld", [v5 timestampMs]);
    [*(a1 + 32) setMMDVerifiedForMapHead:0 mmdError:v12];
    if (v12)
    {
      v13 = v12;
      *a2 = v12;
    }

    v14 = 0;
  }

  return v14;
}

void sub_10022DFEC(id a1)
{
  qword_10039CDC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022E030(id a1)
{
  qword_10039CDC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022E2A4(id a1)
{
  qword_10039CDD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022E458(id a1)
{
  qword_10039CDD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022E79C(id a1)
{
  qword_10039CDD0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022EF80(id a1)
{
  qword_10039CDE0 = objc_alloc_init(TransparencyIDSConfigBag);

  _objc_release_x1();
}

void sub_10022F298(id a1)
{
  qword_10039CDF0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022F4A4(id a1)
{
  qword_10039CDF0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022F6B0(id a1)
{
  qword_10039CDF0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022F8BC(id a1)
{
  qword_10039CDF0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022FAC8(id a1)
{
  qword_10039CDF0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10022FFD0(id a1)
{
  qword_10039CE00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002302EC(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023075C(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002307A0(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002307E4(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100230828(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100230B4C(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100230B90(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100230C74(id a1)
{
  qword_10039CE18 = objc_alloc_init(TransparencyAccount);

  _objc_release_x1();
}

void sub_100230E28(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_100230E6C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) messagesStatus];
  v4 = v3 != 0;

  v5 = [NSNumber numberWithBool:v4];
  [v2 setObject:v5 forKeyedSubscript:@"ktAccountIDS"];

  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) idsAccountType]);
  [v2 setObject:v6 forKeyedSubscript:@"ktPhoneOnly"];

  v7 = [*(a1 + 32) messagesStatus];

  if (v7)
  {
    v8 = [*(a1 + 32) messagesStatus];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 status]);
    [v2 setObject:v9 forKeyedSubscript:@"idsAppleIDState"];
  }

  v10 = [*(a1 + 32) phoneStatus];

  if (v10)
  {
    v11 = [*(a1 + 32) phoneStatus];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 status]);
    [v2 setObject:v12 forKeyedSubscript:@"idsPhoneState"];
  }

  v13 = [TransparencyAccount primaryAccount:0];
  if (qword_10039CE08 != -1)
  {
    sub_10025FB74();
  }

  v14 = qword_10039CE10;
  if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_INFO))
  {
    v15 = @"yes";
    if (!v13)
    {
      v15 = @"no";
    }

    v29 = 138543362;
    v30 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "TransparencyAccount Primary account found %{public}@", &v29, 0xCu);
  }

  v16 = [NSNumber numberWithInt:v13 != 0];
  [v2 setObject:v16 forKeyedSubscript:@"ktiCloudAccount"];

  if (v13)
  {
    v17 = [TransparencyAccount accountLevel:v13];
    v18 = [v13 aa_personID];
    v19 = [NSNumber numberWithBool:[CDPAccount isICDPEnabledForDSID:v18]];
    [v2 setObject:v19 forKeyedSubscript:@"CDPEnabled"];

    v20 = [NSNumber numberWithBool:v17 == 4];
    [v2 setObject:v20 forKeyedSubscript:@"ktAccountIsHSA2"];

    if (v17 == 4)
    {
      v21 = [TransparencyAccount cloudKitAccount:v13];
      if (v18)
      {
        v22 = [*(a1 + 32) haveIDSAccount:v18];
      }

      else
      {
        v22 = 0;
      }

      v25 = [NSNumber numberWithBool:v21 != 0];
      [v2 setObject:v25 forKeyedSubscript:@"ktAccountCloudKit"];

      v26 = [NSNumber numberWithBool:v22];
      [v2 setObject:v26 forKeyedSubscript:@"ktAccountCKIDSame"];

      v27 = v2;
    }

    else
    {
      v24 = v2;
    }
  }

  else
  {
    v23 = v2;
  }

  return v2;
}

void sub_100231258(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002318A0(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002318E4(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100231928(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023196C(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002319B0(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002319F4(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100232038(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023207C(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002320C0(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100232104(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100232148(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023238C(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002323D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  switch(a2)
  {
    case 2:
      if (qword_10039CE08 != -1)
      {
        sub_10025FD18();
      }

      v10 = qword_10039CE10;
      if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Primary account credentials renewal request failed: %@", &v12, 0xCu);
      }

      v8 = kTransparencyErrorAccount;
      v9 = -176;
      goto LABEL_19;
    case 1:
      if (qword_10039CE08 != -1)
      {
        sub_10025FD2C();
      }

      v7 = qword_10039CE10;
      if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Primary account credentials renewal request rejected: %@", &v12, 0xCu);
      }

      v8 = kTransparencyErrorAccount;
      v9 = -175;
LABEL_19:
      v11 = [TransparencyError errorWithDomain:v8 code:v9 underlyingError:v5 description:@"Account credential renewal failed"];
      (*(*(a1 + 32) + 16))();

      break;
    case 0:
      if (qword_10039CE08 != -1)
      {
        sub_10025FD40();
      }

      v6 = qword_10039CE10;
      if (os_log_type_enabled(qword_10039CE10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Primary account credentials successfully renewed", &v12, 2u);
      }

      (*(*(a1 + 32) + 16))();
      break;
  }
}

void sub_1002325F4(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100232638(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023267C(id a1)
{
  qword_10039CE10 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100232BAC(id a1)
{
  qword_10039CE30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100232BF0(id a1)
{
  qword_10039CE30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100233298(id a1)
{
  qword_10039CE30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002332DC(id a1)
{
  qword_10039CE30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100233320(id a1)
{
  qword_10039CE30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100233364(id a1)
{
  qword_10039CE30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002333A8(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [TransparencyAnalytics formatEventName:@"OptInServerSet" application:*(a1 + 32)];
  if (qword_10039CE28 != -1)
  {
    sub_10025FE08();
  }

  v8 = qword_10039CE30;
  if (os_log_type_enabled(qword_10039CE30, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 67109378;
    LODWORD(v21[0]) = a2;
    WORD2(v21[0]) = 2112;
    *(v21 + 6) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "getKeyTransparencyOptInEligiblityForApplication: %d error: %@", &v20, 0x12u);
  }

  if (v6 || (a2 & 1) == 0)
  {
    if (qword_10039CE28 != -1)
    {
      sub_10025FE1C();
    }

    v11 = qword_10039CE30;
    if (os_log_type_enabled(qword_10039CE30, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21[0] = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "IDS reports that this account is ineligible to opt-in to KT: %@", &v20, 0xCu);
    }

    v12 = [TransparencyError errorWithDomain:kTransparencyErrorAccount code:-290 underlyingError:v6 description:@"IDS reports that this account is ineligible to opt-in to KT"];

    [*(a1 + 40) setError:v12];
    [*(a1 + 48) setError:v12];
    v13 = [*(a1 + 48) optInStates];
    [v13 completedCurrentTarget];

    v14 = [*(a1 + 48) errorState];
    [*(a1 + 48) setNextState:v14];

    v15 = [*(a1 + 48) operationQueue];
    v16 = [*(a1 + 48) finishedOp];
    [v15 addOperation:v16];

    v17 = +[TransparencyAnalytics logger];
    v18 = [*(a1 + 48) error];
    [v17 logResultForEvent:v7 hardFailure:0 result:v18];
  }

  else
  {
    if ([*(a1 + 40) targetState] == 2)
    {
      if (qword_10039CE28 != -1)
      {
        sub_10025FE6C();
      }

      v9 = qword_10039CE30;
      if (os_log_type_enabled(qword_10039CE30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "going for reset before opting in", &v20, 2u);
      }

      v10 = off_10032D0F8;
    }

    else
    {
      if (qword_10039CE28 != -1)
      {
        sub_10025FE44();
      }

      v19 = qword_10039CE30;
      if (os_log_type_enabled(qword_10039CE30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "going for opt-in", &v20, 2u);
      }

      v10 = off_10032D108;
    }

    [*(a1 + 48) setNextState:*v10];
    v12 = [*(a1 + 48) operationQueue];
    v17 = [*(a1 + 48) finishedOp];
    [v12 addOperation:v17];
  }
}

void sub_100233710(id a1)
{
  qword_10039CE30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100233754(id a1)
{
  qword_10039CE30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100233798(id a1)
{
  qword_10039CE30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002337DC(id a1)
{
  qword_10039CE30 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002339B8(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_10039CE40 = v2 == 1;
  }
}

void sub_100233B30(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 validBAAKey])
  {
    if (qword_10039CE48 != -1)
    {
      sub_10025FEE4();
    }

    v4 = qword_10039CE50;
    if (os_log_type_enabled(qword_10039CE50, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Successfully fetched BAA cert", &v18, 2u);
    }

    v5 = *(a1 + 32);
    objc_sync_enter(v5);
    [*(a1 + 32) setBaaKey:v3];
    v6 = +[NSDate date];
    [*(a1 + 32) setLastLocalFetchTime:v6];

    objc_sync_exit(v5);
  }

  else
  {
    if (qword_10039CE48 != -1)
    {
      sub_10025FEA8();
    }

    v7 = qword_10039CE50;
    if (os_log_type_enabled(qword_10039CE50, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v3 error];
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get BAA cert: %@", &v18, 0xCu);
    }

    v10 = [v3 error];
    HasDomainAndErrorCode = mobileactivationErrorHasDomainAndErrorCode();

    if (HasDomainAndErrorCode)
    {
      if (qword_10039CE48 != -1)
      {
        sub_10025FEBC();
      }

      v12 = qword_10039CE50;
      if (os_log_type_enabled(qword_10039CE50, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "device identity authentication unsupported; will use account auth", &v18, 2u);
      }

      [*(a1 + 32) setIsSupported:0];
    }
  }

  if ([*(a1 + 32) isSupported])
  {
    if (os_variant_allows_internal_security_policies())
    {
      v13 = [v3 error];
      v14 = [v13 userInfo];
    }

    else
    {
      v14 = 0;
    }

    v15 = [*(a1 + 32) analytics];
    v16 = [v3 error];
    [v15 logResultForEvent:@"TransparencyAuthentication" hardFailure:1 result:v16 withAttributes:v14];
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }
}

void sub_100233E14(id a1)
{
  qword_10039CE50 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100233E58(id a1)
{
  qword_10039CE50 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100233E9C(id a1)
{
  qword_10039CE50 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100234254(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (mobileactivationErrorHasDomainAndErrorCode())
    {
      [*(a1 + 32) setIsSupported:0];
      if (qword_10039CE48 != -1)
      {
        sub_10025FF20();
      }

      v10 = qword_10039CE50;
      if (os_log_type_enabled(qword_10039CE50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "host key unsupported; will use account auth", buf, 2u);
      }
    }

    if (qword_10039CE48 != -1)
    {
      sub_10025FF34();
    }

    v11 = qword_10039CE50;
    if (os_log_type_enabled(qword_10039CE50, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to create signature with host key: %@", buf, 0xCu);
    }

    v12 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-402 underlyingError:v9 description:@"failed to create signature with host key: %@", v9];
  }

  else
  {
    v12 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100234428(id a1)
{
  qword_10039CE50 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023446C(id a1)
{
  qword_10039CE50 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002344B0(id a1)
{
  qword_10039CE50 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023468C(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 validBAAKey])
  {
    [*(a1 + 32) signData:*(a1 + 40) key:v5 completionHandler:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = [v5 error];

    (*(v3 + 16))(v3, 0, 0, v4);
    v5 = v4;
  }
}

void sub_100234AB0(id a1)
{
  qword_10039CE60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100234D34(id a1)
{
  qword_10039CE60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100234D78(id a1)
{
  qword_10039CE60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100234DBC(id a1)
{
  qword_10039CE60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023510C(id a1)
{
  qword_10039CE60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100235348(id a1)
{
  qword_10039CE60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023538C(id a1)
{
  qword_10039CE60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100235870(id a1)
{
  qword_10039CE70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002358B4(id a1)
{
  qword_10039CE70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100235AF8(id a1)
{
  qword_10039CE70 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100236420(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10023643C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained finishingBlock];
    v4[2]();

    (*(*(a1 + 32) + 16))();
    v5 = [v3 completionHandlerDidRunCondition];
    [v5 fulfill];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v3 dependencies];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v3 removeDependency:*(*(&v11 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "completion handler called on deallocated operation instance", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100236A7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained timeoutCanOccur])
  {
    v1 = [WeakRetained _onqueueTimeoutError];
    [WeakRetained setError:v1];

    [WeakRetained setTimeoutCanOccur:0];
    [WeakRetained cancel];
  }
}

void sub_10023715C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10023717C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_100237650(id a1)
{
  qword_10039CE80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002377E8(id a1)
{
  qword_10039CE80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100237AC4(id a1)
{
  qword_10039CE80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100237B08(id a1)
{
  qword_10039CE80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100237B4C(id a1)
{
  qword_10039CE80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100237CAC(id a1)
{
  qword_10039CE80 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100238054(id a1)
{
  qword_10039CE90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100238098(id a1)
{
  qword_10039CE90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002381CC(id a1)
{
  qword_10039CE90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_1002384C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) fetch:*(a1 + 40) shouldRetry:0 allowEmptyData:*(a1 + 56) useReversePush:*(a1 + 57) completionHandler:*(a1 + 48)];
  }
}

void sub_1002384F8(id a1)
{
  qword_10039CE90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100238650(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v35 = @"sessionAuthIsSupported";
  v10 = [*(a1 + 32) session];
  v11 = [v10 auth];
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isSupported]);
  v36 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v14 = [v13 mutableCopy];

  v15 = [v8 objectForKeyedSubscript:@"x-auth-status"];

  if (v15)
  {
    v16 = [v8 objectForKeyedSubscript:@"x-auth-status"];
    [v14 setObject:v16 forKeyedSubscript:@"transparencyResponseAuthStatus"];
  }

  v17 = [*(a1 + 32) transparencyAnalytics];
  [v17 logResultForEvent:@"TransparencyAuthentication" hardFailure:0 result:v9 withAttributes:v14];

  if ([*(a1 + 32) needsRetry:v9] && (*(a1 + 56) & 1) != 0)
  {
    v18 = [*(a1 + 32) session];
    v19 = [v18 auth];
    v20 = [v19 isSupported];

    if (v20)
    {
      v21 = [[TransparencyNetworkRequest alloc] initWithRequest:*(a1 + 40)];
      [(TransparencyNetworkRequest *)v21 setAuthenticated:1];
      v22 = [*(a1 + 32) needsReauthorization:v9 metadata:v8];
      v23 = 0.0;
      if ([*(a1 + 32) needsTimeShift:v9 metadata:v8])
      {
        [TransparencyLogClient timeShift:v8];
        v23 = v24;
      }

      v25 = [*(a1 + 32) session];
      v26 = [v25 auth];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1002389A0;
      v29[3] = &unk_10032C6C0;
      v33 = *(a1 + 48);
      v30 = v7;
      v27 = v8;
      v28 = *(a1 + 32);
      v31 = v27;
      v32 = v28;
      v34 = *(a1 + 57);
      [(TransparencyNetworkRequest *)v21 createRequestForAuthentication:v26 fetchAuthNow:v22 timeShift:v29 completionHandler:v23];
    }

    else
    {
      [*(a1 + 32) renewAccountTokenForFetch:*(a1 + 40) allowEmptyData:*(a1 + 57) useReversePush:*(a1 + 58) completionHandler:*(a1 + 48)];
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1002389A0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (!v9 || v5)
  {
    if (!v5)
    {
      v6 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-191 description:@"TransparencyRequest failed to produce URLRequest"];
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 48) fetch:v9 shouldRetry:0 allowEmptyData:*(a1 + 64) useReversePush:*(a1 + 65) completionHandler:*(a1 + 56)];
  }
}

void sub_100238B84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v7 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-191 description:@"TransparencyRequest failed to produce URLRequest"];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) allowEmptyData];
    v10 = [*(a1 + 40) useReversePush];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100238CC4;
    v11[3] = &unk_10032C710;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v8 fetch:v5 allowEmptyData:v9 useReversePush:v10 completionHandler:v11];

    v7 = v12;
  }
}

void sub_100238CC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [[TransparencyResponse alloc] initWithRequest:*(a1 + 32) responseData:v9 metadata:v8];

  (*(*(a1 + 40) + 16))();
}

void sub_100238EF0(id a1)
{
  qword_10039CE90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100238F34(id a1)
{
  qword_10039CE90 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_1002392C0(uint64_t a1)
{
  [*(a1 + 32) setInitialDelay:*(a1 + 40)];
  [*(a1 + 32) setCurrentDelay:{objc_msgSend(*(a1 + 32), "initialDelay")}];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48) / v2;
  }

  else
  {
    v3 = 1.0;
  }

  [*(a1 + 32) setBackoff:v3];
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);

  return [v5 setMaximumDelay:v4];
}

void sub_10023963C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLiveRequest:1];
  v2 = [WeakRetained liveRequestReceived];
  [v2 fulfill];

  if (*(a1 + 40) == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  [WeakRetained _onqueueTrigger:v3 maximumDelay:?];
}

void sub_1002399CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLiveRequest:1];
  v1 = [WeakRetained liveRequestReceived];
  [v1 fulfill];

  [WeakRetained _onqueueTrigger:0 maximumDelay:-1];
}

void sub_100239E20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueueTimerTick];
}

void sub_100239EE8(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) timer];
    v5 = dispatch_source_testcancel(v4);

    if (!v5)
    {
      v6 = [*(a1 + 32) timer];
      dispatch_source_cancel(v6);
    }
  }
}

void sub_10023AA4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10023AA68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [WeakRetained dependencies];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [WeakRetained removeDependency:*(*(&v7 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10023AECC(id a1)
{
  if ([TransparencySettings getBool:kTransparencyFlagDisablePinning])
  {
    byte_10039CE98 = 1;
  }
}

void sub_10023B650(id a1)
{
  qword_10039CEB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023B694(id a1)
{
  qword_10039CEB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023B6D8(id a1)
{
  qword_10039CEB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023B9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10023BA00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10023BA18(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [TransparencyLogSession createErrorFromURLResonse:v8 data:v7 allowEmptyData:*(a1 + 56) error:a4];
  v10 = [*(a1 + 32) callbackWorkloop];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10023BB64;
  v17[3] = &unk_10032C898;
  v18 = v9;
  v11 = *(a1 + 40);
  v20 = v8;
  v21 = v11;
  v19 = v7;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  [TransparencyLogSession dispatchToQueue:v10 block:v17];

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;
}

void sub_10023BB64(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v4 = [*(a1 + 48) metadata];
  (*(v2 + 16))(v2, v3, v4, *(a1 + 32));
}

void sub_10023BBEC(id a1)
{
  qword_10039CEB0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023BD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10023BD94(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_10023C0D4(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023C330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 application];
  v5 = [TransparencyAnalytics formatEventName:@"NetworkDownloadEvent" application:v4];

  v6 = [v3 application];
  v7 = [TransparencyAnalytics formatEventName:@"NetworkDownloadSize" application:v6];

  [v3 setResponse:*(a1 + 32)];
  v8 = [*(a1 + 40) objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  [v3 setServerHint:v8];

  v9 = [v3 downloadType];
  if ((v9 - 1) < 2)
  {
    v10 = [*(a1 + 48) contextStore];
    v11 = *(a1 + 56);
    v12 = [v3 application];
    v13 = [*(a1 + 48) logClient];
    [v10 verifyHeadInclusionDownload:v11 application:v12 logClient:v13];
    goto LABEL_5;
  }

  if (v9 == 3)
  {
    v10 = [*(a1 + 48) contextStore];
    v14 = *(a1 + 56);
    v12 = [v3 application];
    v13 = [*(a1 + 48) logClient];
    [v10 verifyHeadConsistencyDownload:v14 application:v12 logClient:v13];
LABEL_5:

    v15 = +[TransparencyAnalytics logger];
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) length]);
    [v15 logMetric:v16 withName:v7];

    v17 = +[TransparencyAnalytics logger];
    [v17 logSuccessForEventNamed:v5];

    v18 = [*(a1 + 48) dataStore];
    v27 = 0;
    v19 = [v18 persistWithError:&v27];
    v20 = v27;

    if ((v19 & 1) == 0)
    {
      v21 = [*(a1 + 48) dataStore];
      [v21 reportCoreDataPersistEventForLocation:@"handleDownloadRecord" underlyingError:v20];

      if (qword_10039CEB8 != -1)
      {
        sub_10026027C();
      }

      v22 = qword_10039CEC0;
      if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to store results after successful download: %@", buf, 0xCu);
      }
    }

    goto LABEL_15;
  }

  if (qword_10039CEB8 != -1)
  {
    sub_1002602A4();
  }

  v23 = qword_10039CEC0;
  if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_ERROR))
  {
    v24 = v23;
    *buf = 134217984;
    v29 = [v3 downloadType];
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "record has unsupported downloadType: %lld", buf, 0xCu);
  }

  v25 = [*(a1 + 48) dataStore];
  [v25 deleteDownloadRecordById:*(a1 + 56) error:0];

  v20 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorDatabase, -212, @"record has unsupported downloadType: %lld", [v3 downloadType]);
  v26 = +[TransparencyAnalytics logger];
  [v26 logResultForEvent:v5 hardFailure:1 result:v20];

LABEL_15:
}

void sub_10023C73C(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023C780(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023C7C4(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023CAD4(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023CB18(uint64_t a1)
{
  if ([*(a1 + 32) successful])
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);
    v4 = *(a1 + 40);
    v9 = [*(a1 + 32) metadata];
    [v4 handleDownloadRecord:v2 downloadData:v3 downloadMetadata:?];
  }

  else
  {
    v9 = [TransparencyLogSession createErrorFromURLResonse:*(a1 + 32) data:0 allowEmptyData:1 error:0];
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 64);
    v8 = [*(a1 + 32) metadata];
    [v6 handleDownloadRecordFailure:v5 task:v7 downloadMetadata:v8 error:v9];
  }
}

void sub_10023CBEC(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023CED8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[TransparencyAnalytics logger];
  v5 = [v3 application];
  v6 = [TransparencyAnalytics formatEventName:@"NetworkDownloadEvent" application:v5];
  [v4 logResultForEvent:v6 hardFailure:0 result:*(a1 + 32)];

  if (qword_10039CEB8 != -1)
  {
    sub_100260344();
  }

  v7 = qword_10039CEC0;
  if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 32);
    *buf = 138412802;
    v32 = v9;
    v33 = 2114;
    v34 = v8;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "download task %@ for downloadId %{public}@ failed: %@", buf, 0x20u);
  }

  v11 = [*(a1 + 56) objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  [v3 setServerHint:v11];

  if ([v3 downloadType] - 1 > 2)
  {
    if (qword_10039CEB8 != -1)
    {
      sub_100260358();
    }

    v17 = qword_10039CEC0;
    if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      v19 = [v3 downloadType];
      *buf = 134217984;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "record has unsupported downloadType: %lld", buf, 0xCu);
    }

    v20 = [*(a1 + 64) dataStore];
    v21 = *(a1 + 48);
    v30 = 0;
    [v20 deleteDownloadRecordById:v21 error:&v30];
    v12 = v30;

    if (v12)
    {
      if (qword_10039CEB8 != -1)
      {
        sub_100260380();
      }

      v22 = qword_10039CEC0;
      if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 48);
        *buf = 138543618;
        v32 = v23;
        v33 = 2112;
        v34 = v12;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed deleting download record for downloadId %{public}@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = [*(a1 + 64) contextStore];
    v13 = *(a1 + 48);
    v14 = [v3 application];
    v15 = *(a1 + 32);
    v16 = [*(a1 + 64) logClient];
    [v12 failHeadDownload:v13 application:v14 failure:v15 retry:1 logClient:v16];
  }

  v24 = [*(a1 + 64) dataStore];
  v29 = 0;
  v25 = [v24 persistWithError:&v29];
  v26 = v29;

  if ((v25 & 1) == 0)
  {
    v27 = [*(a1 + 64) dataStore];
    [v27 reportCoreDataPersistEventForLocation:@"handleDownloadRecordFailure" underlyingError:v26];

    if (qword_10039CEB8 != -1)
    {
      sub_1002603A8();
    }

    v28 = qword_10039CEC0;
    if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "failed to store results after failed download: %@", buf, 0xCu);
    }
  }
}

void sub_10023D2AC(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023D2F0(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023D334(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023D378(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023D3BC(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023D400(id a1)
{
  qword_10039CEC0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023D5D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) metadata];
  [v2 handleDownloadRecordFailure:v3 task:v4 downloadMetadata:v5 error:*(a1 + 64)];
}

void sub_10023DCE8(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023E088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10023E0B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10023E0C8(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v25;
    *&v4 = 138412290;
    v21 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v10 = [v8 name];
        LOBYTE(v9) = [v9 containsObject:v10];

        if ((v9 & 1) == 0)
        {
          v11 = objc_alloc_init(NSFetchRequest);
          [v11 setEntity:v8];
          v12 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v11];
          [v12 setResultType:1];
          v13 = [*(a1 + 48) context];
          v14 = *(*(a1 + 56) + 8);
          obj = *(v14 + 40);
          v15 = [v13 executeRequest:v12 error:&obj];
          objc_storeStrong((v14 + 40), obj);

          if (!v15)
          {
            if (qword_10039CEC8 != -1)
            {
              sub_1002603F8();
            }

            v16 = qword_10039CED0;
            if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_ERROR))
            {
              v17 = *(*(*(a1 + 56) + 8) + 40);
              *buf = v21;
              v29 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "clearState deleted nothing: %@", buf, 0xCu);
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v5);
  }

  v18 = *(a1 + 48);
  v19 = *(*(a1 + 56) + 8);
  v22 = *(v19 + 40);
  v20 = [v18 persistWithError:&v22];
  objc_storeStrong((v19 + 40), v22);
  if (v20)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

void sub_10023E334(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023E588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10023E5A8(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:*(a1 + 32)];
  [v2 setPredicate:*(a1 + 40)];
  v3 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  [v3 setResultType:1];
  v4 = [*(a1 + 48) context];
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeRequest:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (!v6)
  {
    if (qword_10039CEC8 != -1)
    {
      sub_100260448();
    }

    v7 = qword_10039CED0;
    if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "garbageCollectEntityBatchDelete deleted nothing: %@", buf, 0xCu);
    }
  }

  v9 = *(a1 + 48);
  v10 = *(*(a1 + 56) + 8);
  v17 = *(v10 + 40);
  v11 = [v9 persistWithError:&v17];
  objc_storeStrong((v10 + 40), v17);
  if (v11)
  {
    if (qword_10039CEC8 != -1)
    {
      sub_100260470();
    }

    v12 = qword_10039CED0;
    if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "garbageCollectEntityBatchDelete failed to save: %@", buf, 0xCu);
    }
  }

  v14 = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 56) + 8) + 40)];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

void sub_10023E7DC(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023E820(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023E864(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023EAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10023EB04(uint64_t a1, void *a2)
{
  v3 = a2;
  while (1)
  {
    v4 = [NSFetchRequest fetchRequestWithEntityName:*(a1 + 32)];
    [v4 setPredicate:*(a1 + 40)];
    [v4 setPropertiesToFetch:&__NSArray0__struct];
    [v4 setFetchLimit:20];
    v5 = *(*(a1 + 56) + 8);
    obj = *(v5 + 40);
    v6 = [v3 executeFetchRequest:v4 error:&obj];
    objc_storeStrong((v5 + 40), obj);
    if (!v6)
    {
      break;
    }

    v7 = [v6 count];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v3 deleteObject:*(*(&v20 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v13 = *(a1 + 48);
    v14 = *(*(a1 + 56) + 8);
    v19 = *(v14 + 40);
    v15 = [v13 persistWithError:&v19];
    objc_storeStrong((v14 + 40), v19);
    if (!v15)
    {
      break;
    }

    v16 = [*(a1 + 48) logger];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    v18 = [NSString stringWithFormat:@"kt%@GCCount", *(a1 + 32)];
    [v16 logMetric:v17 withName:v18];

    if (v7 != 20)
    {
      goto LABEL_14;
    }
  }

LABEL_14:
}

void sub_10023ED50(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023EEF0(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023EF34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CachedData fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@", @"TapToRadarDate", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = *(a1 + 40);
  if (!v6)
  {
    v29 = 0;
    v12 = [v3 executeFetchRequest:v4 error:&v29];
    v10 = v29;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v12;
    v13 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v7);
          }

          [v3 deleteObject:*(*(&v25 + 1) + 8 * i)];
        }

        v14 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v14);
    }

    v11 = 0;
    v8 = v7;
LABEL_21:
    v19 = v10;

    v22 = v10;
    v20 = [v3 save:&v22];
    v10 = v22;

    if ((v20 & 1) == 0)
    {
      if (qword_10039CEC8 != -1)
      {
        sub_1002604FC();
      }

      v21 = qword_10039CED0;
      if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "storeTTR: save %@", buf, 0xCu);
      }
    }

    goto LABEL_26;
  }

  v24 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v24];
  v8 = v24;
  if (v7)
  {
    v23 = 0;
    v9 = [v3 executeFetchRequest:v4 error:&v23];
    v10 = v23;
    if ([v9 count])
    {
      v11 = [v9 firstObject];
      if (!v11)
      {

        goto LABEL_26;
      }
    }

    else
    {
      v11 = [NSEntityDescription insertNewObjectForEntityForName:@"CachedData" inManagedObjectContext:v3];
      [v11 setKey:@"TapToRadarDate"];
      [v11 setApplication:*(a1 + 32)];
    }

    [v11 setData:v7];
    v18 = +[NSDate date];
    [v11 setUpdated:v18];

    goto LABEL_21;
  }

  if (qword_10039CEC8 != -1)
  {
    sub_1002604D4();
  }

  v17 = qword_10039CED0;
  if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "storeTTR: archivedDataWithRootObject: %@", buf, 0xCu);
  }

  v10 = 0;
  v11 = 0;
LABEL_26:
}

void sub_10023F2D4(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023F318(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023F4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10023F4DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v16 = 0;
  v4 = [a2 executeFetchRequest:v3 error:&v16];
  v5 = v16;
  v6 = [v4 firstObject];
  v7 = v6;
  if (v6 && ([v6 data], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = objc_opt_class();
    v10 = [v7 data];
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v9 fromData:v10 error:0];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    if (qword_10039CEC8 != -1)
    {
      sub_100260524();
    }

    v14 = qword_10039CED0;
    if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "getTapToRadarDate: no cached data", v15, 2u);
    }
  }
}

void sub_10023F630(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10023F864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10023F888(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 logRequestMetricsForApplication:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1[6] + 8);
  v23 = *(v8 + 40);
  v9 = [v6 logSMTMetricsForApplication:v7 error:&v23];
  objc_storeStrong((v8 + 40), v23);
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = a1[4];
  v11 = a1[5];
  v12 = *(a1[6] + 8);
  v22 = *(v12 + 40);
  v13 = [v10 logSTHMetricsForApplication:v11 error:&v22];
  objc_storeStrong((v12 + 40), v22);
  if (!v13 || (v14 = a1[4], v15 = a1[5], v16 = *(a1[6] + 8), v21 = *(v16 + 40), v17 = [v14 onMocLogVerificationMetricsForApplication:v15 error:&v21], objc_storeStrong((v16 + 40), v21), (v17 & 1) == 0))
  {
LABEL_5:
    *(*(a1[7] + 8) + 24) = 0;
  }

  v18 = [SecXPCHelper cleanseErrorForXPC:*(*(a1[6] + 8) + 40)];
  v19 = *(a1[6] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

void sub_10023FEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10023FED4(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestCount:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = [NSNumber numberWithUnsignedInteger:v4];
  [*(*(a1[5] + 8) + 40) setObject:v5 forKeyedSubscript:@"KTRequest"];

  v6 = a1[4];
  v7 = *(a1[6] + 8);
  v33 = *(v7 + 40);
  v8 = [v6 requestFailureCount:&v33];
  objc_storeStrong((v7 + 40), v33);
  v9 = [NSNumber numberWithUnsignedInteger:v8];
  [*(*(a1[5] + 8) + 40) setObject:v9 forKeyedSubscript:@"KTRequestFailure"];

  v10 = a1[4];
  v11 = *(a1[6] + 8);
  v32 = *(v11 + 40);
  v12 = [v10 signedMutationTimestampCount:&v32];
  objc_storeStrong((v11 + 40), v32);
  v13 = [NSNumber numberWithUnsignedInteger:v12];
  [*(*(a1[5] + 8) + 40) setObject:v13 forKeyedSubscript:@"KTMutation"];

  v14 = a1[4];
  v15 = *(a1[6] + 8);
  v31 = *(v15 + 40);
  v16 = [v14 signedMutationTimestampsFailureCount:&v31];
  objc_storeStrong((v15 + 40), v31);
  v17 = [NSNumber numberWithUnsignedInteger:v16];
  [*(*(a1[5] + 8) + 40) setObject:v17 forKeyedSubscript:@"KTSMTFailure"];

  v18 = a1[4];
  v19 = *(a1[6] + 8);
  v30 = *(v19 + 40);
  v20 = [v18 treeHeadCount:&v30];
  objc_storeStrong((v19 + 40), v30);
  v21 = [NSNumber numberWithUnsignedInteger:v20];
  [*(*(a1[5] + 8) + 40) setObject:v21 forKeyedSubscript:@"KTTreeHead"];

  v22 = a1[4];
  v23 = *(a1[6] + 8);
  v29 = *(v23 + 40);
  v24 = [v22 signedTreeHeadFailureCount:&v29];
  objc_storeStrong((v23 + 40), v29);
  v25 = [NSNumber numberWithUnsignedInteger:v24];
  [*(*(a1[5] + 8) + 40) setObject:v25 forKeyedSubscript:@"KTSTHFailure"];

  v26 = [SecXPCHelper cleanseErrorForXPC:*(*(a1[6] + 8) + 40)];
  v27 = *(a1[6] + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;
}

void sub_100240408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10024042C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 64) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [NSFetchRequest fetchRequestWithEntityName:*(a1 + 40)];
    [v5 setReturnsDistinctResults:1];
    [v5 setPredicate:*(a1 + 48)];
    [v5 setFetchBatchSize:20];
    if (*(a1 + 80) == 1)
    {
      [v5 setFetchLimit:100];
    }

    v6 = [*(a1 + 32) context];
    v7 = *(*(a1 + 64) + 8);
    v27 = *(v7 + 40);
    v8 = [v6 executeFetchRequest:v5 error:&v27];
    objc_storeStrong((v7 + 40), v27);

    v26 = 0;
    v9 = *(a1 + 56);
    v10 = *(*(a1 + 72) + 8);
    v25 = *(v10 + 40);
    (*(v9 + 16))();
    objc_storeStrong((v10 + 40), v25);
    if (*(a1 + 80) == 1 && [v8 count] == 100)
    {
      [v5 setFetchLimit:0];
      v11 = [*(a1 + 32) context];
      v12 = *(*(a1 + 64) + 8);
      v24 = *(v12 + 40);
      v13 = [v11 countForFetchRequest:v5 error:&v24];
      objc_storeStrong((v12 + 40), v24);

      if (v13 >= 0x65)
      {
        v14 = [*(a1 + 32) logger];
        v15 = [NSNumber numberWithUnsignedInteger:v13];
        v16 = [NSString stringWithFormat:@"kt%@MaxBatchesExceeded", *(a1 + 40)];
        [v14 logMetric:v15 withName:v16];

        if (qword_10039CEC8 != -1)
        {
          sub_10026054C();
        }

        v17 = qword_10039CED0;
        if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v30 = v13;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "performOnBatchesOfEntity hit max number of batches: %llu total entries", buf, 0xCu);
        }
      }
    }
  }

  v18 = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 72) + 8) + 40)];
  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 64) + 8) + 40)];
  v22 = *(*(a1 + 64) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;
}

void sub_100240738(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10024077C(void *a1)
{
  if (qword_10039CEC8 != -1)
  {
    sub_100260574();
  }

  v2 = qword_10039CED0;
  if (os_log_type_enabled(qword_10039CED0, OS_LOG_TYPE_ERROR))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = *(*(a1[6] + 8) + 40);
    v6 = 138412802;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "performOnBatchesOfEntity unable to read entity %@ for predicate %@: %@", &v6, 0x20u);
  }
}

void sub_100240858(id a1)
{
  qword_10039CED0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100240D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100240D40(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) releaseContext];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100240F64(void *a1, const char *a2)
{
  v8 = a1;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v3 = NSStringFromSelector(a2);
    [NSException raise:NSInternalInconsistencyException format:@"Selector is not available: %@", v3];
  }

  v4 = [v8 methodSignatureForSelector:a2];
  v5 = [v4 methodReturnType];
  if (*v5 != 113)
  {

    goto LABEL_7;
  }

  v6 = v5[1];

  if (v6)
  {
LABEL_7:
    v7 = NSStringFromSelector(a2);
    [NSException raise:NSInternalInconsistencyException format:@"Selector doesn't return an int64_t: %@", v7];
  }
}

uint64_t sub_100241074(void *a1, const char *a2)
{
  v3 = a1;
  sub_100240F64(v3, a2);
  v9 = 0;
  v4 = [v3 methodSignatureForSelector:a2];
  v5 = [NSInvocation invocationWithMethodSignature:v4];

  [v5 setSelector:a2];
  [v5 setTarget:v3];

  [v5 invoke];
  [v5 getReturnValue:&v9];
  v6 = v9;
  if (v9 < 0)
  {
    v7 = NSStringFromSelector(a2);
    [NSException raise:NSInternalInconsistencyException format:@"Negative value from selector: %@", v7];

    v6 = v9;
  }

  return v6;
}

uint64_t sub_100241170(void *a1, const char *a2, unint64_t a3)
{
  v5 = a1;
  sub_100240F64(v5, a2);
  if (a3 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = NSStringFromSelector(a2);
    [NSException raise:NSInternalInconsistencyException format:@"Value too large from selector: %@", v6];
  }

  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = NSStringFromSelector(a2);
  [v5 setValue:v7 forKey:v8];

  return 1;
}

id sub_100242508(TransparencyNetworkRequest *self, SEL a2, id a3, double a4, id a5, id *a6)
{
  v8 = a5;
  v9 = [NSMutableURLRequest requestWithURL:a3];
  [v9 setHTTPMethod:@"GET"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v19}];
        [v9 setValue:v16 forHTTPHeaderField:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = +[TransparencySettings automatedDeviceGroup];
  if (v17)
  {
    [v9 setValue:v17 forHTTPHeaderField:off_10038B9F0];
  }

  if (a4 != 0.0)
  {
    [v9 setTimeoutInterval:a4];
  }

  return v9;
}

void sub_100242AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100242B10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100242B28(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v14 = a3;
  v7 = a4;
  if (v7 && (mobileactivationErrorHasDomainAndErrorCode() & 1) == 0)
  {
    v8 = kTransparencyErrorBAACertFetch;
    v9 = [v7 userInfo];
    v10 = [TransparencyError errorWithDomain:v8 code:-393 underlyingError:v7 userinfo:v9 description:@"Error fetching BAA cert"];

    v7 = v10;
  }

  v11 = [[KTBAAKey alloc] initWithKey:a2 certificates:v14 failure:v7];
  (*(*(a1 + 32) + 16))();
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  if (a2)
  {
    CFRelease(a2);
  }
}

void sub_100242EB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerRemoteBAACertFetch];
}

void sub_1002434A0(id a1)
{
  qword_10039CEE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002434F4(id a1)
{
  qword_10039CEE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100243538(id a1)
{
  qword_10039CEE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10024357C(id a1)
{
  qword_10039CEE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002435C0(uint64_t a1, void *a2)
{
  v10 = a2;
  if (*(a1 + 48) == 1)
  {
    v3 = [*(a1 + 32) issuanceGroup];
    objc_sync_enter(v3);
    v4 = [*(a1 + 32) issuanceGroup];
    dispatch_group_leave(v4);

    [*(a1 + 32) setOutstandingRemoteFetchSignal:0];
    objc_sync_exit(v3);
  }

  v5 = [*(a1 + 32) analytics];
  v6 = [*(a1 + 32) eventNameForFetchPolicy:*(a1 + 48)];
  v7 = [v10 error];
  v8 = [v10 error];
  v9 = [v8 userInfo];
  [v5 logResultForEvent:v6 hardFailure:1 result:v7 withAttributes:v9];

  (*(*(a1 + 40) + 16))();
}

void sub_100243778(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if (qword_10039CED8 != -1)
    {
      sub_100260614();
    }

    v5 = qword_10039CEE0;
    if (os_log_type_enabled(qword_10039CEE0, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v3 error];
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error fetching BAA cert, starting exponential backoff to request a new cert. %{public}@", &v13, 0xCu);
    }

    v8 = [*(a1 + 32) analytics];
    v9 = [v3 error];
    v10 = [v3 error];
    v11 = [v10 userInfo];
    [v8 logResultForEvent:@"baaFetch-retryCycle" hardFailure:1 result:v9 withAttributes:v11];

    v12 = [*(a1 + 32) BAACertFetcher];
    [v12 trigger];
  }
}

void sub_100243900(id a1)
{
  qword_10039CEE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002439EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = [v3 error];
    HasDomainAndErrorCode = mobileactivationErrorHasDomainAndErrorCode();

    if (HasDomainAndErrorCode)
    {
      if (qword_10039CED8 != -1)
      {
        sub_10026063C();
      }

      v7 = qword_10039CEE0;
      if (os_log_type_enabled(qword_10039CEE0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "skipping retry backoff because unsupported", &v16, 2u);
      }
    }

    else
    {
      if (qword_10039CED8 != -1)
      {
        sub_100260628();
      }

      v8 = qword_10039CEE0;
      if (os_log_type_enabled(qword_10039CEE0, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        v10 = [v3 error];
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error fetching BAA cert, starting exponential backoff to request a new cert. %@", &v16, 0xCu);
      }

      v11 = [*(a1 + 32) analytics];
      v12 = [v3 error];
      v13 = [v3 error];
      v14 = [v13 userInfo];
      [v11 logResultForEvent:@"baaFetch-retry" hardFailure:1 result:v12 withAttributes:v14];

      v15 = [*(a1 + 32) BAACertFetcher];
      [v15 trigger];
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100243C08(id a1)
{
  qword_10039CEE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100243C4C(id a1)
{
  qword_10039CEE0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10024412C(id a1)
{
  qword_10039CEF0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100244E44(id a1)
{
  qword_10039CF00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100244F84(id a1)
{
  qword_10039CF00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002450F0(id a1)
{
  qword_10039CF00 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1002452C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serialize];
  [v2 addObject:v3];
}

void sub_100245F58(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [*(a1 + 32) stateInit];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v8 objectAtIndexedSubscript:1];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_1002606A0();
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_1002606F8();
        }

        [v2 setObject:v10 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = qword_10039CF08;
  qword_10039CF08 = v2;
}

void sub_1002461C0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [*(a1 + 32) stateInit];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v8 objectAtIndexedSubscript:1];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_100260750();
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_1002607A8();
        }

        [v2 setObject:v9 forKeyedSubscript:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = qword_10039CF18;
  qword_10039CF18 = v2;
}

void sub_1002463CC(id a1)
{
  v1 = +[NSMutableSet set];
  [v1 addObject:@"Unlocked"];
  [v1 addObject:@"AccountChanged"];
  [v1 addObject:@"CKAccountChanged"];
  [v1 addObject:@"RepairIDSFlag"];
  [v1 addObject:@"ConfigBagFetch"];
  [v1 addObject:@"ManateeViewChanged"];
  [v1 addObject:@"FetchIDMS"];
  [v1 addObject:@"ValidateSelf"];
  [v1 addObject:@"CheckAccountSignatures"];
  [v1 addObject:@"FetchSelf"];
  [v1 addObject:@"FetchPublicKeys"];
  [v1 addObject:@"CheckIDSRegistration"];
  [v1 addObject:@"ValidateSelfOptIn"];
  [v1 addObject:@"ChangeOptInState"];
  [v1 addObject:@"EnsureIdentity"];
  [v1 addObject:@"CloudKitOutgoing"];
  [v1 addObject:@"CloudKitReboot"];
  [v1 addObject:@"CloudKitZoneRecreate"];
  [v1 addObject:@"OctagonTrustChanged"];
  [v1 addObject:@"CheckKTAccountKey"];
  [v1 addObject:@"StatusUpdate"];
  [v1 addObject:@"CheckKTAccountKeyChanged"];
  [v1 addObject:@"IDSStatusChanged"];
  [v1 addObject:@"CheckServerOptIn"];
  [v1 addObject:@"PokeIDS"];
  [v1 addObject:@"IDSServerBagChanged"];
  [v1 addObject:@"PendingCKVRepair"];
  v2 = qword_10039CF28;
  qword_10039CF28 = v1;
}

void sub_100249448()
{
  sub_100047E50();
  sub_100047E44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002494B8()
{
  sub_100047E50();
  sub_100047E44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100249528()
{
  sub_100047E5C();
  sub_100047E44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100249564()
{
  sub_100047E50();
  sub_100047E44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002495D4()
{
  sub_100047E50();
  sub_100047E44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002496E4()
{
  sub_100047E5C();
  sub_100047E44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002497AC()
{
  sub_100047E50();
  sub_100047E44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10024981C()
{
  sub_100047E50();
  sub_100047E44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10024988C()
{
  sub_100047E50();
  sub_100047E44();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

BOOL sub_10024BDFC(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}

BOOL sub_10024BE24(unint64_t a1, unint64_t *a2)
{
  v2 = (((a1 >= 0xFFFFFFFFFFFFFFF1) << 63) >> 63) ^ (a1 >= 0xFFFFFFFFFFFFFFF1);
  if (!v2)
  {
    *a2 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  return v2 == 0;
}

void sub_10024BE68()
{
  sub_100162678();
  sub_100162744();
  __chkstk_darwin(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v0 - 96) = __stack_chk_guard;
  bzero(v69, 0x1000uLL);
  v67[0] = v69;
  v67[1] = &v70;
  v67[2] = 4096;
  if (v7 && v5)
  {
    v8 = sub_100007A3C();
    if (v8)
    {
      v16 = v8;
      sub_100008090(v8, v9, v10, v11, v12, v13, v14, v15, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v66, v67[0]);
      if (ccder_blob_encode_body_tl())
      {
        if (sub_100258FC4(v67))
        {
          if (sub_100258FC4(v67))
          {
            if (sub_100259020(v67))
            {
              sub_100162650();
              if (ccder_blob_encode_tl())
              {
                sub_1001626D0();
                if (!sub_100162630(v16, 0x4Au, v68, 2u, v17, v18, v19, v20, v69, v21))
                {
                  sub_100162650();
                  if (ccder_blob_decode_range())
                  {
                    sub_100162710();
                    v25 = sub_100166800(v22, v23, v24);
                    if (v25)
                    {
                      if (v3)
                      {
                        v33 = sub_100007DC4(v25, v26, v27, v28, v29, v30, v31, v32, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v69);
                        sub_100258E68(v33, v34, v35);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v37, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v38, v43, v45, v47, v49, v51, v53, ":", 180, "", "");
    }
  }

  sub_10016265C(v69);
  v36 = *(v0 - 96);
  sub_1001626F0();
  sub_100008048();
}

unint64_t sub_10024C068(char *a1, const void *a2, size_t a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = open_dprotected_np(a1, 1793, 4, 0, 384);
    if (v6 == -1)
    {
      v10 = __error();
      v11 = strerror(*v10);
      syslog(3, "could not create file: %s (%s)\n", v3, v11);
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = write(v6, a2, a3);
      v3 = v8 != -1;
      if (v8 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "failed to write restore bag to disk %s\n", v13);
      }

      close(v7);
    }
  }

  return v3;
}

BOOL sub_10024C13C(_BOOL8 a1, void *a2, off_t *a3)
{
  bzero(&v14, 0x90uLL);
  if (a1)
  {
    if (!stat(a1, &v14))
    {
      st_size = v14.st_size;
      v7 = open(a1, 0);
      if (v7 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "could not open file: %s (%s)\n", a1, v13);
      }

      else
      {
        v8 = v7;
        v9 = calloc(st_size, 1uLL);
        a1 = v9 != 0;
        if (!v9)
        {
LABEL_7:
          close(v8);
          return a1;
        }

        v10 = v9;
        if (read(v8, v9, st_size) == st_size)
        {
          *a2 = v10;
          *a3 = st_size;
          goto LABEL_7;
        }

        close(v8);
        free(v10);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t sub_10024C23C(const char *a1)
{
  v1 = open_dprotected_np(a1, 0, 0, 1);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = fcntl(v1, 63);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return v3;
}

uint64_t sub_10024C298(uint64_t a1, uint64_t a2)
{
  result = sub_10024C23C(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || result == v5)
  {
    return printf("file: %s %i\n", *(a2 + 48), result);
  }

  return result;
}

uint64_t sub_10024C2F0(const char *a1)
{
  bzero(v4, 0x400uLL);
  bzero(__str, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v4))
  {
    snprintf(__str, 0x400uLL, "%s/mobile", v4);
    sub_100161D90(v4, &off_1003236C0, 36);
    if ((sub_100161C0C() & 1) == 0)
    {
      sub_100161D90(__str, &off_100323D80, 72);
    }
  }

  return 0;
}

uint64_t sub_10024C3C4(const char *a1)
{
  bzero(v3, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v3))
  {
    sub_100161D90(v3, &off_100323D80, 72);
  }

  return 0;
}

void sub_10024C44C()
{
  sub_100162678();
  sub_100162744();
  __chkstk_darwin(v2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_100162730(__stack_chk_guard);
  bzero(v68, 0x1000uLL);
  v64 = v68;
  v65 = &v69;
  v66 = v0;
  if (v6 && v4)
  {
    v9 = sub_100007A3C();
    if (v9)
    {
      v17 = v9;
      sub_100008090(v9, v10, v11, v12, v13, v14, v15, v16, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v63, v64);
      if (ccder_blob_encode_body_tl())
      {
        if (sub_100258FC4(&v64))
        {
          if (sub_100259020(&v64))
          {
            sub_100162650();
            if (ccder_blob_encode_tl())
            {
              v67[0] = v8;
              v67[1] = v65;
              v67[2] = &v69 - v65;
              if (!sub_100162630(v17, 0x4Cu, v67, 3u, v18, v19, v20, v21, v68, &v66))
              {
                sub_100162650();
                v22 = ccder_blob_decode_range();
                if (v22)
                {
                  v30 = sub_100007DC4(v22, v23, v24, v25, v26, v27, v28, v29, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v68);
                  sub_100166800(v30, v31, v32);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v34, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v35, v40, v42, v44, v46, v48, v50, ":", 509, "", "");
    }
  }

  sub_10016265C(v68);
  v33 = *(v1 - 88);
  sub_1001626F0();
  sub_100008048();
}

void sub_10024C62C()
{
  sub_100162678();
  __chkstk_darwin(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_100162730(__stack_chk_guard);
  bzero(v30, 0x1000uLL);
  v26 = v30;
  v27 = &v31;
  v28 = v0;
  if (v7 && v5)
  {
    v8 = sub_100007A3C();
    if (v8)
    {
      v9 = v8;
      if (ccder_blob_encode_body_tl())
      {
        if (sub_100258FC4(&v26))
        {
          if (sub_100259020(&v26))
          {
            sub_100162650();
            if (ccder_blob_encode_tl())
            {
              v29[0] = v27;
              v29[1] = &v31 - v27;
              if (!sub_100162630(v9, 0x63u, v29, 2u, v10, v11, v12, v13, v30, &v28))
              {
                *&v25 = v30;
                *(&v25 + 1) = &v30[v28];
                sub_100162650();
                if (ccder_blob_decode_range())
                {
                  sub_100162710();
                  if (sub_100166800(v14, v15, v16))
                  {
                    if (v3)
                    {
                      sub_100258E68(&v25, 0, v3);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 544, "", "");
    }
  }

  sub_10016265C(v30);
  sub_100008048();
}

void sub_10024C830()
{
  sub_100162678();
  sub_100162744();
  __chkstk_darwin(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  *(v0 - 96) = __stack_chk_guard;
  bzero(v69, 0x1000uLL);
  v67[0] = v69;
  v67[1] = &v70;
  v67[2] = 4096;
  if (v9 && v7 && v5 && v3)
  {
    v10 = sub_100007A3C();
    if (v10)
    {
      v11 = v10;
      v12 = sub_100258FC4(v67);
      if (v12)
      {
        sub_100008090(v12, v13, v14, v15, v16, v17, v18, v19, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v66, v67[0]);
        if (ccder_blob_encode_body_tl())
        {
          if (sub_100258FC4(v67))
          {
            if (sub_100258FC4(v67))
            {
              if (sub_100259020(v67))
              {
                sub_100162650();
                if (ccder_blob_encode_tl())
                {
                  sub_1001626D0();
                  if (!sub_100162630(v11, 0x4Du, v68, 2u, v20, v21, v22, v23, v69, v24))
                  {
                    sub_100162650();
                    v25 = ccder_blob_decode_range();
                    if (v25)
                    {
                      v33 = sub_100007DC4(v25, v26, v27, v28, v29, v30, v31, v32, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v69);
                      sub_100166800(v33, v34, v35);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v37, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v38, v43, v45, v47, v49, v51, v53, ":", 583, "", "");
    }
  }

  sub_10016265C(v69);
  v36 = *(v0 - 96);
  sub_1001626F0();
  sub_100008048();
}

void sub_10024CA34()
{
  sub_100162678();
  __chkstk_darwin(v1);
  sub_10016271C();
  v3 = v2;
  v5 = v4;
  bzero(v27, 0x1000uLL);
  v23 = v27;
  v24 = v28;
  v25 = 4096;
  v6 = sub_100007A3C();
  if (v6)
  {
    v7 = v6;
    if (!sub_100258FC4(&v23) || !sub_100258FC4(&v23) || !sub_100258FC4(&v23) || !sub_100259020(&v23) || (sub_100162650(), !ccder_blob_encode_tl()) || (v26[0] = v5, v26[1] = v3, v26[2] = v24, v26[3] = &v28[-v24], !sub_100162630(v7, 0x54u, v26, 4u, v8, v9, v10, v11, v27, &v25)) && v25 && ((sub_100162650(), !ccder_blob_decode_range()) || v0 && (sub_100162710(), (sub_100166800(v12, v13, v14) & 1) == 0)))
    {
      sub_1001626C4();
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 617, "", "");
    sub_1001626C4();
  }

  sub_10016265C(v27);
  sub_100008048();
}

void sub_10024CC2C()
{
  sub_100162678();
  sub_100162744();
  __chkstk_darwin(v3);
  sub_10016271C();
  v5 = v4;
  *(v2 - 96) = __stack_chk_guard;
  bzero(v28, 0x1000uLL);
  v24 = v28;
  v25 = v29;
  v26 = 4096;
  if (v1)
  {
    v6 = sub_100007A3C();
    if (v6)
    {
      v7 = v6;
      if (!sub_100258FC4(&v24) || !sub_100258FC4(&v24) || !sub_100258FC4(&v24) || !sub_100258FC4(&v24) || !sub_100259020(&v24) || (sub_100162650(), !ccder_blob_encode_tl()) || (v27[0] = v25, v27[1] = &v29[-v25], v27[2] = v5, !sub_100162630(v7, 0x4Bu, v27, 3u, v8, v9, v10, v11, v28, &v26)) && ((sub_100162650(), !ccder_blob_decode_range()) || v0 && (sub_100162710(), (sub_100258E68(v12, v13, v14) & 1) == 0)))
      {
        sub_1001626C4();
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 654, "", "");
      sub_1001626C4();
    }
  }

  else
  {
    sub_1001626C4();
  }

  sub_10016265C(v28);
  v15 = *(v2 - 96);
  sub_1001626F0();
  sub_100008048();
}

uint64_t sub_10024CE44(uint64_t a1, uint64_t a2)
{
  result = sub_10024C23C(*(a2 + 48));
  if ((result - 7) >= 0xFFFFFFFA)
  {
    v5 = *(a2 + 96);
    v6 = *(v5 + 96);
    v7 = *(a1 + 32);
    ++*(v7 + 296 * result);
    if (*(v5 + 6) >= 2u)
    {
      ++*(v7 + 296 * result + 8);
    }

    if ((*(v5 + 116) & 0x20) != 0)
    {
      ++*(v7 + 296 * result + 4);
    }

    v8 = v7 + 296 * result;
    v10 = *(v8 + 32);
    v9 = (v8 + 32);
    *(v9 - 2) += v6;
    if (v6 > v10)
    {
      *v9 = v6;
    }

    v11 = v7 + 296 * result;
    v14 = *(v11 + 24);
    v12 = (v11 + 24);
    v13 = v14;
    if (v14)
    {
      v15 = v6 < v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      *v12 = v6;
    }

    if (v6)
    {
      v16 = v7 + 296 * result + 4 * (63 - __clz(v6));
    }

    else
    {
      v16 = v7 + 296 * result;
    }

    ++*(v16 + 40);
  }

  return result;
}

uint64_t sub_10024CF50()
{
  sub_1001626E4();
  if (!v2)
  {
    return (v0 + 6);
  }

  v3 = v2;
  input[0] = 0;
  input[1] = v1;
  input[2] = 0;
  output = 0;
  outputCnt = 1;
  v4 = sub_100007A3C();
  if (v4)
  {
    v0 = IOConnectCallMethod(v4, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
    if (!v0)
    {
      *v3 = output;
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v6, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v7, v8, v9, v10, v11, v12, v13, ":", 842, "", "");
  }

  return v0;
}

void sub_10024D05C()
{
  sub_100162678();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v1;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v17 = sub_100007A3C();
  if (v17)
  {
    v30[0] = v16;
    v30[1] = v15;
    v30[2] = v13;
    v30[3] = v11;
    if ((!v15 || v5 && v3) && !sub_1001626AC(v17, 0x36u, v30, 4u, v9, v7, v18, v19, __src, &__count))
    {
      if (v15)
      {
        v20 = calloc(__count, 1uLL);
        *v5 = v20;
        if (v20)
        {
          memcpy(v20, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v23, v24, v25, v26, v27, v28, ":", 891, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  sub_100008048();
}

void sub_10024D21C()
{
  sub_100162678();
  sub_100162690();
  v15[0] = v5;
  v15[1] = v4;
  v14 = 0;
  outputCnt = 1;
  bzero(outputStruct, 0x400uLL);
  v11 = 1024;
  if (!IOConnectCallMethod(v3, 0xFu, v15, 2u, v2, 0x10uLL, &v14, &outputCnt, outputStruct, &v11) && outputCnt == 1)
  {
    *v1 = v14;
    sub_10025AB54(outputStruct, v11, 3u, v6, v7, v8, v9, v10, v0);
  }

  sub_100008048();
}

void sub_10024D330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  sub_100162678();
  sub_100162690();
  v43[0] = v30;
  v43[1] = v29;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  outputCnt = 3;
  bzero(outputStruct, 0x400uLL);
  v37 = 1024;
  if (!IOConnectCallMethod(v28, 0x13u, v43, 2u, v27, 0x10uLL, &v40, &outputCnt, outputStruct, &v37) && outputCnt == 3)
  {
    v36 = v41;
    *v26 = v40;
    *a22 = v36;
    *a25 = v42;
    sub_10025AB54(outputStruct, v37, 5u, v31, v32, v33, v34, v35, v25);
  }

  sub_100008048();
}

uint64_t sub_10024D468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, unsigned int a12, void *outputStruct, size_t *a14, _DWORD *a15)
{
  input[0] = a3;
  input[1] = a6;
  input[2] = a9;
  input[3] = a12;
  output = 0;
  outputCnt = 1;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_100167D20(&inputStructCnt[1], inputStructCnt, 4, a4, a5, a6, a7, a8, a2);
  v16 = IOConnectCallMethod(a1, 0x15u, input, 4u, *&inputStructCnt[1], inputStructCnt[0], &output, &outputCnt, outputStruct, a14);
  if (v16)
  {
    a1 = v16;
  }

  else if (outputCnt == 1)
  {
    a1 = 0;
    *a15 = output;
  }

  else
  {
    sub_1001626E4();
  }

  free(*&inputStructCnt[1]);
  return a1;
}

void sub_10024D578()
{
  sub_100162678();
  v3 = v2;
  sub_1001626FC();
  v22[0] = v4;
  v22[1] = v5;
  v20 = 0;
  v19 = 0;
  bzero(v21, 0x400uLL);
  v18 = 1024;
  sub_100167D20(&v20, &v19, 2, v6, v7, v8, v9, v10, v0);
  if (!sub_1001626AC(v1, 0x10u, v22, 2u, v20, v19, v11, v12, v21, &v18))
  {
    sub_10025AB54(v21, v18, 2u, v13, v14, v15, v16, v17, v3);
  }

  free(v20);
  sub_100008048();
}

void sub_10024D690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  sub_100162678();
  sub_1001626FC();
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = a21;
  v40 = 0;
  v39 = 0;
  bzero(v41, 0x400uLL);
  v38 = 1024;
  sub_100167D20(&v40, &v39, 3, v26, v27, v28, v29, v30, v22);
  if (!sub_1001626AC(v23, 0x17u, v42, 3u, v40, v39, v31, v32, v41, &v38))
  {
    sub_10025AB54(v41, v38, 2u, v33, v34, v35, v36, v37, a22);
  }

  free(v40);
  sub_100008048();
}

uint64_t sub_10024D7B8(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v26 = v1;
  bzero(__src, 0x8000uLL);
  __n = 0x8000;
  v8 = sub_100007A3C();
  if (v8)
  {
    if (v7)
    {
      v11 = 18;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_1001626AC(v8, 0x5Du, &v26, 1u, v7, v11, v9, v10, __src, &__n);
    v13 = __n;
    if (v12)
    {
      v7 = v12;
    }

    else
    {
      sub_1001626E4();
      if (v13 - 32769 < 0xFFFFFFFFFFFF8000)
      {
        v7 = (v7 + 6);
      }

      else
      {
        v14 = calloc(v13, 1uLL);
        *v5 = v14;
        v13 = __n;
        if (v14)
        {
          *v3 = __n;
          memcpy(v14, __src, v13);
          v7 = 0;
          v13 = __n;
        }

        else
        {
          v7 = (v7 + 1);
        }
      }
    }
  }

  else
  {
    sub_1001626E4();
    sub_10016261C();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 1246, "", "");
    v13 = 0x8000;
  }

  memset_s(__src, v13, 0, v13);
  return v7;
}

uint64_t sub_10024D9CC(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t sub_10024DBC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 + a3;
  v4 = a1[10];
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_implicit_raw_octet_string())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_implicit_raw_octet_string())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_implicit_raw_octet_string())
  {
    return 4294967273;
  }

  v5 = *a1;
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  v6 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v6)
  {
    if (a2 == v9)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t sub_10024DCA4(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !sub_10025A704(&v6, 0x8000000000000000, a3) || !sub_1002581F8(&v6, 0x8000000000000001, a3 + 1, 16) || !sub_1002581F8(&v6, 0x8000000000000002, a3 + 3, 40) || !sub_1002581F8(&v6, 0x8000000000000003, a3 + 8, 16))
  {
    return 4294967277;
  }

  v4 = sub_10025A704(&v6, 0x8000000000000004, a3 + 10);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

uint64_t sub_10024DD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *__s = 0u;
  v20 = 0u;
  HIDWORD(v18) = 40;
  *a4 = 0;
  uuid_copy((a4 + 8), (a1 + 32));
  *(a4 + 80) = 1;
  sub_100166DFC(a4 + 64, 0x10u);
  ccsha256_di();
  v6 = *(a4 + 80);
  LODWORD(v7) = j__ccpbkdf2_hmac();
  if (v7)
  {
    v15 = 4294967286;
  }

  else
  {
    v7 = sub_10016151C(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, a1, 0x20u, (a4 + 24), &v18 + 1);
    if (v7)
    {
      v15 = v7;
    }

    else if (HIDWORD(v18) == 40)
    {
      v15 = 0;
    }

    else
    {
      v15 = 4294967286;
    }
  }

  sub_1001627D4(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, __s[0]);
  return v15;
}

uint64_t sub_10024DEA0(const unsigned __int8 *a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  *__s = 0u;
  v17 = 0u;
  HIDWORD(v15) = 32;
  if (*a1)
  {
    v12 = 4294967284;
  }

  else
  {
    v9 = a1;
    ccsha256_di();
    v10 = *(v9 + 10);
    LODWORD(a1) = j__ccpbkdf2_hmac();
    if (a1)
    {
      goto LABEL_9;
    }

    a1 = sub_1001618D0(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, v9 + 3, 0x28u, a4, &v15 + 1);
    if (a1)
    {
      v12 = a1;
      goto LABEL_8;
    }

    if (HIDWORD(v15) != 32)
    {
LABEL_9:
      v12 = 4294967286;
    }

    else
    {
      v11 = cccurve25519_make_pub() == 0;
      sub_100165DE8(v11, 118, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/backup_serialize.c");
      LODWORD(a1) = uuid_compare(v9 + 8, (a4 + 32));
      if (a1)
      {
        v12 = 4294967272;
      }

      else
      {
        v12 = 0;
      }
    }
  }

LABEL_8:
  sub_1001627D4(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, __s[0]);
  return v12;
}

void sub_10024DFE0()
{
  sub_100162678();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  bzero(v28, 0x1000uLL);
  v25 = v28;
  v26 = &v29;
  v11 = sub_100007A3C();
  if (v11)
  {
    v12 = v11;
    if (sub_100258FC4(&v25))
    {
      sub_100162650();
      if (ccder_blob_encode_tl())
      {
        v27[0] = v10;
        v27[1] = v9;
        v27[2] = v5;
        v27[3] = v3;
        v27[4] = v7;
        v27[5] = v26;
        v27[6] = &v29 - v26;
        sub_100162630(v12, 0x21u, v27, 7u, v13, v14, v15, v16, 0, 0);
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 53, "", "");
  }

  sub_100008048();
}

uint64_t sub_10024E198(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (sub_100007A3C())
  {
    sub_100165048();
    result = IOConnectCallMethod(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0);
    if (!result)
    {
      result = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 80, "", "");
    return sub_10016503C();
  }

  return result;
}

uint64_t sub_10024E2AC(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  sub_100165224();
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  free(a1[1]);
  free(a1);
  return 0;
}

uint64_t sub_10024E304(int a1, uint64_t a2, unint64_t a3, int a4, void *a5)
{
  v14 = 0;
  if (!a2 && a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_10024E404(a4, &v14) || (v9 = calloc(0x20uLL, 1uLL)) == 0)
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
    v11 = sub_10024E4EC(v14);
    v12 = 0xFFFFFFFFLL;
    if (a3 <= 0x7FFFFFFE && !v11 && !sub_10024E58C(a1, a2, a3, v10, v14))
    {
      v12 = 0;
      if (a5)
      {
        *a5 = v14;
        v14 = 0;
      }
    }

    sub_10016516C(v10);
    free(v10);
  }

  if (v14)
  {
    sub_10024E2AC(v14);
  }

  return v12;
}

uint64_t sub_10024E404(int a1, void *a2)
{
  if ((a1 - 1) > 2 || a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = calloc(0x20uLL, 1uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *(v6 + 2) = 20;
  v8 = calloc(0x14uLL, 1uLL);
  *(v7 + 1) = v8;
  if (!v8)
  {
LABEL_19:
    free(v7);
    return 0xFFFFFFFFLL;
  }

  *v7 = 1634431856;
  v7[6] = a1;
  v9 = *(v7 + 2);
  result = CCRandomCopyBytes();
  if (result)
  {
    v11 = *(v7 + 1);
    if (v11)
    {
      free(v11);
    }

    goto LABEL_19;
  }

  if (a1 == 3)
  {
    v10 = 2000;
  }

  else
  {
    v10 = 10000000;
  }

  if (a1 == 2)
  {
    v10 = 1000;
  }

  v7[1] = v10;
  *a2 = v7;
  return result;
}

uint64_t sub_10024E4EC(unsigned int *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  sub_100165224();
  if (!v6 || !v3 && v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v5 && a1[6] - 4 >= 0xFFFFFFFD)
  {
    ccsha256_di();
    v9 = *(a1 + 1);
    v8 = *(a1 + 2);
    v10 = a1[1];
    if (ccpbkdf2_hmac())
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10024E58C(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v40 = 0;
  sub_100165140();
  v38 = 0;
  __n = 0;
  if ((v10 || !a3) && a4 && a5)
  {
    v11 = sub_100007A3C();
    if (v11)
    {
      v12 = v11;
      v13 = *(a5 + 8);
      v14 = *(a5 + 16);
      if (!sub_10025867C() && !sub_10025867C() && !sub_100258940(&v38, off_100388760, *(a5 + 4)) && !sub_100258940(&v38, off_100388768, *(a5 + 24)) && (a3 < 1 || !sub_10025867C()) && !sub_100166790(&v38) && !sub_1002583A8(&v38, &v40, &__n))
      {
        sub_1001651B8(a1, v23, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, __n);
        v5 = sub_100162630(v12, 0x1Eu, v15, 3u, v16, v17, v18, v19, v24, v26);
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v27, v28, v29, v30, v31, v32, ":", 221, "", "");
      v5 = (v5 - 6);
    }
  }

  sub_100166358(&v38);
  if (v40)
  {
    sub_100165194(v40, __n);
    free(v40);
  }

  return v5;
}

void sub_10024E780()
{
  sub_100162678();
  __chkstk_darwin(v2);
  if (v3)
  {
    sub_100007B64();
    v4 = calloc(0x20uLL, 1uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = 1634431856;
      v6 = sub_100007A3C();
      if (!v6)
      {
        sub_10016261C();
        fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 387, "", "");
        goto LABEL_16;
      }

      v7 = v6;
      bzero(v36, 0x8000uLL);
      v26[0] = 0x8000;
      v35 = v1;
      if (sub_100164FD4(v7, 0x1Fu, &v35, v8, v9, v10, v11, v12, v36, v26) || v26[0] > 0x8000)
      {
        goto LABEL_16;
      }

      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v28 = 0u;
      v30 = 0u;
      v31 = 0;
      v27 = 0u;
      v33 = 0u;
      v34 = 0u;
      v26[1] = off_100388758;
      v29 = off_100388760;
      v32 = off_100388768;
      sub_100164FB4();
      sub_100257D78();
      v14 = ccder_decode_tl();
      if (v14)
      {
        v15 = v14;
        v16 = calloc(*(v5 + 2), 1uLL);
        *(v5 + 1) = v16;
        if (!v16)
        {
          v17 = 0;
          if (!Mutable)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        memcpy(v16, v15, *(v5 + 2));
        v5[1] = sub_100257F2C();
        v5[6] = sub_100257F2C();
      }

      v17 = 1;
      if (!Mutable)
      {
LABEL_11:
        if (v17 && *(v5 + 2))
        {
          *v0 = v5;
          goto LABEL_14;
        }

LABEL_16:
        sub_10024E2AC(v5);
        goto LABEL_14;
      }

LABEL_10:
      CFRelease(Mutable);
      goto LABEL_11;
    }
  }

LABEL_14:
  sub_100008048();
}

uint64_t sub_10024EA0C(int a1, uint64_t a2, int a3, unsigned int *a4)
{
  memset(v9, 0, sizeof(v9));
  if (a3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 || a4 == 0;
  if (v5 || *a4 != 1634431856 || sub_10024E4EC(a4))
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = sub_100162EEC(a1, v9, 32, 0);
  }

  sub_10016516C(v9);
  return v7;
}

uint64_t sub_10024EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6)
{
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v21 = 0;
  if (!a6)
  {
    goto LABEL_18;
  }

  v7 = *a6;
  if (!*a6)
  {
    goto LABEL_18;
  }

  v8 = *v7;
  sub_100165224();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v9;
  if (!v10)
  {
    if (v11)
    {
      goto LABEL_18;
    }
  }

  if (!v12 && v13 || sub_10024E4EC(v7))
  {
    goto LABEL_18;
  }

  v16 = sub_10024E404(v7[6], &v21);
  v17 = v21;
  if (v16 || (v18 = sub_10024E4EC(v21), v17 = v21, v18))
  {
LABEL_16:
    if (v17)
    {
      sub_10024E2AC(v17);
    }

LABEL_18:
    v19 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (sub_10024E58C(v15, v23, 32, v22, v21))
  {
    v17 = v21;
    goto LABEL_16;
  }

  sub_10024E2AC(v7);
  v19 = 0;
  *a6 = v21;
LABEL_14:
  sub_10016516C(v23);
  sub_10016516C(v22);
  return v19;
}

uint64_t sub_10024EC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v9 = 3758097084;
  if (sub_100007A3C())
  {
    if (a8)
    {
      sub_100165048();
      v9 = IOConnectCallMethod(v10, v11, v12, v13, v14, v15, v16, v17, 0, 0);
      if (!v9)
      {
        *a8 = 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 190, "", "");
  }

  return v9;
}

uint64_t sub_10024EF4C(const void *a1, int a2, _DWORD *a3)
{
  sub_100007DD4(__stack_chk_guard);
  v7 = sub_100007A3C();
  if (v7)
  {
    v3 = (v3 + 6);
    if (a1)
    {
      if (a3)
      {
        output = 0;
        outputCnt = 1;
        v3 = IOConnectCallMethod(v7, 6u, 0, 0, a1, a2, &output, &outputCnt, 0, 0);
        if (!v3)
        {
          *a3 = output;
        }
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v9, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v10, v11, v12, v13, v14, v15, v16, ":", 607, "", "");
  }

  return v3;
}

uint64_t sub_10024F058(const void *a1, int a2)
{
  sub_1001626E4();
  v5 = sub_100007A3C();
  if (v5)
  {
    if (a1)
    {
      return sub_1001626AC(v5, 0x57u, 0, 0, a1, a2, v6, v7, 0, 0);
    }

    return (v2 + 6);
  }

  else
  {
    sub_10016261C();
    fprintf(v9, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v10, v11, v12, v13, v14, v15, v16, ":", 629, "", "");
  }

  return v2;
}

void sub_10024F114()
{
  sub_100165418();
  sub_1001652E0();
  __chkstk_darwin(v6);
  sub_100165188();
  v8 = v7;
  *(v5 - 72) = __stack_chk_guard;
  sub_10016528C();
  v9 = sub_100007A3C();
  if (v9)
  {
    v17 = v9;
    if (v1)
    {
      if (v0)
      {
        sub_10016514C((v2 + 6), v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, v30, v31, v32, v33);
        __count = v3;
        v36 = v8;
        if (!sub_100164FD4(v17, 3u, &v36, v18, v19, v20, v21, v22, v4, &__count))
        {
          v23 = calloc(__count, 1uLL);
          *v1 = v23;
          if (v23)
          {
            memcpy(v23, __src, __count);
            *v0 = __count;
          }
        }
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v29, v30, v31, v32, v33, v34, ":", 679, "", "");
    sub_10016503C();
  }

  v24 = *(v5 - 72);
  sub_100165318();
  sub_100165404();
}

uint64_t sub_10024F25C()
{
  sub_100007B64();
  sub_100007DD4(__stack_chk_guard);
  v18 = 16;
  v3 = sub_100007A3C();
  if (v3)
  {
    if (v1)
    {
      v20 = 0uLL;
      v19 = v2;
      v0 = sub_100164FD4(v3, 0x17u, &v19, v4, v5, v6, v7, v8, &v20, &v18);
      if (!v0)
      {
        *v1 = v20;
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 782, "", "");
  }

  return v0;
}

uint64_t sub_10024F35C(int a1, uint64_t a2, void **a3, size_t *a4)
{
  sub_100165324();
  v51 = 0;
  memset(__src, 0, sizeof(__src));
  v47 = 0;
  __count = 34;
  HIDWORD(v45) = 0;
  v9 = sub_100007A3C();
  if (v9)
  {
    v17 = (v4 + 5);
    if (a3 && a4)
    {
      v18 = v9;
      v49 = a1;
      v19 = sub_100165348(v9, v10, v11, v12, v13, v14, v15, v16, a2, 16, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, 0);
      sub_100167D20(v19, v20, 1, v21, v22, v23, v24, v25, v34);
      if (v47)
      {
        v29 = sub_1001650FC(v18, 0x44u, &v49, v26, v47, v46, v27, v28, __src, &__count);
        if (v29)
        {
          v17 = v29;
        }

        else
        {
          *a3 = calloc(__count, 1uLL);
          sub_100165324();
          if (v30)
          {
            memcpy(v30, __src, __count);
            v17 = 0;
            *a4 = __count;
          }
        }
      }

      else
      {
        sub_100165324();
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v33, v35, v36, v37, v38, v39, v40, ":", 813, "", "");
    v17 = (v4 - 1);
  }

  free(v47);
  return v17;
}

uint64_t sub_10024F62C(const void *a1, int a2, int a3, int a4, void *a5, int *a6)
{
  sub_100164FF8(__stack_chk_guard);
  v13 = sub_100007A3C();
  if (v13)
  {
    v6 = (v6 + 6);
    if (a1)
    {
      if (a5)
      {
        if (a6)
        {
          v26[0] = a4;
          v26[1] = a3;
          v25 = *a6;
          v6 = sub_1001626AC(v13, 0xBu, v26, 2u, a1, a2, v14, v15, a5, &v25);
          if (!v6)
          {
            *a6 = v25;
          }
        }
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 942, "", "");
  }

  return v6;
}

uint64_t sub_10024F878()
{
  sub_100007B64();
  sub_100007DD4(__stack_chk_guard);
  if (sub_100007A3C())
  {
    if (v1)
    {
      sub_100165048();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0);
      if (!v0)
      {
        sub_10000803C();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 987, "", "");
  }

  return v0;
}

void sub_10024FABC()
{
  sub_100162678();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v33 = 0;
  v32 = 0;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v13 = sub_100007A3C();
  if (v13)
  {
    v19 = v13;
    v34[0] = v11;
    v34[1] = v9;
    v34[2] = v7;
    sub_100167D20(&v33, &v32, 1, v14, v15, v16, v17, v18, v12);
    if (v33)
    {
      if (!sub_1001626AC(v19, 0x6Eu, v34, 3u, v33, v32, v20, v21, __src, &__count))
      {
        v22 = calloc(__count, 1uLL);
        *v5 = v22;
        if (v22)
        {
          memcpy(v22, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v25, v26, v27, v28, v29, v30, ":", 1101, "", "");
  }

  free(v33);
  sub_10016533C();
  sub_100008048();
}

uint64_t sub_10024FC74()
{
  sub_1001626E4();
  v24 = 0;
  v23 = 0;
  v1 = sub_100007A3C();
  if (v1)
  {
    v2 = v1;
    sub_100165330();
    sub_100167D20(&v24, &v23, 1, v3, v4, v5, v6, v7, v16);
    if (v24)
    {
      v0 = sub_100165054(v2, 0x6Fu, v8, v9, v24, v23, v10, v11, 0, 0);
      v12 = v24;
    }

    else
    {
      v12 = sub_100165128();
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v17, v18, v19, v20, v21, v22, ":", 1143, "", "");
    v12 = 0;
  }

  free(v12);
  return v0;
}

uint64_t sub_10024FD58(uint64_t a1, void *a2)
{
  sub_1001626E4();
  v28 = 0;
  v27 = 0;
  v26 = 16;
  v5 = sub_100007A3C();
  if (v5)
  {
    v11 = v5;
    sub_100167D20(&v28, &v27, 1, v6, v7, v8, v9, v10, a1);
    if (v28)
    {
      v2 = sub_100165054(v11, 0x70u, v12, v13, v28, v27, v14, v15, a2, &v26);
      v16 = v28;
    }

    else
    {
      v16 = sub_100165128();
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 1165, "", "");
    v16 = 0;
  }

  free(v16);
  return v2;
}

uint64_t sub_100250114(uint64_t a1, uint64_t a2, int a3, int a4, _OWORD *a5)
{
  v24 = 0u;
  v25 = 0u;
  __s = 0u;
  v23 = 0u;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v8 = sub_10024DCA4(a1, a2, v20);
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    v8 = sub_10024DEA0(v20, a3, a4, &__s, v12, v13, v14, v15);
    v16 = v8;
    if (!v8)
    {
      v17 = v23;
      *a5 = __s;
      a5[1] = v17;
      v18 = v25;
      a5[2] = v24;
      a5[3] = v18;
    }
  }

  sub_10016538C(v8, v9, v10, v11, v12, v13, v14, v15, *&v20[0]);
  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  return sub_100165DCC(v16);
}

uint64_t sub_1002501F4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v4 = sub_10024DCA4(a1, a2, v14);
  v12 = v4;
  if (!v4)
  {
    uuid_copy(a3, v14 + 8);
  }

  sub_10016538C(v4, v5, v6, v7, v8, v9, v10, v11, *&v14[0]);
  return sub_100165DCC(v12);
}

uint64_t sub_100250290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  sub_100165204();
  v10 = v9;
  sub_1001626E4();
  v11 = sub_100007A3C();
  if (v11)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v25[0] = v10;
      v25[1] = 64;
      return sub_1001650A0(v11, 0x82u, v25, 2u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1292, "", "");
  }

  return v5;
}

uint64_t sub_100250388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  sub_100165204();
  v10 = v9;
  sub_1001626E4();
  v11 = sub_100007A3C();
  if (v11)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v25 = v10;
      return sub_1001650A0(v11, 0x81u, &v25, 1u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1311, "", "");
  }

  return v5;
}

uint64_t sub_100250480()
{
  sub_100007B64();
  sub_100007DD4(__stack_chk_guard);
  if (sub_100007A3C())
  {
    if (v1)
    {
      sub_1000080A0();
      sub_100008060();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
      if (!v0)
      {
        sub_10000803C();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v15, v16, v17, v18, v19, v20, ":", 1330, "", "");
  }

  return v0;
}

uint64_t sub_100250560()
{
  sub_100007B64();
  sub_100007DD4(__stack_chk_guard);
  v3 = sub_100007A3C();
  if (v3)
  {
    if (v1)
    {
      v21 = 0;
      v22 = v2;
      v19 = 16;
      *src = 0;
      v9 = sub_100164FD4(v3, 0x84u, &v22, v4, v5, v6, v7, v8, src, &v19);
      if (v9)
      {
        return v9;
      }

      else if (v19 == 16)
      {
        uuid_copy(v1, src);
        return 0;
      }

      else
      {
        return 3758604298;
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 1352, "", "");
  }

  return v0;
}

uint64_t sub_100250680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    sub_100165254();
    v10 = v9;
    *a5 = -1;
    v15 = sub_100250114(v9, v11, v12, v13, v14);
    if (!v15)
    {
      sub_10016261C();
      fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Unwrapped DER backup bag%s\n", "aks", v17, v33, v34, v36, v38, v40, v42, ":", 1401, "", "");
      v18 = 0;
      goto LABEL_9;
    }

    v46 = v15;
    sub_10016501C();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unwrap backup bag as DER: 0x%08x%s\n", "aks", "", v20, v34, v36, v38, v40, v42, v44, 1389, "", v46, "");
    v21 = sub_10024EF4C(v10, v7, a5);
    if (v21)
    {
      v18 = v21;
      v47 = v21;
      sub_10016501C();
      fprintf(v29, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to load in-kernel backup bag: 0x%08x%s\n", "aks", "", v30, v35, v37, v39, v41, v43, v45, 1391, "", v47, "");
    }

    else
    {
      v22 = *a5;
      sub_10024E780();
      v24 = v23;
      v25 = *a5;
      if (v24)
      {
        v18 = sub_10024EA0C(v25, v6, v5, 0);
        if (!v18)
        {
          goto LABEL_9;
        }

        sub_10016501C();
        fprintf(v31, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag with prederived secret: 0x%08x%s\n", "aks", "", v32);
      }

      else
      {
        v18 = sub_100162EEC(v25, v6, v5, 0);
        if (!v18)
        {
          goto LABEL_9;
        }

        sub_10016501C();
        fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag: 0x%08x%s\n", "aks", "", v27);
      }
    }
  }

  else
  {
    v18 = 3758097090;
  }

  if (*a5 != -1)
  {
    sub_100162B04(*a5);
    *a5 = -1;
  }

LABEL_9:
  sub_10024E2AC(0);
  return v18;
}

uint64_t sub_100250894(int a1, uint64_t a2, uint64_t a3)
{
  sub_1001626E4();
  v28 = 0;
  v27 = 0;
  v7 = sub_100007A3C();
  if (v7)
  {
    v8 = v7;
    v29[0] = a1;
    v29[1] = a2;
    v29[2] = a3;
    sub_100165330();
    sub_100167D20(&v28, &v27, 1, v9, v10, v11, v12, v13, v20);
    if (v28)
    {
      v3 = sub_1001626AC(v8, 0x60u, v29, 3u, v28, v27, v14, v15, 0, 0);
      v16 = v28;
    }

    else
    {
      v16 = sub_100165128();
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v21, v22, v23, v24, v25, v26, ":", 1423, "", "");
    v16 = 0;
  }

  free(v16);
  return v3;
}

uint64_t sub_1002509CC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  sub_100164FF8(__stack_chk_guard);
  v31 = 0;
  v30 = 0;
  v10 = sub_100007A3C();
  if (v10)
  {
    v11 = v10;
    v32[0] = a1;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a5;
    sub_100165330();
    sub_100167D20(&v31, &v30, 1, v12, v13, v14, v15, v16, v23);
    if (v31)
    {
      v5 = sub_1001626AC(v11, 0x75u, v32, 4u, v31, v30, v17, v18, 0, 0);
      v19 = v31;
    }

    else
    {
      v19 = sub_100165128();
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v24, v25, v26, v27, v28, v29, ":", 1445, "", "");
    v19 = 0;
  }

  free(v19);
  return v5;
}

uint64_t sub_100250B10(uint64_t a1)
{
  __chkstk_darwin(a1);
  v5 = v4;
  sub_100007B64();
  sub_100165214(__stack_chk_guard);
  bzero(__src, 0x2000uLL);
  __count = 0x2000;
  v26 = v2;
  v6 = (v3 + 6);
  if (v1 && v5)
  {
    v7 = sub_100007A3C();
    if (v7)
    {
      v13 = sub_100164FD4(v7, 0x61u, &v26, v8, v9, v10, v11, v12, __src, &__count);
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        if (__count)
        {
          v14 = calloc(__count, 1uLL);
          *v1 = v14;
          if (!v14)
          {
            v6 = (v3 + 1);
            goto LABEL_10;
          }

          memcpy(v14, __src, __count);
          v15 = __count;
        }

        else
        {
          v15 = 0;
          *v1 = 0;
        }

        sub_1001652C8(v15);
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1471, "", "");
      sub_100165134();
    }
  }

LABEL_10:
  memset_s(__src, 0x2000uLL, 0, 0x2000uLL);
  return v6;
}

uint64_t sub_100250C90(int a1)
{
  sub_100007DD4(__stack_chk_guard);
  v25 = 0;
  v24 = 0;
  v3 = sub_100007A3C();
  if (v3)
  {
    v4 = v3;
    v26 = a1;
    sub_100165330();
    sub_100167D20(&v25, &v24, 1, v5, v6, v7, v8, v9, v17);
    if (v25)
    {
      v1 = sub_1001650FC(v4, 0x62u, &v26, v10, v25, v24, v11, v12, 0, 0);
      v13 = v25;
    }

    else
    {
      v13 = sub_100165128();
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v18, v19, v20, v21, v22, v23, ":", 1493, "", "");
    v13 = 0;
  }

  free(v13);
  return v1;
}

uint64_t sub_100250EB0(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v62 = 0;
  sub_100165140();
  v60 = 0;
  __n = 0;
  v8 = sub_100007A3C();
  if (v8)
  {
    v9 = v8;
    CFNumberGetTypeID();
    v10 = sub_1001650F0();
    if (!sub_100255B38(v10, v11, v12))
    {
      CFNumberGetTypeID();
      v13 = sub_1001650F0();
      if (!sub_100255B38(v13, v14, v15))
      {
        CFNumberGetTypeID();
        v16 = sub_1001650F0();
        if (!sub_100255B38(v16, v17, v18))
        {
          CFNumberGetTypeID();
          v19 = sub_1001650F0();
          if (!sub_100255B38(v19, @"EscrowPasscodePeriod", v20))
          {
            CFNumberGetTypeID();
            v21 = sub_1001650F0();
            if (!sub_100255B38(v21, @"EscrowTokenPeriod", v22))
            {
              CFDataGetTypeID();
              v23 = sub_1001650F0();
              if (!sub_100255B38(v23, v24, v25))
              {
                CFDataGetTypeID();
                v26 = sub_1001650F0();
                if (!sub_100255B38(v26, v27, v28))
                {
                  CFBooleanGetTypeID();
                  v29 = sub_1001650F0();
                  if (!sub_100255B38(v29, v30, v31))
                  {
                    CFBooleanGetTypeID();
                    v32 = sub_1001650F0();
                    if (!sub_100255B38(v32, v33, v34) && !sub_100166790(&v60))
                    {
                      if (!a2)
                      {
                        goto LABEL_24;
                      }

                      v35 = &off_100388410;
                      if (!a4)
                      {
                        v35 = &off_100388420;
                      }

                      v36 = *v35;
                      if (!sub_10025867C())
                      {
LABEL_24:
                        if (!sub_1002583A8(&v60, &v62, &__n))
                        {
                          sub_1001651B8(a1, v45, v47, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, __n);
                          v4 = sub_100162630(v9, 0x1Eu, v37, 3u, v38, v39, v40, v41, v46, v48);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v43, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v44, v49, v50, v51, v52, v53, v54, ":", 1587, "", "");
    v4 = (v4 - 6);
  }

  sub_100166358(&v60);
  if (v62)
  {
    sub_100165194(v62, __n);
    free(v62);
  }

  return v4;
}

void sub_1002511C8()
{
  sub_100162678();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v4 = v1;
  sub_1001626E4();
  v5 = sub_100007A3C();
  if (v5)
  {
    if (v3)
    {
      v6 = v5;
      bzero(v86, 0x8000uLL);
      v83[0] = 0x8000;
      v85 = v4;
      if (!sub_100164FD4(v6, 0x1Fu, &v85, v7, v8, v9, v10, v11, v86, v83) && v83[0] <= 0x8000)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        bzero(v84, 0x250uLL);
        v83[1] = off_100388578;
        v84[4] = off_100388580;
        v84[9] = off_100388588;
        v84[14] = off_100388590;
        v84[19] = off_100388598;
        v84[24] = off_1003885A0;
        v84[29] = off_100388780;
        v84[34] = off_1003887B8;
        v84[39] = off_1003887C8;
        v84[44] = off_1003887D0;
        v84[49] = off_1003887D8;
        v84[54] = off_100388968;
        v84[59] = off_100388970;
        v84[64] = off_1003889A0;
        v84[69] = off_100388998;
        sub_100164FB4();
        sub_100257D78();
        v13 = v84[0];
        v14 = v84[5];
        v15 = v84[10];
        v16 = v84[15];
        v82 = v3;
        v17 = v84[20];
        v18 = v84[25];
        v19 = v84[30];
        v74 = v84[35];
        v75 = v84[40];
        v76 = v84[45];
        v77 = v84[50];
        v78 = v84[55];
        v79 = v84[60];
        v80 = v84[65];
        v81 = v84[70];
        CFNumberGetTypeID();
        v20 = sub_100165030();
        sub_1001631D8(v20, v21, v22, v13);
        CFNumberGetTypeID();
        v23 = sub_100165030();
        sub_1001631D8(v23, v24, v25, v14);
        CFNumberGetTypeID();
        v26 = sub_100165030();
        sub_1001631D8(v26, v27, v28, v15);
        CFNumberGetTypeID();
        v29 = sub_100165030();
        sub_1001631D8(v29, @"EscrowPasscodePeriod", v30, v16);
        CFNumberGetTypeID();
        v31 = sub_100165030();
        sub_1001631D8(v31, @"EscrowTokenPeriod", v32, v17);
        CFNumberGetTypeID();
        v33 = sub_100165030();
        sub_1001631D8(v33, v34, v35, v18);
        CFDataGetTypeID();
        v36 = sub_100165030();
        sub_1001631D8(v36, v37, v38, v19);
        CFDataGetTypeID();
        v39 = sub_100165030();
        sub_1001631D8(v39, v40, v41, v74);
        CFNumberGetTypeID();
        v42 = sub_100165030();
        sub_1001631D8(v42, v43, v44, v75);
        CFNumberGetTypeID();
        v45 = sub_100165030();
        sub_1001631D8(v45, v46, v47, v76);
        CFNumberGetTypeID();
        v48 = sub_100165030();
        sub_1001631D8(v48, v49, v50, v77);
        CFBooleanGetTypeID();
        v51 = sub_100165030();
        sub_1001631D8(v51, v52, v53, v78);
        CFBooleanGetTypeID();
        v54 = sub_100165030();
        sub_1001631D8(v54, v55, v56, v79);
        CFNumberGetTypeID();
        v57 = sub_100165030();
        sub_1001631D8(v57, v58, v59, v80);
        CFNumberGetTypeID();
        v60 = sub_100165030();
        sub_1001631D8(v60, v61, v62, v81);
        v63 = sub_100257F2C();
        if ((v63 & 2) != 0)
        {
          v64 = kCFBooleanTrue;
        }

        else
        {
          v64 = kCFBooleanFalse;
        }

        CFDictionarySetValue(Mutable, @"InactivityRebootEnabled", v64);
        if ((v63 & 8) != 0)
        {
          v65 = kCFBooleanTrue;
        }

        else
        {
          v65 = kCFBooleanFalse;
        }

        CFDictionarySetValue(Mutable, @"OnenessAutomaticMode", v65);
        *v82 = Mutable;
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v66, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v67, v68, v69, v70, v71, v72, v73, ":", 1677, "", "");
  }

  sub_10016533C();
  sub_100008048();
}

void sub_1002516D0()
{
  sub_1001653C0();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  sub_100165140();
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v9 = sub_100007A3C();
  if (v9)
  {
    if (v8)
    {
      if (v5)
      {
        if (v3)
        {
          if (!sub_1001626AC(v9, 0x29u, 0, 0, v8, v7, v10, v11, __src, &__count))
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              memcpy(v12, __src, __count);
              *v3 = __count;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 1889, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  sub_10016533C();
  sub_1001653AC();
}

uint64_t sub_1002519D8()
{
  sub_100165214(__stack_chk_guard);
  sub_1001652F8();
  result = (v0 + 6);
  if (v1)
  {
    v4 = v2;
    if (v2)
    {
      v5 = v1;
      v6 = sub_100007A3C();
      if (v6)
      {
        v7 = v6;
        bzero(v37, 0x100uLL);
        result = sub_100162630(v7, 0x31u, v36, 2u, v8, v9, v10, v11, v37, &__count);
        if (!result)
        {
          if (__count > 0x100)
          {
            return sub_1001652EC();
          }

          else
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              sub_1001653D4(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, __count, v36[0], v36[1], v37[0]);
              result = sub_10016530C();
              *v4 = v20;
            }

            else
            {
              return (v0 + 1);
            }
          }
        }
      }

      else
      {
        sub_10016261C();
        fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v25, v26, v27, v28, v29, v30, ":", 2020, "", "");
        return sub_10016503C();
      }
    }
  }

  return result;
}

void sub_100251B1C()
{
  sub_100165418();
  sub_1001652E0();
  __chkstk_darwin(v1);
  *(v0 - 72) = __stack_chk_guard;
  sub_1001652F8();
  if (v2)
  {
    v4 = v3;
    if (v3)
    {
      v5 = v2;
      v6 = sub_100007A3C();
      if (v6)
      {
        v7 = v6;
        bzero(v42, 0x8000uLL);
        sub_100165234();
        if (!sub_100165080(v7, 0x31u, v8, 2u, v9, v10, v11, v12, v25, v27))
        {
          if (__count > 0x8000)
          {
            sub_1001652EC();
          }

          else
          {
            v13 = calloc(__count, 1uLL);
            *v5 = v13;
            if (v13)
            {
              sub_1001653D4(v13, v14, v15, v16, v17, v18, v19, v20, v26, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, __count, v40, v41, v42[0]);
              sub_10016530C();
              *v4 = v21;
            }
          }
        }
      }

      else
      {
        sub_10016261C();
        fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v29, v30, v31, v32, v33, v34, ":", 2042, "", "");
        sub_10016503C();
      }
    }
  }

  v22 = *(v0 - 72);
  sub_100165318();
  sub_100165404();
}

uint64_t sub_100251C7C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __count = 15360;
  v30[0] = v1;
  v30[1] = v8;
  v30[2] = v9;
  v10 = sub_100007A3C();
  if (v10)
  {
    v11 = v10;
    bzero(__src, 0x3C00uLL);
    v16 = sub_100162630(v11, v7, v30, 3u, v12, v13, v14, v15, __src, &__count);
    if (v16)
    {
      return v16;
    }

    else if (__count > 0x3C00)
    {
      sub_1001652D4();
    }

    else
    {
      v7 = 0;
      if (v5 && v3)
      {
        if (__count)
        {
          v17 = calloc(__count, 1uLL);
          *v5 = v17;
          if (!v17)
          {
            sub_100165074();
            return v22 | 1u;
          }

          memcpy(v17, __src, __count);
          v18 = __count;
        }

        else
        {
          v18 = 0;
        }

        sub_1001652C8(v18);
      }
    }
  }

  else
  {
    sub_100165134();
    sub_10016261C();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v23, v24, v25, v26, v27, v28, ":", 2178, "", "");
  }

  return v7;
}

void sub_100251E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t *a21)
{
  sub_100162678();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  bzero(__src, 0x100uLL);
  v70 = 0;
  __count = 256;
  HIDWORD(v68) = 0;
  v72[0] = v34;
  v72[1] = v32;
  v72[2] = v28;
  if (v22 && a21)
  {
    v35 = sub_100007A3C();
    if (v35)
    {
      v43 = v35;
      v44 = sub_100165348(v35, v36, v37, v38, v39, v40, v41, v42, v56, v57, v26, v24, v60, v61, v62, v63, v64, v65, v66, v67, v68, 0);
      sub_100167D20(v44, v45, 2, v46, v47, v48, v49, v50, v30);
      if (v70)
      {
        if (!sub_1001626AC(v43, 0x32u, v72, 3u, v70, v69, v51, v52, __src, &__count) && __count <= 0x100)
        {
          v53 = calloc(__count, 1uLL);
          *v22 = v53;
          if (v53)
          {
            memcpy(v53, __src, __count);
            *a21 = __count;
          }
        }
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v54, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v55, v58, v59, v60, v61, v62, v63, ":", 2072, "", "");
    }
  }

  free(v70);
  sub_100008048();
}

uint64_t sub_10025213C()
{
  v11 = 0;
  v12 = 0;
  sub_1001626E4();
  __n = 0;
  v10 = 0;
  v3 = (v0 + 6);
  v8 = 0;
  if (v1 && v2)
  {
    *&v13 = v1;
    *(&v13 + 1) = v1 + v2;
    v10 = 0;
    sub_100162650();
    if (ccder_blob_decode_range())
    {
      sub_10025A704(&v13, 0x8000000000000001, &v10);
      if (v10)
      {
        sub_100165048();
        v3 = sub_100251C7C(v6);
        if (v3)
        {
          syslog(3, "error: validating v1 local signing key failed: %d");
        }
      }

      else
      {
        v4 = sub_1002519D8();
        if (!v4)
        {
          v5 = v12;
          goto LABEL_10;
        }

        v3 = v4;
        syslog(3, "error: validating (create) v0 local signing key failed: %d", v4);
      }
    }

    else
    {
      syslog(3, "error parsing signing key: %d", v0 + 14);
      v3 = 3758097084;
    }
  }

  v5 = v12;
  v0 = v3;
LABEL_10:
  if (v5)
  {
    sub_100165194(v5, __n);
    free(v12);
  }

  if (v11)
  {
    sub_100165194(v11, v8);
    free(v11);
  }

  return v0;
}

void sub_100252358()
{
  sub_100165418();
  sub_1001652E0();
  __chkstk_darwin(v5);
  sub_100165188();
  v7 = v6;
  *(v4 - 72) = __stack_chk_guard;
  sub_10016528C();
  v8 = sub_100007A3C();
  if (v8)
  {
    v16 = v8;
    if (v1)
    {
      if (v0)
      {
        sub_10016514C((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v34, v37, v40, v42, v44, v46, v48);
        sub_100165234();
        if (!sub_100162630(v16, 0x14u, v17, 2u, v18, v19, v20, v21, v35, v38))
        {
          if (v3)
          {
            v22 = calloc(v3, 1uLL);
            *v1 = v22;
            if (v22)
            {
              sub_1001653D4(v22, v23, v24, v25, v26, v27, v28, v29, v36, v39, v41, v43, v45, v47, v49, v50, v51, v52, v53, v54, v3, v7, 0, v55);
              sub_10016530C();
              *v0 = v30;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v33, v40, v42, v44, v46, v48, v50, ":", 2233, "", "");
    sub_10016503C();
  }

  v31 = *(v4 - 72);
  sub_100165318();
  sub_100165404();
}

void sub_1002524A0()
{
  sub_100165418();
  sub_1001652E0();
  __chkstk_darwin(v5);
  sub_100165188();
  v7 = v6;
  *(v4 - 72) = __stack_chk_guard;
  sub_10016528C();
  v8 = sub_100007A3C();
  if (v8)
  {
    v16 = v8;
    if (v1)
    {
      if (v0)
      {
        sub_10016514C((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v34, v37, v40, v42, v44, v46, v48);
        sub_100165234();
        if (!sub_100162630(v16, 0x14u, v17, 2u, v18, v19, v20, v21, v35, v38))
        {
          if (v3)
          {
            if (v3 % 0x7C)
            {
              sub_1001652EC();
            }

            else
            {
              v22 = calloc(v3, 1uLL);
              *v1 = v22;
              if (v22)
              {
                sub_1001653D4(v22, v23, v24, v25, v26, v27, v28, v29, v36, v39, v41, v43, v45, v47, v49, v50, v51, v52, v53, v54, v3, v7, 1, v55);
                sub_10016530C();
                *v0 = v30 / 0x7C;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v33, v40, v42, v44, v46, v48, v50, ":", 2261, "", "");
    sub_10016503C();
  }

  v31 = *(v4 - 72);
  sub_100165318();
  sub_100165404();
}

void sub_10025260C()
{
  sub_100162678();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v13 = sub_100007A3C();
  if (v13)
  {
    v14 = v13;
    if (v5)
    {
      if (!v3)
      {
        goto LABEL_10;
      }

      v15 = __src;
      p_count = &__count;
      v17 = 1;
    }

    else
    {
      p_count = 0;
      v15 = 0;
      v17 = 0;
    }

    bzero(__src, 0x8000uLL);
    __count = 0x8000;
    v33[0] = v12;
    v33[1] = v11;
    v33[2] = v17;
    v33[3] = v9;
    v33[4] = v7;
    v22 = sub_100162630(v14, 0x15u, v33, 5u, v18, v19, v20, v21, v15, p_count);
    if (v5 && !v22)
    {
      v23 = calloc(__count, 1uLL);
      *v5 = v23;
      if (v23)
      {
        memcpy(v23, __src, __count);
        *v3 = __count;
      }

      else
      {
        sub_100165074();
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v26, v27, v28, v29, v30, v31, ":", 2307, "", "");
    sub_10016503C();
  }

LABEL_10:
  sub_100008048();
}

uint64_t sub_1002527B8()
{
  sub_100007B64();
  sub_100007DD4(__stack_chk_guard);
  if (sub_100007A3C())
  {
    if (v1)
    {
      sub_1000080A0();
      sub_100008060();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
      if (!v0)
      {
        sub_10000803C();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v15, v16, v17, v18, v19, v20, ":", 2339, "", "");
  }

  return v0;
}

uint64_t sub_1002528CC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v28 = v1;
  v24 = 4096;
  v6 = 3758097084;
  v26 = 0;
  memset(__src, 0, sizeof(__src));
  v7 = sub_100007A3C();
  if (v7)
  {
    if (v3)
    {
      v8 = v7;
      bzero(v27, 0x1000uLL);
      v14 = sub_100164FD4(v8, v5, &v28, v9, v10, v11, v12, v13, v27, &v24);
      if (v14)
      {
        return v14;
      }

      else
      {
        if (!sub_1002592D8(v27))
        {
          memcpy(v3, __src, 0x42uLL);
        }

        return 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 2409, "", "");
  }

  return v6;
}

void sub_100252A50()
{
  sub_1001653C0();
  __chkstk_darwin(v1);
  sub_100165254();
  sub_100164FF8(__stack_chk_guard);
  v33 = 4096;
  v34 = v2;
  v3 = sub_100007A3C();
  if (v3)
  {
    if (v0)
    {
      v11 = v3;
      v12 = sub_100165280(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35[0]);
      bzero(v12, v13);
      memset_s(v0, 0x68uLL, 0, 0x68uLL);
      if (!sub_100165080(v11, 0x39u, &v34, 1u, v14, v15, v16, v17, v35, &v33))
      {
        sub_10025A12C(v35, v33, v0);
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v22, v23, v24, v25, v26, v27, ":", 2440, "", "");
  }

  sub_1001651AC();
  sub_1001653AC();
}

void sub_100252BAC()
{
  sub_1001653C0();
  v1 = v0;
  v3 = v2;
  v26[0] = v4;
  v26[1] = v5;
  v26[2] = v6;
  v26[3] = v7;
  __count = 2048;
  v8 = sub_100007A3C();
  if (v8)
  {
    v9 = v8;
    bzero(__src, 0x800uLL);
    if (sub_100165080(v9, 0x3Bu, v26, 4u, v10, v11, v12, v13, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x800)
    {
      sub_1001652D4();
    }

    else if (v3 && v1)
    {
      if (__count)
      {
        v14 = calloc(__count, 1uLL);
        *v3 = v14;
        if (!v14)
        {
          sub_100165074();
          goto LABEL_11;
        }

        memcpy(v14, __src, __count);
        v15 = __count;
      }

      else
      {
        v15 = 0;
      }

      sub_1001652C8(v15);
    }
  }

  else
  {
    sub_100165134();
    sub_10016261C();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 2580, "", "");
  }

LABEL_11:
  sub_1001653AC();
}

void sub_100252D2C()
{
  sub_1001653C0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v25[0] = v8;
  __count = 2048;
  v9 = sub_100007A3C();
  if (v9)
  {
    v10 = v9;
    bzero(__src, 0x800uLL);
    if (!sub_1001626AC(v10, 0x3Du, v25, 1u, v7, v5, v11, v12, __src, &__count) && __count <= 0x800 && v3 && v1)
    {
      if (__count)
      {
        v13 = calloc(__count, 1uLL);
        *v3 = v13;
        if (!v13)
        {
          sub_100165074();
          goto LABEL_11;
        }

        memcpy(v13, __src, __count);
        v14 = __count;
      }

      else
      {
        v14 = 0;
      }

      *v1 = v14;
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 2621, "", "");
  }

LABEL_11:
  sub_1001653AC();
}

void sub_100252EB8()
{
  sub_100162678();
  v4 = v3;
  v6 = v5;
  sub_1001652B4();
  v29[0] = v7;
  v27 = 0;
  v26 = 0;
  bzero(__src, 0x800uLL);
  __count = 2048;
  sub_100167D20(&v27, &v26, 2, v8, v9, v10, v11, v12, v2);
  if (v27)
  {
    v13 = sub_100007A3C();
    if (!v13)
    {
      sub_10016261C();
      fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v1, v0, v21, v22, v23, v24, ":", 2652, "", "");
      goto LABEL_12;
    }

    if (sub_1001650FC(v13, 0x3Eu, v29, v14, v27, v26, v15, v16, __src, &__count))
    {
      goto LABEL_12;
    }

    if (__count > 0x800)
    {
      sub_1001652D4();
      goto LABEL_12;
    }

    if (v6 && v4)
    {
      if (!__count)
      {
        v18 = 0;
        goto LABEL_11;
      }

      v17 = calloc(__count, 1uLL);
      *v6 = v17;
      if (v17)
      {
        memcpy(v17, __src, __count);
        v18 = __count;
LABEL_11:
        sub_1001652C8(v18);
      }
    }
  }

LABEL_12:
  free(v27);
  sub_100008048();
}

uint64_t sub_100253068(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (sub_1002530B8(off_1003886E8, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002530B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4 && a5 && a6 && a4 >= 1)
  {
    sub_100164FB4();
    sub_100257D78();
    if (a2)
    {
      if (*a6 == 8)
      {
        v10 = sub_100257F2C();
        result = 0;
        *a5 = v10;
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    v11 = ccder_decode_tl();
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = v11;
    result = 0;
    *a5 = v12;
    *a6 = 0;
  }

  return result;
}

uint64_t sub_1002531E8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (sub_1002530B8(off_100388718, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100253238(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = sub_1002530B8(off_100388700, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1002532A8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = sub_1002530B8(off_1003886F8, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

void sub_100253318()
{
  sub_1001653C0();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v28[0] = v1;
  v28[1] = v4;
  v28[2] = v5;
  v28[3] = v6;
  bzero(v27, 0x1000uLL);
  __n[0] = 4096;
  v7 = sub_100007A3C();
  if (v7)
  {
    if (!sub_100162630(v7, 0x48u, v28, 4u, v8, v9, v10, v11, v27, __n))
    {
      if (__n[0] - 4097 < 0xFFFFFFFFFFFFF000)
      {
        sub_1001652D4();
      }

      else
      {
        v25 = 0u;
        v26 = 0;
        v22 = 0u;
        v23 = 0u;
        __n[1] = off_100388770;
        v24 = off_100388778;
        sub_100164FB4();
        sub_100257D78();
        if (v22)
        {
          ccder_decode_tl();
        }

        else if (*(&v24 + 1))
        {
          v12 = sub_100257F2C();
          if (v12 <= 0xFF)
          {
            *v3 = v12;
          }
        }
      }
    }
  }

  else
  {
    sub_100165134();
    sub_10016261C();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 2923, "", "");
  }

  sub_100165194(v27, __n[0]);
  sub_1001653AC();
}

void sub_100253594()
{
  sub_1001653C0();
  __chkstk_darwin(v2);
  v4 = v3;
  v6 = v5;
  sub_100165188();
  *&v42[4091] = v7;
  sub_1001653EC(v7, v8, v9, v10, v11, v12, v13, v14, v26, v28, v30, v32, v34, v36);
  if (v1 && v0 && v6 && v4)
  {
    if (sub_100007A3C())
    {
      sub_100165264();
      if (!sub_100164FD4(v15, 0x5Au, &v42[4091], v16, v17, v18, v19, v20, v27, v29))
      {
        v21 = calloc(5uLL, 1uLL);
        *v6 = v21;
        if (v21)
        {
          *v4 = 5;
          v22 = v40;
          v21[4] = v41;
          *v21 = v22;
          v23 = calloc(0xFFBuLL, 1uLL);
          *v1 = v23;
          if (v23)
          {
            *v0 = 4091;
            memcpy(v23, v42, 0x1000uLL);
          }
        }
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v31, v33, v35, v37, v38, v39, ":", 3021, "", "");
    }
  }

  sub_100165194(&v40, 0x1000uLL);
  sub_1001651AC();
  sub_1001653AC();
}

void sub_100253768(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  sub_10016528C();
  v37 = v5;
  sub_1001653EC(v5, v6, v7, v8, v9, v10, v11, v12, v22, v24, v26, v28, v30, v32);
  if (v4 && v2)
  {
    if (sub_100007A3C())
    {
      sub_100165264();
      if (!sub_100164FD4(v13, 0x59u, &v37, v14, v15, v16, v17, v18, v23, v25))
      {
        v19 = calloc(0x1000uLL, 1uLL);
        *v4 = v19;
        if (v19)
        {
          *v2 = 4096;
          memcpy(v19, __src, 0x1000uLL);
        }
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v27, v29, v31, v33, v34, v35, ":", 3053, "", "");
    }
  }

  memset_s(__src, 0x1000uLL, 0, 0x1000uLL);
  sub_1001651AC();
}

void sub_1002538FC()
{
  sub_100162678();
  v39 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  memset(v42, 0, 128);
  v40 = 128;
  v15 = sub_100166934();
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = sub_100165274();
  bzero(v18, v19);
  if (!sub_10025A780(v12, v10, v8, v6, v4, v17, v15))
  {
    v41[0] = v14;
    v41[1] = v17;
    v41[2] = v15;
    if (v2)
    {
      v20 = v39;
      if (v39)
      {
        v21 = sub_100007A3C();
        if (v21)
        {
          if (!sub_100162630(v21, 0x9Bu, v41, 3u, v22, v23, v24, v25, v42, &v40))
          {
            v26 = calloc(v40, 1uLL);
            *v2 = v26;
            if (v26)
            {
              v27 = v40;
              *v20 = v40;
              memcpy(v26, v42, v27);
            }
          }
        }

        else
        {
          sub_10016261C();
          fprintf(v30, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v31, v32, v33, v34, v35, v36, v37, ":", 3152, "", "");
          sub_10016528C();
        }
      }
    }
  }

  v28 = sub_100165274();
  memset_s(v28, v29, 0, v15);
  sub_100165194(v42, v40);
  sub_100008048();
}

void sub_100253B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, void *a24, size_t *a25)
{
  sub_100162678();
  v26 = __chkstk_darwin(v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v64 = 0;
  v65 = 0;
  v63 = v26;
  bzero(__src, 0x4000uLL);
  v60 = a23;
  __count = 0x4000;
  v57[0] = v40;
  memset(__n, 0, sizeof(__n));
  v57[1] = v38;
  v57[2] = v36;
  v57[3] = v34;
  v57[4] = v32;
  v57[5] = v30;
  v57[6] = v28;
  v58 = a21;
  v59 = a22;
  if (sub_100259BC4(v57, &__n[1], __n) || (v64 = *&__n[1], v65 = __n[0], !a24))
  {
    sub_100165140();
  }

  else
  {
    sub_100165140();
    if (a25)
    {
      v41 = sub_100007A3C();
      if (v41)
      {
        if (!sub_100162630(v41, 0x9Fu, &v63, 3u, v42, v43, v44, v45, __src, &__count))
        {
          v46 = calloc(__count, 1uLL);
          *a24 = v46;
          if (v46)
          {
            v47 = __count;
            *a25 = __count;
            memcpy(v46, __src, v47);
          }
        }
      }

      else
      {
        sub_10016261C();
        fprintf(v48, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v49, v50, v51, v52, v53, v54, v55, ":", 3201, "", "");
      }
    }
  }

  sub_100165194(*&__n[1], __n[0]);
  free(*&__n[1]);
  sub_100165194(__src, __count);
  sub_100008048();
}

void sub_100253D30()
{
  sub_100165418();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v11 = sub_100165280(v1, v4, v2, v6, v7, v8, v9, v10, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, v53, v54[0]);
  bzero(v11, v12);
  v51 = v54;
  v52 = &v55;
  v53 = 4096;
  if (v5 && v3)
  {
    v21 = sub_100007A3C();
    if (v21)
    {
      v22 = v21;
      v13 = sub_100258FC4(&v51);
      if (v13)
      {
        v13 = sub_100259020(&v51);
        if (v13)
        {
          sub_100162650();
          v13 = ccder_blob_encode_tl();
          if (v13)
          {
            v13 = sub_100165054(v22, 0x55u, v15, v16, v52, &v55 - v52, v19, v20, v54, &v53);
            if (!v13)
            {
              v13 = sub_1002597B8(v54);
            }
          }
        }
      }
    }

    else
    {
      sub_10016261C();
      v13 = fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v32, v34, v36, v38, v40, v42, ":", 3262, "", "");
    }
  }

  v23 = sub_100165280(v13, v14, v15, v16, v17, v18, v19, v20, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v51, v52, v53, v54[0]);
  memset_s(v23, v24, 0, 0x1000uLL);
  sub_1001651AC();
  sub_100165404();
}

void sub_100253EDC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v1 = (*(a1 + 40) >> 64) | 0x10;
  }

  sub_100253D30();
}

uint64_t sub_100253F48(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = 3758097098;
  output = 0;
  input = v5;
  HIDWORD(v54) = 1;
  v11 = sub_100165280(v1, v5, v2, v6, v7, v8, v9, v10, outputStruct, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, inputStruct, v54, v55);
  bzero(v11, v12);
  v52 = &v55;
  inputStruct = &output;
  if (v3)
  {
    v21 = sub_100007A3C();
    if (v21)
    {
      v22 = v21;
      v13 = sub_100259020(&v52);
      if (v13)
      {
        sub_100162650();
        v13 = ccder_blob_encode_tl();
        if (v13)
        {
          v13 = IOConnectCallMethod(v22, 0x4Eu, &input, 1u, inputStruct, &output - inputStruct, &output, &v54 + 1, 0, 0);
          v4 = v13;
          if (!v13)
          {
            *v3 = output;
          }
        }
      }
    }

    else
    {
      sub_10016261C();
      v13 = fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v27, v33, v35, v37, v39, v41, v43, ":", 3305, "", "");
      v4 = 3758097084;
    }
  }

  else
  {
    v4 = 3758097090;
  }

  v23 = sub_100165280(v13, v14, v15, v16, v17, v18, v19, v20, outputStructa, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, inputStruct, v54, v55);
  memset_s(v23, v24, 0, 0x1000uLL);
  return v4;
}

void sub_1002540D8()
{
  sub_100162678();
  __chkstk_darwin(v0);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v26[0] = v7;
  bzero(__s, 0x1000uLL);
  v22 = __s;
  v23 = v26;
  v24 = 4096;
  if (v6 && v4)
  {
    v8 = sub_100007A3C();
    if (v8)
    {
      v9 = v8;
      if (ccder_blob_encode_body_tl())
      {
        if (sub_100258FC4(&v22))
        {
          if (sub_100259020(&v22))
          {
            sub_100162650();
            if (ccder_blob_encode_tl())
            {
              if (!sub_1001650FC(v9, 0x4Fu, v26, v10, v23, v26 - v23, v11, v12, __s, &v24))
              {
                *&v21 = __s;
                *(&v21 + 1) = &__s[v24];
                sub_100162650();
                if (ccder_blob_decode_range())
                {
                  if (v2)
                  {
                    sub_100166800(&v21, 0, v2);
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 3333, "", "");
    }
  }

  memset_s(__s, 0x1000uLL, 0, 0x1000uLL);
  sub_100008048();
}

void sub_100254300(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100253D30();
  }
}

void sub_1002543BC()
{
  sub_100162678();
  __chkstk_darwin(v0);
  sub_1001652B4();
  bzero(v4, 0x1000uLL);
  bzero(v3, 0x1000uLL);
  v2[0] = v4;
  v2[1] = &v5;
  v1[0] = v3;
  v1[1] = v4;
  if (sub_100258FC4(v2))
  {
    if (sub_100258FC4(v2))
    {
      sub_100162650();
      if (ccder_blob_encode_tl())
      {
        if (sub_100258FC4(v1))
        {
          if (sub_100258FC4(v1))
          {
            sub_100162650();
            if (ccder_blob_encode_tl())
            {
              sub_10024CA34();
            }
          }
        }
      }
    }
  }

  sub_100008048();
}

void sub_100254530(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_100165188();
  bzero(v4, 0x4000uLL);
  sub_100165048();
  sub_10024CA34();
  if (!v3)
  {
    if (ccder_decode_sequence_tl() && ccder_decode_tl())
    {
      __memcpy_chk();
      if (v2)
      {
        *v2 = 0;
      }

      if (v1)
      {
        *v1 = 0;
      }
    }

    else
    {
      sub_10016503C();
    }
  }
}

void sub_100254684()
{
  sub_100162678();
  __chkstk_darwin(v2);
  sub_100165244();
  v4 = v3;
  sub_1001626E4();
  *v6 = v5;
  bzero(__src, 0x8000uLL);
  v28 = 0;
  __count = 0x8000;
  v27 = 0;
  if (v1)
  {
    v7 = sub_100007A3C();
    if (v7)
    {
      v13 = v7;
      if (v4)
      {
        v14 = v4;
      }

      else
      {
        v14 = "";
      }

      sub_100167D20(&v28, &v27, 2, v8, v9, v10, v11, v12, v14);
      if (!sub_1001650FC(v13, 0x50u, v31, v15, v28, v27, v16, v17, __src, &__count))
      {
        v18 = calloc(__count, 1uLL);
        *v1 = v18;
        if (v18)
        {
          memcpy(v18, __src, __count);
          *v0 = __count;
        }
      }
    }

    else
    {
      sub_10016261C();
      fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 3582, "", "");
    }
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  free(v28);
  sub_10016533C();
  sub_100008048();
}

uint64_t sub_1002549B8()
{
  sub_1001626E4();
  if (v2 && v1 && !sub_10024D7B8(0xFFFFFFFFLL))
  {
    sub_100257F8C(off_100388908);
  }

  free(0);
  return v0;
}

uint64_t sub_100254A7C(uint64_t a1, void *a2)
{
  sub_1001626E4();
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (!sub_10024D7B8(v4) && sub_100257EB4(off_100388988, v10, v10 + v9, &v8))
  {
    if (a2)
    {
      v5 = time(0);
      v2 = 0;
      v6 = v5 - v8;
      if (v5 <= v8)
      {
        v6 = 0;
      }

      *a2 = v6;
    }

    else
    {
      v2 = 0;
    }
  }

  free(v10);
  return v2;
}

void sub_100254B20(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  sub_100165140();
  v34 = v3;
  sub_1001653EC(v3, v4, v5, v6, v7, v8, v9, v10, v19, v21, v23, v25, v27, v29);
  if (sub_100007A3C())
  {
    if (v2)
    {
      sub_100165264();
      if (!sub_100164FD4(v11, 0x8Eu, &v34, v12, v13, v14, v15, v16, v20, v22))
      {
        sub_1002592D8(v33);
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v24, v26, v28, v30, v31, v32, ":", 3797, "", "");
  }

  sub_100165194(v33, 0x1000uLL);
  sub_1001651AC();
}

uint64_t sub_100254C64()
{
  sub_100165074();
  v20 = 266;
  result = (v2 + 6);
  if (v0)
  {
    v4 = v1;
    if (v1)
    {
      v5 = v0;
      v6 = sub_100007A3C();
      if (v6)
      {
        v19 = *v4;
        result = sub_1001650A0(v6, 0x68u, &v20, 1u, v7, v8, v9, v10, v5, &v19);
        if (!result)
        {
          *v4 = v19;
        }
      }

      else
      {
        sub_10016261C();
        fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 3823, "", "");
        return sub_10016503C();
      }
    }
  }

  return result;
}

uint64_t sub_100254D6C()
{
  sub_100165074();
  v21 = (v2 << 8) | 1;
  result = (v3 + 6);
  if (v5)
  {
    v6 = v1;
    if (v1)
    {
      sub_100165204();
      v7 = sub_100007A3C();
      if (v7)
      {
        v20 = *v6;
        result = sub_1001650A0(v7, 0x68u, &v21, 1u, v8, v9, v10, v11, v0, &v20);
        if (!result)
        {
          *v6 = v20;
        }
      }

      else
      {
        sub_10016261C();
        fprintf(v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v13, v14, v15, v16, v17, v18, v19, ":", 3847, "", "");
        return sub_10016503C();
      }
    }
  }

  return result;
}

void sub_100254EA4()
{
  sub_100165418();
  __chkstk_darwin(v1);
  v3 = v2;
  sub_100165254();
  v5 = v4;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  bzero(v23, 0x4000uLL);
  v21 = 0x4000;
  v22[0] = 1;
  v22[1] = v5;
  v6 = sub_100007A3C();
  if (v6)
  {
    if (!sub_100165080(v6, 0x87u, v22, 2u, v7, v8, v9, v10, v23, &v21))
    {
      __memcpy_chk();
      *v3 = 44;
      v11 = calloc(0x2CuLL, 1uLL);
      *v0 = v11;
      if (v11)
      {
        v12 = *v3;
        __memcpy_chk();
      }

      else
      {
        sub_100165074();
      }
    }
  }

  else
  {
    sub_100165134();
    sub_10016261C();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 3883, "", "");
  }

  sub_100165298(v23);
  sub_100165404();
}

uint64_t sub_100255040()
{
  sub_100165244();
  sub_100254EA4();
  if (v0)
  {
    return v0;
  }

  else
  {
    return 3758604312;
  }
}

void sub_100255170()
{
  sub_1001653C0();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v33[0] = 2;
  v33[1] = v1;
  bzero(v29, 0xC4uLL);
  bzero(v28, 0x4000uLL);
  v27 = 0x4000;
  v10 = sub_100007A3C();
  if (v10)
  {
    if (!sub_100162630(v10, 0x87u, v33, 2u, v11, v12, v13, v14, v28, &v27))
    {
      __memcpy_chk();
      v15 = calloc(0x28uLL, 1uLL);
      *v9 = v15;
      if (v15)
      {
        *v7 = 40;
        v16 = *&v29[8];
        v17 = v30;
        v15[4] = v31;
        *v15 = v16;
        *(v15 + 1) = v17;
        v18 = calloc(0x91uLL, 1uLL);
        *v5 = v18;
        if (v18)
        {
          *v3 = 145;
          memcpy(v18, v32, 0x91uLL);
        }
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 3943, "", "");
  }

  sub_100165298(v28);
  memset_s(v29, 0xC4uLL, 0, 0xC4uLL);
  sub_1001653AC();
}

uint64_t sub_100255388(uint64_t a1)
{
  v2 = sub_1001623B0();
  if (v2)
  {
    return sub_100165054(v2, 0xCu, v3, v4, *a1, *(a1 + 8), v5, v6, 0, 0);
  }

  else
  {
    return sub_10016503C();
  }
}

uint64_t sub_1002553D0(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2;
  sub_100165214(__stack_chk_guard);
  v6 = 0x4000;
  bzero(__src, 0x4000uLL);
  __count = 0x4000;
  v7 = sub_100007A3C();
  if (v7)
  {
    v6 = (v1 + 6);
    if (v5 && v4)
    {
      v12 = sub_100162630(v7, 0x96u, 0, 0, v8, v9, v10, v11, __src, &__count);
      if (v12)
      {
        v6 = v12;
      }

      else
      {
        v13 = calloc(__count, 1uLL);
        *v5 = v13;
        if (v13)
        {
          v14 = __count;
          *v4 = __count;
          memcpy(v13, __src, v14);
          v6 = 0;
        }

        else
        {
          v6 = (v1 + 1);
        }
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 3992, "", "");
    sub_100165134();
  }

  sub_100165298(__src);
  return v6;
}

void sub_100255534()
{
  sub_100162678();
  if (v1 && v0 <= 0x30)
  {
    v2 = sub_100007A3C();
    if (v2)
    {
      v3 = v2;
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_uint64();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      v5 = v4;
      __chkstk_darwin(v4);
      v7 = &v18[-v6];
      bzero(&v18[-v6], v5);
      ccder_encode_raw_octet_string();
      ccder_encode_uint64();
      ccder_encode_raw_octet_string();
      if (ccder_encode_constructed_tl() == v7)
      {
        sub_1001626AC(v3, 0x72u, 0, 0, v7, v5, v8, v9, 0, 0);
      }

      else
      {
        sub_100165074();
      }
    }

    else
    {
      sub_1001626E4();
      sub_10016261C();
      fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 4036, "", "");
    }
  }

  sub_100008048();
}

void sub_10025572C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v33 = v1;
  sub_1001653EC(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v23, v25, v27);
  __n = 4096;
  v9 = sub_100007A3C();
  if (v9)
  {
    v15 = sub_100164FD4(v9, 0x8Bu, &v33, v10, v11, v12, v13, v14, v32, &__n);
    v16 = __n;
    if (!v15)
    {
      sub_100165140();
      if (v16 - 4097 >= 0xFFFFFFFFFFFFF000)
      {
        sub_10025952C(v32);
        v16 = __n;
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v22, v24, v26, v28, v29, v30, ":", 4130, "", "");
    v16 = 4096;
  }

  sub_100165194(v32, v16);
  sub_1001651AC();
}

uint64_t sub_10025587C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v18 = 4096;
  if (!v1)
  {
    return 4294967285;
  }

  v2 = v1;
  v3 = sub_100007A3C();
  if (v3)
  {
    v4 = v3;
    bzero(v19, 0x1000uLL);
    result = sub_100162630(v4, 0x98u, 0, 0, v5, v6, v7, v8, v19, &v18);
    if (!result)
    {
      if (v18 == 8)
      {
        result = 0;
        *v2 = v19[0];
      }

      else
      {
        return sub_1001652EC();
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 4183, "", "");
    return sub_10016503C();
  }

  return result;
}

void sub_1002559B8()
{
  sub_1001653C0();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v26 = 4096;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v9 = sub_100007A3C();
  if (v9)
  {
    v10 = v9;
    bzero(v27, 0x1000uLL);
    if (!sub_100162630(v10, 0x9Eu, 0, 0, v11, v12, v13, v14, v27, &v26) && !sub_10025AC20(v27, v26, &v23))
    {
      if (v8)
      {
        *v8 = *(&v25 + 1);
      }

      if (v7)
      {
        *v7 = v25;
      }

      if (v5)
      {
        *v5 = *(&v24 + 1);
      }

      if (v3)
      {
        *v3 = v24;
      }
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 4204, "", "");
  }

  sub_1001653AC();
}

uint64_t sub_100255B38(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v8 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v8))
        {
          return 0xFFFFFFFFLL;
        }

        v5 = sub_100165274();
        if (sub_100258940(v5, v6, v7))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        sub_100165274();
        if (sub_100258818())
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (CFDataGetTypeID() != a3)
        {
          return 0xFFFFFFFFLL;
        }

        CFDataGetBytePtr(value);
        CFDataGetLength(value);
        sub_100165274();
        if (sub_10025867C())
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100257224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(__s, 0, sizeof(__s));
  if (a4 == 3)
  {
    ccsha256_di();
    cchmac();
    v5 = 0;
    *a3 = __s[0];
    *(a3 + 2) = BYTE2(__s[0]);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  return v5;
}

uint64_t sub_1002572F0(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v5 = 0;
  sub_100257224(a2, a3, &v5, 3);
  return sub_100165B18(a1, &v5, 3uLL);
}

uint64_t sub_100257348(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v5 = 0xFFFFFFFFLL;
  if ((a2 & 1) == 0)
  {
    v6 = a1;
    if (a1)
    {
      if (a3 && a4)
      {
        v9 = a2 >> 1;
        v10 = calloc(a2 >> 1, 1uLL);
        if (v10)
        {
          if (a2 >= 2)
          {
            v11 = a2 >> 1;
            v12 = v10;
            do
            {
              v13 = *v6;
              v14 = v13 - 48;
              v15 = v13 - 97;
              if ((v13 - 65) >= 6)
              {
                v16 = -1;
              }

              else
              {
                v16 = v13 - 55;
              }

              v17 = v13 - 87;
              if (v15 > 5)
              {
                v17 = v16;
              }

              if (v14 < 0xA)
              {
                v17 = v14;
              }

              v18 = 16 * v17;
              v19 = v6[1];
              v20 = v19 - 48;
              v21 = v19 - 97;
              if ((v19 - 65) >= 6)
              {
                v22 = -1;
              }

              else
              {
                v22 = v19 - 55;
              }

              v23 = v19 - 87;
              if (v21 > 5)
              {
                v23 = v22;
              }

              if (v20 < 0xA)
              {
                v23 = v20;
              }

              *v12++ = v23 | v18;
              v6 += 2;
              --v11;
            }

            while (v11);
          }

          v5 = 0;
          *a3 = v10;
          *a4 = v9;
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_10025744C(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_1002574E0(void **a1, _DWORD *a2, uint64_t a3, unsigned int a4, char a5)
{
  __s = 0;
  __n = 0;
  v10[0] = a3;
  v10[1] = a4;
  v7 = sub_10025744C(&__s, v10, a5);
  if (v7)
  {
    v8 = v7;
LABEL_7:
    memset_s(__s, __n, 0, __n);
    free(__s);
    return v8;
  }

  if (HIDWORD(__n))
  {
    v8 = 4294967286;
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = __n;
  *a1 = __s;
  return v8;
}

uint64_t sub_1002575F0(int *a1, uint64_t (*a2)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), char a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int *a7, int a8)
{
  HIDWORD(v52) = 0;
  v57 = 0u;
  v58 = 0u;
  __s = 0u;
  v56 = 0u;
  *v53 = 0u;
  v54 = 0u;
  v9 = 0xFFFFFFFFLL;
  if (a6 && a7)
  {
    v14 = a1;
    if (a1)
    {
      v15 = *a1;
      if ((*a1 - 1) < 2)
      {
        if ((a3 & 4) != 0)
        {
          v16 = 64;
        }

        else
        {
          v16 = 72;
        }

        HIDWORD(v52) = v16;
        v9 = 0xFFFFFFFFLL;
        if (a2)
        {
          goto LABEL_45;
        }

        v17 = a5 == 32 && *a7 >= v16;
        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = v16;
        if (v15 == 1)
        {
          LODWORD(a1) = sub_100165E60((a1 + 10), &__s);
        }

        else
        {
          v30 = *(a1 + 6);
          __s = *(a1 + 2);
          v56 = v30;
          v31 = *(a1 + 14);
          v57 = *(a1 + 10);
          v58 = v31;
        }

        if ((a3 & 0x80) == 0)
        {
          v32 = v56;
          *a6 = __s;
          *(a6 + 16) = v32;
          if ((a3 & 4) != 0)
          {
            v33 = ccaes_cbc_encrypt_mode();
            v34 = sub_100166130(v33, 32, &v57, &unk_10039D660, 0x20uLL);
            v35 = sub_100008070(v34);
            LODWORD(a1) = sub_100165DE8(v35, 166, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_39:
            v47 = v18;
            v9 = 0;
LABEL_44:
            *a7 = v47;
            goto LABEL_45;
          }

          LODWORD(v52) = 40;
          if ((a3 & 8) != 0)
          {
            v39 = ccsha256_di();
            v51 = v53;
            sub_100166024(v39, v40, &v57);
          }

          sub_10016605C();
          LODWORD(a1) = sub_10016151C(v41, v42, v43, v44, a4, 0x20u, v45, v46);
          if (!a1)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_48;
      }

      if (v15)
      {
        goto LABEL_48;
      }
    }

    if (a2)
    {
      v21 = sub_10016606C();
      LODWORD(a1) = sub_10024BDFC(v21, v22);
      if (a1)
      {
        sub_10016604C();
        if (!v17)
        {
          goto LABEL_48;
        }

        v23 = 0;
        v24 = 0;
        v25 = a2;
        v26 = a4;
LABEL_42:
        LODWORD(a1) = sub_10016151C(v23, v24, 0xA6A6A6A6A6A6A6A6, v25, v26, a5, a6, &v52 + 1);
        if (!a1)
        {
          goto LABEL_43;
        }

LABEL_48:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_45;
      }
    }

    else
    {
      if ((a3 & 4) != 0)
      {
        if ((a5 & 0xF) != 0 || *a7 < a5)
        {
          goto LABEL_48;
        }

        HIDWORD(v52) = a5;
        v36 = ccaes_cbc_encrypt_mode();
        v37 = sub_100166130(v36, 32, (v14 + 3), &unk_10039D660, a5);
        v38 = sub_100008070(v37);
        LODWORD(a1) = sub_100165DE8(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_43:
        v9 = 0;
        v47 = HIDWORD(v52);
        goto LABEL_44;
      }

      v28 = sub_10016606C();
      LODWORD(a1) = sub_10024BDFC(v28, v29);
      if (a1)
      {
        sub_10016604C();
        if (!v17)
        {
          goto LABEL_48;
        }

        if ((a3 & 8) != 0)
        {
          v48 = ccsha256_di();
          v51 = v53;
          sub_100166024(v48, v49, (v14 + 3));
          v23 = v53;
        }

        else
        {
          v23 = (v14 + 3);
        }

        v24 = 32;
        v25 = 0;
        v26 = a4;
        goto LABEL_42;
      }
    }

    v9 = 4294967285;
  }

LABEL_45:
  if ((a3 & 8) != 0)
  {
    sub_1001627D4(a1, a2, a3, a4, a5, a6, a7, a8, v51, v52, v53[0]);
  }

  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  return v9;
}

uint64_t sub_100257924(_DWORD *a1, uint64_t (*a2)(void, void *, unint64_t *, unint64_t *, uint64_t), char a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  HIDWORD(v51) = 0;
  memset(__s, 0, sizeof(__s));
  v8 = 0xFFFFFFFFLL;
  if (a4 && a5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    if (*a1 != 1)
    {
      if (!*a1)
      {
LABEL_6:
        if (a5 <= 0x28)
        {
          if (a2)
          {
            v15 = sub_10016606C();
            if (!sub_10016193C(v15, v16))
            {
              goto LABEL_40;
            }

            sub_10016604C();
            if (!v17)
            {
              goto LABEL_40;
            }

            v18 = &v51 + 1;
            v19 = 0;
            v20 = 0;
            v21 = 0xA6A6A6A6A6A6A6A6;
            v22 = a2;
          }

          else
          {
            if ((a3 & 4) != 0)
            {
              if ((a5 & 0xF) != 0 || *a7 < a5)
              {
                goto LABEL_40;
              }

              HIDWORD(v51) = a5;
              v25 = ccaes_cbc_decrypt_mode();
              v26 = sub_100166130(v25, 32, (a1 + 3), &unk_10039D660, a5);
              v27 = sub_100008070(v26);
              sub_100165DE8(v27, 273, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_33:
              v8 = 0;
              *a7 = HIDWORD(v51);
              goto LABEL_37;
            }

            v23 = sub_10016606C();
            if (!sub_10016193C(v23, v24))
            {
              goto LABEL_40;
            }

            sub_10016604C();
            if (!v17)
            {
              goto LABEL_40;
            }

            if ((a3 & 8) != 0)
            {
              v39 = ccsha256_di();
              sub_100166024(v39, v40, (a1 + 3));
            }

            sub_10016605C();
          }

          if (!sub_1001618D0(v19, v20, v21, v22, a4, a5, a6, v18))
          {
            goto LABEL_33;
          }
        }

        goto LABEL_42;
      }

LABEL_24:
      v8 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    HIDWORD(v51) = 32;
    if (*a7 >= 0x20)
    {
      *v52 = 0uLL;
      v53 = 0uLL;
      if ((a3 & 4) != 0)
      {
        if (a5 == 64)
        {
          sub_100166078();
          v28 = ccaes_cbc_decrypt_mode();
          v29 = sub_100166130(v28, 32, v52, &unk_10039D660, 0x20uLL);
          v30 = sub_100008070(v29);
          v31 = sub_100165DE8(v30, 296, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
          goto LABEL_36;
        }
      }

      else if (a5 == 72)
      {
        sub_100166078();
        if (a3 < 0)
        {
          goto LABEL_24;
        }

        LODWORD(v51) = 32;
        if ((a3 & 8) != 0)
        {
          v41 = ccsha256_di();
          v50 = __s;
          sub_100166024(v41, v42, v52);
        }

        sub_10016605C();
        v31 = sub_1001618D0(v43, v44, v45, v46, v47, 0x28u, a6, v48);
        if (v31)
        {
          sub_1001627D4(v31, v32, v33, v34, v35, v36, v37, v38, v50, v51, v52[0]);
LABEL_42:
          v8 = 4294967277;
          goto LABEL_37;
        }

LABEL_36:
        sub_1001627D4(v31, v32, v33, v34, v35, v36, v37, v38, v50, v51, v52[0]);
        v8 = 0;
        *a7 = 32;
        goto LABEL_37;
      }
    }

LABEL_40:
    v8 = 4294967285;
  }

LABEL_37:
  if ((a3 & 8) != 0)
  {
    memset_s(__s, 0x20uLL, 0, 0x20uLL);
  }

  return v8;
}

uint64_t sub_100257C04(uint64_t *a1, void *a2, unint64_t *a3)
{
  v6 = *a1;
  v7 = cczp_bitlen();
  v8 = calloc(((v7 + 7) >> 2) | 1, 1uLL);
  if (!v8)
  {
    return 4294967279;
  }

  v9 = v8;
  v10 = *a1;
  v11 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v9;
  *a3 = v11;
  return result;
}

BOOL sub_100257C94(uint64_t *a1, void **a2)
{
  if (ccec_import_pub())
  {
    return 0;
  }

  v4 = *a1;
  v5 = &a2[3 * **a2];
  return ccn_read_uint() == 0;
}

uint64_t sub_100257D10(uint64_t a1)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100257D78()
{
  sub_100166B78();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        sub_100166BD4(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100257E48(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_100166A6C();
    sub_100257D78();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t sub_100257EB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    sub_100166A80();
    sub_100257D78();
    return 0;
  }

  return result;
}

uint64_t sub_100257F2C()
{
  sub_100166BB4();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t sub_100257F8C(uint64_t result)
{
  if (result)
  {
    sub_100166A80();
    sub_100257D78();
    return 0;
  }

  return result;
}

__n128 sub_100258024(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  sub_100166B08(a1);
  if (sub_100166BEC())
  {
    *a4 = v8;
    *a3 = v9 - v8;
    result = v10;
    *v4 = v10;
  }

  return result;
}

uint64_t sub_100258080()
{
  sub_100166B78();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  sub_100162650();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (sub_10025812C(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((sub_10025812C(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t sub_10025812C(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

BOOL sub_1002581A8()
{
  sub_100166BB4();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t sub_1002581F8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  sub_100166B08(a1);
  sub_10000807C();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_100166B50(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return sub_100166A30(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return sub_100166A30(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_10025826C()
{
  sub_100166B78();
  v3 = v2;
  v5 = strlen(v4);
  v10 = 0;
  v11 = 0;
  v9[0] = 12;
  v9[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v8 = 0;
    if (sub_100166500(v3, v9, 0, &__src, &v8))
    {
      if (v8 == v0)
      {
        memcpy(v1, __src, v0);
        return 0;
      }

      else
      {
        return 4294967277;
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t sub_100258360(uint64_t a1)
{
  if (a1)
  {
    return sub_100257D78() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t sub_1002583A8(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15 = *(v14 + 1);
                v15 += 16;
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_10025A958);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v27 = v17;
              v28 = &v17[v16];
              v19 = v8 - 1;
              v20 = &v13[-v9 - 8];
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v24 = *(v20 - 1);
                v23 = *v20;
                v25 = ccder_blob_encode_body();
                v20 = v22;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v27 != v28)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_100258578()
{
  result = sub_100166BE0();
  if (v0)
  {
    v6 = v3;
    if (v3)
    {
      if (v4 && v5)
      {
        if (sub_100257D10(v4) <= (v5 - v4))
        {
          v7 = *(v6 + 1);
          v8 = ccder_sizeof();
          if (!sub_100166B9C(v8))
          {
            return 4294967279;
          }

          sub_100166AD8();
          if (ccder_blob_encode_body())
          {
            sub_100166A40();
            sub_100166A20();
            sub_100166AB4();
            sub_100166A20();
            if (v9 == v1)
            {
              v10 = sub_100166B84();
              if (v10)
              {
                return sub_100166A04(v10);
              }
            }
          }

          sub_100166A94();
          free(v1);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_10025867C()
{
  result = sub_100166BE0();
  if (v0 && v3 && v4)
  {
    v5 = *(v3 + 1);
    ccder_sizeof();
    v6 = sub_100007B70();
    if (sub_100166B9C(v6))
    {
      sub_100166AD8();
      v7 = ccder_blob_encode_body();
      if (v7 && (sub_100166B6C(v7, v8, v9, v10, v11, v12, v13, v14, v17), ccder_blob_encode_tl()) && (sub_100166A40(), sub_100166A20(), sub_100166AB4(), sub_100166A20(), v15 == v1) && (v16 = sub_100166B84()) != 0)
      {
        return sub_100166A04(v16);
      }

      else
      {
        sub_100166A94();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_100258760()
{
  sub_100166B78();
  v2 = strlen(v1);
  result = 4294967285;
  if (v0)
  {
    if (v2 <= 0x10)
    {
      __memcpy_chk();
      return sub_10025867C();
    }
  }

  return result;
}

uint64_t sub_100258818()
{
  result = sub_100166BE0();
  if (v0)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v2 + 2;
      v5 = *(v2 + 1);
      ccder_sizeof();
      v6 = sub_100007B70();
      v7 = sub_100166B9C(v6);
      if (v7)
      {
        v8 = v7;
        if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (v9 = v4 + *(v3 + 1), ccder_blob_encode_body(), sub_1000080C4(), sub_100162650(), ccder_blob_encode_tl(), sub_1000080C4(), v10 == v8) && (v11 = sub_100166B84()) != 0)
        {
          return sub_100166A04(v11);
        }

        else
        {
          sub_100166A94();
          free(v8);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        return 4294967279;
      }
    }
  }

  return result;
}

uint64_t sub_100258940(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v11 = 8;
  }

  else
  {
    v7 = 9;
    v8 = 48;
    v9 = 1;
    while ((v7 - 2) >= 2)
    {
      v10 = a3 >> v8;
      --v7;
      v8 -= 8;
      if (v6 != v10)
      {
        v9 = v7 - 1;
        goto LABEL_8;
      }
    }

    v7 = 2;
LABEL_8:
    if ((((a3 >> (8 * v9 - 8)) ^ v6) & 0x80) != 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  v22 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v13 = a2 + 2;
    v14 = *(a2 + 1);
    ccder_sizeof();
    v15 = ccder_sizeof();
    v16 = calloc(v15, 1uLL);
    if (v16)
    {
      v17 = v16;
      v18 = v11;
      do
      {
        *(&v22 + v18 - 1) = v3;
        v3 >>= 8;
        --v18;
      }

      while (v18);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (v19 = v13 + *(a2 + 1), ccder_blob_encode_body(), sub_100166A20(), sub_100162650(), ccder_blob_encode_tl(), sub_100166A20(), v20 == v17) && sub_100166B84())
      {
        result = sub_100166AFC();
        v21[1] = v17;
        v21[2] = v15;
        *v21 = *a1;
        *a1 = v21;
      }

      else
      {
        memset_s(v17, v15, 0, v15);
        free(v17);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_100258B44()
{
  result = sub_100166BE0();
  if (v0)
  {
    v5 = v3;
    if (v3)
    {
      if (v4)
      {
        strlen(v4);
        v6 = *(v5 + 1);
        ccder_sizeof();
        v7 = sub_100007B70();
        if (sub_100166B9C(v7))
        {
          sub_100166AD8();
          if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (sub_100166A40(), sub_100166A20(), sub_100166AB4(), sub_100166A20(), v8 == v1) && (v9 = sub_100166B84()) != 0)
          {
            return sub_100166A04(v9);
          }

          else
          {
            sub_100166A94();
            free(v1);
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100258C34(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (sub_1002583A8(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v7 = a2 + 2 + *(a2 + 1);
      v8 = ccder_sizeof();
      v9 = sub_100166B9C(v8);
      v3 = v9;
      if (v9)
      {
        v15 = v9;
        if (!ccder_blob_encode_body())
        {
          goto LABEL_15;
        }

        v18 = v3;
        v19 = v15;
        v10 = a2 + 2 + *(a2 + 1);
        ccder_blob_encode_body();
        sub_1000080C4();
        v18 = v3;
        v19 = v11;
        sub_100162650();
        ccder_blob_encode_tl();
        sub_1000080C4();
        if (v12 != v3)
        {
          goto LABEL_15;
        }

        v13 = sub_100166B84();
        if (v13)
        {
          v4 = 0;
          v13[1] = v3;
          v13[2] = 0;
          *v13 = *a1;
          *a1 = v13;
          v3 = 0;
        }

        else
        {
LABEL_15:
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t sub_100258DC0(uint64_t a1)
{
  v7 = sub_100166B08(a1);
  if (v2)
  {
    v3 = v2;
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    v6 = *v3;
    v5 = v3[1];
    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v7;
  return 1;
}

uint64_t sub_100258E68(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v37 = *a1;
  if (a2)
  {
    v7 = *a1;
    sub_10000807C();
    v8 = ccder_blob_decode_range();
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v5 = v38;
    v16 = (v39 - v38);
    sub_100166B50(v8, v9, v10, v11, v12, v13, v14, v15, v37, *(&v37 + 1), v38, v39, v40);
LABEL_4:
    sub_10000807C();
    v17 = ccder_blob_decode_range();
    if (v17)
    {
      sub_100166B50(v17, v18, v19, v20, v21, v22, v23, v24, v37, *(&v37 + 1), v38, v39, v40);
      if (v34 <= 4)
      {
        v35 = *v33;
        *a3 = v5;
        *(a3 + 8) = v16;
        *(a3 + 16) = v35;
        *(a3 + 20) = v6;
        return sub_100166A30(v25, v26, v27, v28, v29, v30, v31, v32, v37);
      }
    }

    return 0;
  }

  LODWORD(v40) = v4;
  result = sub_100258F44(&v37, 4, v5, &v40);
  if (result)
  {
    v16 = v40;
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_100258F44(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  sub_100166B08(a1);
  sub_10000807C();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_100166B50(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return sub_100166A30(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return sub_100166A30(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_100258FC4(uint64_t a1)
{
  v17 = sub_100166B08(a1);
  if (v2)
  {
    sub_100166B6C(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_100166B6C(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_100166A30(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_100259020(uint64_t a1)
{
  v17 = sub_100166B08(a1);
  if (v2)
  {
    sub_100166B6C(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_100166B6C(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_100166A30(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_100259080(uint64_t a1, void *a2)
{
  sub_100166B08(a1);
  sub_10000807C();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100166B50(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return sub_100166A30(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t sub_1002590E8()
{
  sub_100166B78();
  v1 = v0;
  v3 = v2;
  v18 = 0;
  if (sub_100258940(&v18, off_100388668, *v2) || sub_100258940(&v18, off_100388670, v3[1]) || sub_100258940(&v18, off_100388678, *(v3 + 1)) || sub_100258940(&v18, off_100388688, v3[4]) || sub_100258940(&v18, off_100388698, v3[5]) || sub_100258940(&v18, off_1003886B0, *(v3 + 26)) || sub_100258940(&v18, off_1003886B8, *(v3 + 34)) || sub_100258940(&v18, off_1003883C0, *(v3 + 42)) || sub_100258940(&v18, off_100388588, *(v3 + 46)) || (v4 = sub_10025867C(), v4) || v1 && (sub_100258940(&v18, off_1003886A0, *(v3 + 66)) || sub_100258940(&v18, off_1003886A8, *(v3 + 67)) || sub_100258940(&v18, off_100388990, *(v3 + 17)) || (v4 = sub_100258940(&v18, off_1003889E0, *(v3 + 19)), v4)) || (v5 = sub_100166B14(v4), v5))
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
    sub_100166AEC(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);
  }

  sub_100166358(&v18);
  return v13;
}

uint64_t sub_1002592D8(uint64_t a1)
{
  result = sub_100166BC8(__stack_chk_guard);
  if (v4 && a1)
  {
    v5 = v3;
    if (v3)
    {
      memset_s(v3, 0x54uLL, 0, 0x54uLL);
      bzero(v7, 0x228uLL);
      v7[4] = off_100388670;
      v7[9] = off_100388678;
      v7[14] = off_100388688;
      v7[19] = off_100388698;
      v7[24] = off_1003886A0;
      v7[29] = off_1003886A8;
      v7[34] = off_1003886B0;
      v7[39] = off_1003886B8;
      v7[44] = off_1003883C0;
      v7[49] = off_100388588;
      v7[54] = off_100388780;
      v8[2] = off_100388990;
      v8[7] = off_1003889E0;
      sub_1001669C4();
      sub_100166C0C();
      *v5 = sub_100257F2C();
      *(v5 + 1) = sub_100257F2C();
      *(v5 + 1) = sub_100257F2C();
      *(v5 + 4) = sub_100257F2C();
      *(v5 + 5) = sub_100257F2C();
      *(v5 + 26) = sub_100257F2C();
      *(v5 + 34) = sub_100257F2C();
      *(v5 + 42) = sub_100257F2C();
      *(v5 + 46) = sub_100257F2C();
      sub_1002581F8(v8, 4, v5 + 50, 16);
      v5[66] = sub_100257F2C();
      v5[67] = sub_100257F2C();
      *(v5 + 68) = sub_100257F2C();
      sub_100257F2C();
      result = sub_100166AFC();
      *(v5 + 76) = v6;
    }
  }

  return result;
}

uint64_t sub_10025952C(uint64_t a1)
{
  result = sub_100166BC8(__stack_chk_guard);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        sub_100166B34(v3);
        bzero(v7, 0x98uLL);
        v7[4] = off_100388688;
        v7[9] = off_100388588;
        v7[14] = off_100388668;
        sub_1001669C4();
        if (sub_100166C0C())
        {
          *v5 = sub_100257F2C();
          v5[1] = sub_100257F2C();
          v5[2] = sub_100257F2C();
          sub_100257F2C();
          result = sub_100166AFC();
          v5[3] = v6;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100259658(uint64_t a1)
{
  result = sub_100166BC8(__stack_chk_guard);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          sub_100166B34(v3);
          sub_100166B34(v8);
          v12 = 0;
          v10[0] = 0u;
          v11 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10[1] = off_100388938;
          v13 = off_100388460;
          sub_1001669C4();
          sub_100257D78();
          if (sub_1002581F8(v10, 4, v7, 16) && sub_1002581F8(&v11 + 8, 4, v8, 16))
          {
            return sub_1002581F8(&v15, 4, v9, 16) - 1;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002597B8(uint64_t a1)
{
  result = sub_100166BC8(__stack_chk_guard);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x58uLL, 0, 0x58uLL);
        bzero(v8, 0x200uLL);
        v8[4] = off_100388460;
        v9[2] = off_100388440;
        v10[2] = off_100388438;
        v10[7] = off_100388458;
        v10[12] = off_1003886E0;
        v12 = off_100388688;
        v13 = off_100388690;
        v14 = off_100388588;
        v15 = off_100388678;
        v16 = off_100388680;
        v17 = off_100388840;
        v18 = off_1003888B0;
        sub_1001669C4();
        sub_100166C0C();
        *v5 = sub_100257F2C();
        if (!sub_1002581F8(v9, 4, v5 + 1, 16))
        {
          return 0xFFFFFFFFLL;
        }

        if (!sub_1002581F8(v10, 4, v5 + 5, 16))
        {
          return 0xFFFFFFFFLL;
        }

        v5[9] = sub_100257F2C();
        v5[10] = sub_100257F2C();
        v5[11] = sub_100257F2C();
        v5[12] = sub_100257F2C();
        v5[15] = sub_100257F2C();
        v5[13] = sub_100257F2C();
        v5[14] = sub_100257F2C();
        if (!sub_1001668AC(&v11))
        {
          return 0xFFFFFFFFLL;
        }

        v6 = v5[9];
        if ((v6 & 0x400) != 0)
        {
          *(v5 + 9) = sub_100257F2C();
          if ((v5[9] & 0x800) == 0)
          {
            return 0;
          }
        }

        else if ((v6 & 0x800) == 0)
        {
          return 0;
        }

        sub_100257F2C();
        result = sub_100166AFC();
        v5[20] = v7;
      }
    }
  }

  return result;
}

uint64_t sub_100259A30(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = sub_100258760();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = sub_100258760();
      }

      v7 = sub_100166B14(a1);
      if (!v7)
      {
        v3 = 0;
        sub_100166AEC(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100166358(&v18);
  return v3;
}

uint64_t sub_100259AEC(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        sub_100007DE4();
        if (sub_100257D78())
        {
          if (!sub_10025826C())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!sub_10025826C())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  sub_100166358(&v6);
  return v3;
}

uint64_t sub_100259BC4(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v3 = 4294967285;
  v23 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && (v5 = a1[1], sub_10025867C()) || a1[2] && (v6 = a1[3], sub_10025867C()) || a1[4] && (v7 = a1[5], sub_10025867C()) || a1[6] && (v8 = a1[7], sub_10025867C()) || a1[8] && (v9 = a1[9], sub_10025867C()) || a1[10] && (v10 = a1[11], sub_10025867C()))
    {
      v3 = 4294967273;
    }

    else
    {
      v11 = sub_1002583A8(&v23, &v21, &v22);
      if (v11)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        sub_100166AEC(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22);
      }
    }
  }

  sub_100166358(&v23);
  return v3;
}

uint64_t sub_100259D24(int a1, int a2, void *__s)
{
  if (!__s)
  {
    return 4294967285;
  }

  memset_s(__s, 0x60uLL, 0, 0x60uLL);
  bzero(v72, 0xE8uLL);
  v71 = off_100388410;
  v72[4] = off_100388A00;
  v72[9] = off_1003889F8;
  v72[14] = off_1003883D0;
  v72[19] = off_1003889F0;
  v72[24] = off_100388448;
  v65 = xmmword_1002DEED0;
  v66 = 0;
  v67 = &v71;
  sub_1001669C4();
  sub_100166C0C();
  sub_1001669D8();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v12 = sub_1001669EC(v4, v5, v6, v7, v8, v9, v10, v11, 6, 0, 0, &v71, v68, v69, v70);
    *(v13 + 24) = v12;
    *__s = v14;
    __s[1] = v15;
  }

  sub_1001669D8();
  v16 = ccder_blob_decode_range();
  if (v16)
  {
    v24 = sub_1001669EC(v16, v17, v18, v19, v20, v21, v22, v23, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    v25[4] = v24;
    __s[2] = v26;
    __s[3] = v27;
  }

  sub_1001669D8();
  v28 = ccder_blob_decode_range();
  if (v28)
  {
    v36 = sub_1001669EC(v28, v29, v30, v31, v32, v33, v34, v35, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    *(v37 + 104) = v36;
    __s[4] = v38;
    __s[5] = v39;
  }

  sub_1001669D8();
  v40 = ccder_blob_decode_range();
  if (v40)
  {
    v48 = sub_1001669EC(v40, v41, v42, v43, v44, v45, v46, v47, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    v49[9] = v48;
    __s[6] = v50;
    __s[7] = v51;
  }

  sub_1001669D8();
  v52 = ccder_blob_decode_range();
  if (v52)
  {
    v60 = sub_1001669EC(v52, v53, v54, v55, v56, v57, v58, v59, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    *(v61 + 184) = v60;
    __s[8] = v62;
    __s[9] = v63;
  }

  sub_1001669D8();
  if ((ccder_blob_decode_range() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  __s[10] = v68;
  __s[11] = (v69 - v68);
  return result;
}

uint64_t sub_100259F1C(uint64_t a1, void *a2, _DWORD *a3)
{
  v17 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!sub_100258760())
      {
        v5 = sub_100258760();
        if (!v5)
        {
          v6 = sub_100166B14(v5);
          if (!v6)
          {
            v3 = 0;
            sub_100166AEC(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100166358(&v17);
  return v3;
}

uint64_t sub_100259FCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        sub_100166B34(a3);
        sub_100007DE4();
        if (sub_100257D78())
        {
          sub_10025826C();
          sub_10025826C();
          v3 = 0;
        }
      }
    }
  }

  sub_100166358(&v5);
  return v3;
}

uint64_t sub_10025A078(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    sub_1001669C4();
    sub_100257D78();
    return sub_100257F2C() & 0x1F;
  }

  return v2;
}

uint64_t sub_10025A12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v10, 0xE8uLL);
  v9 = off_1003886C0;
  v10[4] = off_1003886C8;
  v10[9] = off_1003886D0;
  v10[14] = off_1003886D8;
  v10[19] = off_100388448;
  v11[2] = off_1003889E8;
  v6 = xmmword_1002DEED0;
  v7 = 0;
  v8 = &v9;
  sub_1001669C4();
  sub_100257D78();
  *a3 = sub_100257F2C();
  *(a3 + 4) = sub_100257F2C();
  *(a3 + 8) = sub_100257F2C();
  *(a3 + 12) = sub_100257F2C();
  v5 = 65;
  if (!sub_100258F44(v11, 4, (a3 + 16), &v5))
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + 88) = v5;
  return sub_1002581F8(&v12, 4, (a3 + 96), 3) - 1;
}

void *sub_10025A2A4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = off_1003883B8;
      if (off_1003883B8)
      {
        sub_100166A6C();
        sub_100257D78();
        return 0;
      }
    }
  }

  return v2;
}

void *sub_10025A664(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  sub_100166B08(a1);
  sub_10000807C();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  sub_100166B50(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return sub_100166A30(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t sub_10025A704(__int128 *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = *a1;
  result = sub_100166BEC();
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v7;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_10025A780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  sub_100162650();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t sub_10025A84C(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v51) = a6;
  *(&v51 + 1) = a6 + a7;
  sub_100162650();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = sub_100166BD4(v12, v13, v14, v15, v16, v17, v18, v19, v46, 0, v51);
  v22 = sub_10025A704(v20, 0x8000000000000003, v21);
  if (!v22)
  {
    return 4294967277;
  }

  if (a5)
  {
    sub_100166B5C();
    *a5 = v30;
  }

  v31 = sub_100166BD4(v22, v23, v24, v25, v26, v27, v28, v29, v47, v49, v52);
  v33 = sub_10025A704(v31, 0x8000000000000002, v32);
  if (!v33)
  {
    return 4294967277;
  }

  if (a4)
  {
    sub_100166B5C();
    *a4 = v41;
  }

  v42 = sub_100166BD4(v33, v34, v35, v36, v37, v38, v39, v40, v48, v50, v53);
  if (!sub_10025A704(v42, 0x8000000000000001, v43))
  {
    return 4294967277;
  }

  if (a3)
  {
    sub_100166B5C();
    *a3 = v44;
  }

  sub_1001669D8();
  if (ccder_blob_decode_range())
  {
    v51 = v56;
    if (a1)
    {
      if (a2)
      {
        *a1 = v54;
        *a2 = (v55 - v54);
      }
    }
  }

  if (v51 == *(&v51 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

uint64_t sub_10025A958(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *a1 + *(a1 + 8);
  __s2 = *a2;
  v5 = *a2 + *(a2 + 8);
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v6 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v6, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t sub_10025AB54(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = (a1 + 1);
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = v11 + 4;
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10025AC20(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !sub_10025A704(&v6, 0x8000000000000005, a3 + 3) || !sub_10025A704(&v6, 0x8000000000000004, a3 + 5) || !sub_10025A704(&v6, 0x8000000000000003, a3 + 2) || !sub_10025A704(&v6, 0x8000000000000002, a3 + 4) || !sub_10025A704(&v6, 0x8000000000000001, a3 + 1))
  {
    return 4294967277;
  }

  v4 = sub_10025A704(&v6, 0x8000000000000000, a3);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

void sub_10025B3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"KTFlags.m" lineNumber:72 description:{@"state machine tried to handle unknown flag %@", a3}];
}

void sub_10025B850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"KTStateMachine.m" lineNumber:172 description:{@"state machine tried to enter unknown state %@", a3}];
}

void sub_1002606A0()
{
  sub_1002465D4();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_1002465C4();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1002606F8()
{
  sub_1002465D4();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_1002465C4();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100260750()
{
  sub_1002465D4();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_1002465C4();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1002607A8()
{
  sub_1002465D4();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_1002465C4();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularBoolField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularBoolField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularBoolField(value:)();
}

uint64_t dispatch thunk of Decoder.decodeSingularInt64Field(value:)()
{
  return dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}