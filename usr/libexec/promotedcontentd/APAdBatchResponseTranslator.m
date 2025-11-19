@interface APAdBatchResponseTranslator
- (id)contentDataWithError:(id)a3 identifier:(id)a4 journeyStartRelayValues:(id)a5;
- (id)fixupFormattedText:(id)a3;
- (id)translate:(id *)a3;
- (void)_addContentDataWithErrorForError:(id)a3 identifier:(id)a4 toResults:(id)a5 journeyStartRelayValues:(id)a6;
@end

@implementation APAdBatchResponseTranslator

- (id)contentDataWithError:(id)a3 identifier:(id)a4 journeyStartRelayValues:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [v6 domain];
  v9 = [v8 isEqualToString:@"com.apple.ap.AdValidationErrorDomain"];

  if (v9)
  {
    v10 = [v6 code];
    if ((v10 - 4505) >= 5)
    {
      v11 = 1021;
    }

    else
    {
      v11 = qword_1003F07B0[(v10 - 4505)];
    }
  }

  else
  {
    v12 = [v6 domain];
    v13 = [v12 isEqualToString:@"com.apple.ap.DaemonDiscardedErrorDomain"];

    if (v13)
    {
      if ([v6 code] == 2600)
      {
        v11 = 1020;
      }

      else
      {
        v16 = APLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v22 = 134217984;
          v23 = [v6 code];
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%ld is not a valid discard reason.", &v22, 0xCu);
        }

        v11 = 0;
      }
    }

    else
    {
      v14 = [v6 domain];
      v15 = [v14 isEqualToString:NSURLErrorDomain];

      if (v15)
      {
        v11 = 1010;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  v17 = [APContentDataInternal alloc];
  v18 = +[NSUUID UUID];
  v19 = [v18 UUIDString];
  v20 = [(APContentDataInternal *)v17 initWithUnfilledReason:v11 error:v6 contentIdentifier:v19 contextIdentifier:0 containerSize:-1 placementType:v7 journeyStartRelayValues:0.0, 0.0];

  return v20;
}

- (id)translate:(id *)a3
{
  if (a3)
  {
    v3 = a3;
    if (!+[APSystemInternal isAppleInternalInstall])
    {
      goto LABEL_8;
    }

    v4 = +[APMockAdServerSettings settings];
    v5 = [v4 logAdResponsesAsText];
    if (([v5 BOOLValue]& 1) != 0)
    {
      v6 = [(APResponseDataTranslator *)self response];
      v7 = [v6 formattedText];

      if (!v7)
      {
        goto LABEL_8;
      }

      v8 = [(APResponseDataTranslator *)self response];
      v9 = [v8 formattedText];
      v4 = [(APAdBatchResponseTranslator *)self fixupFormattedText:v9];

      v5 = APLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v107 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "APPBAdBatchResponse text:\n%{private}@", buf, 0xCu);
      }
    }

LABEL_8:
    v10 = +[NSMutableArray array];
    if (*v3)
    {
      v11 = [*v3 domain];
      v12 = [v11 isEqualToString:@"com.apple.ap.HTTPError"];

      if (v12)
      {
        v13 = [*v3 code];
        v14 = 4509;
        if ((v13 - 500) >= 0x64)
        {
          v14 = 0;
        }

        if ((v13 - 400) >= 0x64)
        {
          v15 = v14;
        }

        else
        {
          v15 = 4508;
        }

        v16 = [(APResponseDataTranslator *)self requester];
        v17 = [v16 requestIdentifier];
        v18 = [NSString stringWithFormat:@"Server returned HTTP error %ld for request %@", v13, v17];
        *v3 = [APLegacyInterfaceError validationErrorWithCode:v15 andReason:v18];
      }

      v19 = *v3;
LABEL_17:
      v20 = [(APResponseDataTranslator *)self requester];
      v21 = [v20 requestIdentifier];
      [(APAdBatchResponseTranslator *)self _addContentDataWithErrorForError:v19 identifier:v21 toResults:v10 journeyStartRelayValues:0];

LABEL_18:
      v22 = v10;
      v23 = v22;
      goto LABEL_22;
    }

    v25 = self;
    v26 = [(APResponseDataTranslator *)self response];
    v27 = [v26 hasError];

    if (!v27)
    {
LABEL_35:
      if (*v3)
      {
LABEL_42:
        v57 = APLogForCategory();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = [(APResponseDataTranslator *)v25 requester];
          v59 = [v58 requestIdentifier];
          v60 = [*v3 code];
          v61 = [*v3 localizedDescription];
          *buf = 138543874;
          v107 = v59;
          v108 = 2048;
          *v109 = v60;
          v25 = self;
          *&v109[8] = 2114;
          v110 = v61;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Content with ID %{public}@ failed verification with error code %ld: %{public}@", buf, 0x20u);
        }

LABEL_45:
        v62 = [(APResponseDataTranslator *)v25 response];
        v63 = [v62 ads];
        if (v63)
        {
          v64 = v63;
          v65 = [(APResponseDataTranslator *)v25 response];
          v66 = [v65 ads];
          v67 = [v66 count];

          if (v67)
          {
            v97 = v10;
            v95 = v3;
            v96 = +[NSDate date];
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            v68 = self;
            v69 = [(APResponseDataTranslator *)self response];
            v70 = [v69 ads];

            obj = v70;
            v100 = [v70 countByEnumeratingWithState:&v101 objects:v105 count:16];
            if (v100)
            {
              v99 = *v102;
              v71 = 1;
              do
              {
                for (i = 0; i != v100; i = i + 1)
                {
                  if (*v102 != v99)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v73 = *(*(&v101 + 1) + 8 * i);
                  v74 = [(APResponseDataTranslator *)v68 requester];
                  v75 = [v73 adOriginalRequesterId];
                  v76 = [v74 requestFromRequestID:v75];

                  if (v76)
                  {
                    v77 = [APAdDataResponseTranslator alloc];
                    v78 = [(APResponseDataTranslator *)v68 requester];
                    v79 = [v76 identifier];
                    v80 = [v79 UUIDString];
                    v81 = [v76 context];
                    v82 = -[APAdDataResponseTranslator initWithResponse:forRequester:contentIdentifier:withContext:placement:](v77, "initWithResponse:forRequester:contentIdentifier:withContext:placement:", v73, v78, v80, v81, [v76 placementType]);

                    v83 = [(APAdDataResponseTranslator *)v82 translate:v95];
                    if ([v76 placementType] == 7)
                    {
                      +[NSUUID UUID];
                    }

                    else
                    {
                      [v76 identifier];
                    }
                    v84 = ;
                    v85 = [v84 UUIDString];
                    v86 = [v83 content];
                    [v86 setIdentifier:v85];

                    v87 = [v83 content];
                    [v87 setReceivedReferenceTime:v96];

                    v88 = [v83 privateContent];
                    [v88 setSequenceNumber:v71];

                    v68 = self;
                    v89 = [(APResponseDataTranslator *)self response];
                    v90 = [v89 batchId];
                    v91 = [v83 privateContent];
                    [v91 setBatchResponseID:v90];

                    v92 = [v73 adOriginalRequesterId];
                    [v83 setAdOriginalRequesterId:v92];

                    [v97 addObject:v83];
                    v71 = (v71 + 1);
                  }
                }

                v100 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
              }

              while (v100);
            }

            v22 = v97;
            v23 = v22;
            goto LABEL_22;
          }
        }

        else
        {
        }

        v19 = *v3;
        if (!*v3)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v48 = [(APResponseDataTranslator *)v25 response];
      v49 = [v48 ads];
      if (v49)
      {
        v50 = v49;
        v51 = [(APResponseDataTranslator *)v25 response];
        v52 = [v51 ads];
        v53 = [v52 count];

        v25 = self;
        if (v53)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }

      v54 = [(APResponseDataTranslator *)v25 requester];
      v55 = [v54 requestIdentifier];
      v56 = [NSString stringWithFormat:@"AdBatchResponse contained no ads for request %@", v55];
      *v3 = [APLegacyInterfaceError validationErrorWithCode:4504 andReason:v56];

      v25 = self;
LABEL_41:
      if (!*v3)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v28 = [(APResponseDataTranslator *)self response];
    v29 = [v28 error];

    if (v29 == 1)
    {
      v30 = [(APResponseDataTranslator *)self response];
      v36 = [v30 errorDetails];
      v32 = [(APResponseDataTranslator *)self requester];
      v33 = [v32 requestIdentifier];
      v34 = [NSString stringWithFormat:@"Server returned No_Qualified error %u for request %@", v36, v33];
      v35 = 4510;
    }

    else
    {
      if (v29 != 2)
      {
        v94 = v3;
        v37 = APLogForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = [(APResponseDataTranslator *)self requester];
          v39 = [v38 requestIdentifier];
          v40 = [(APResponseDataTranslator *)self response];
          v41 = [v40 error];
          v42 = [(APResponseDataTranslator *)self response];
          v43 = [v42 errorDetails];
          *buf = 138543874;
          v107 = v39;
          v108 = 1024;
          *v109 = v41;
          *&v109[4] = 1024;
          *&v109[6] = v43;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Serving returned AdBatchRequest for content %{public}@ with unknown error %u and error details %u", buf, 0x18u);

          v25 = self;
        }

        v30 = [(APResponseDataTranslator *)v25 response];
        v44 = [v30 error];
        [(APResponseDataTranslator *)v25 response];
        v32 = v45 = v25;
        v46 = [v32 errorDetails];
        v33 = [(APResponseDataTranslator *)v45 requester];
        v34 = [v33 requestIdentifier];
        v47 = [NSString stringWithFormat:@"Server returned unrecognized error %u with details %u for request %@", v44, v46, v34];
        [APLegacyInterfaceError validationErrorWithCode:4510 andReason:v47];
        *v94 = v3 = v94;

        goto LABEL_34;
      }

      v30 = [(APResponseDataTranslator *)self response];
      v31 = [v30 errorDetails];
      v32 = [(APResponseDataTranslator *)self requester];
      v33 = [v32 requestIdentifier];
      v34 = [NSString stringWithFormat:@"Server returned configuration error %u for request %@", v31, v33];
      v35 = 4505;
    }

    *v3 = [APLegacyInterfaceError validationErrorWithCode:v35 andReason:v34];
LABEL_34:

    v25 = self;
    goto LABEL_35;
  }

  v22 = APLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error is nil.", buf, 2u);
  }

  v23 = &__NSArray0__struct;
LABEL_22:

  return v23;
}

- (void)_addContentDataWithErrorForError:(id)a3 identifier:(id)a4 toResults:(id)a5 journeyStartRelayValues:(id)a6
{
  v10 = a3;
  if (v10)
  {
    v11 = a5;
    v12 = [(APAdBatchResponseTranslator *)self contentDataWithError:v10 identifier:a4 journeyStartRelayValues:a6];
    [v11 addObject:v12];

    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v12 content];
      v15 = [v14 identifier];
      v16 = 138543618;
      v17 = v15;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Content %{public}@ is being returned with an error: %{public}@", &v16, 0x16u);
    }
  }
}

- (id)fixupFormattedText:(id)a3
{
  v3 = a3;
  v81 = 0;
  v4 = [[NSRegularExpression alloc] initWithPattern:@"unfilledReasonCode:\\ (\\w+)\\"" options:0 error:&v81];
  v5 = v81;
  v6 = [v4 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;
  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && [v6 numberOfRanges] >= 2)
  {
    v9 = [v7 rangeAtIndex:1];
    v11 = [v3 substringWithRange:{v9, v10}];
    if ([v11 isEqualToString:@"InventoryUnavailable"])
    {
      v12 = 201;
    }

    else if ([v11 isEqualToString:@"GlobalExclusion"])
    {
      v12 = 202;
    }

    else if ([v11 isEqualToString:@"PolicyExclusion"])
    {
      v12 = 203;
    }

    else if ([v11 isEqualToString:@"LimitExceeded"])
    {
      v12 = 204;
    }

    else if ([v11 isEqualToString:@"AdsDisabledInIssue"])
    {
      v12 = 205;
    }

    else
    {
      v12 = 201;
    }

    v13 = [NSNumber numberWithInt:v12];
    v14 = [v3 length];
    v15 = [NSString stringWithFormat:@"unfilledReasonCode: %@", v13];
    v16 = [v4 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{v14, v15}];

    v3 = v16;
  }

  v80 = v5;
  v17 = [[NSRegularExpression alloc] initWithPattern:@"specification\\ \\{.\\s+type:\\ \\(\\w+)\\.\\}" options:8 error:&v80];
  v18 = v80;

  v19 = [v17 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v72 = v19;
  if (v19)
  {
    v20 = v19;
    if ([v19 count])
    {
      if (!v18)
      {
        v71 = v7;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v76 objects:v82 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v77;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v77 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v76 + 1) + 8 * i);
              if ([v26 numberOfRanges] >= 2)
              {
                v27 = [v26 rangeAtIndex:1];
                v29 = [v3 substringWithRange:{v27, v28}];
                if ([v29 isEqualToString:@"Banner"])
                {
                  v30 = 0;
                }

                else if ([v29 isEqualToString:@"Interstitial"])
                {
                  v30 = 2;
                }

                else if ([v29 isEqualToString:@"IABMediumRectangle"])
                {
                  v30 = 4;
                }

                else if ([v29 isEqualToString:@"Audio"])
                {
                  v30 = 5;
                }

                else if ([v29 isEqualToString:@"Video"])
                {
                  v30 = 8;
                }

                else if ([v29 isEqualToString:@"Flexible"])
                {
                  v30 = 9;
                }

                else if ([v29 isEqualToString:@"Native"])
                {
                  v30 = 10;
                }

                else if ([v29 isEqualToString:@"Sponsorship"])
                {
                  v30 = 11;
                }

                else
                {
                  v30 = 0;
                }

                v31 = [NSNumber numberWithInt:v30];
                v32 = [v3 length];
                v33 = [NSString stringWithFormat:@"specification {\n   type: %@\n}", v31];
                v34 = [v17 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{v32, v33}];

                v3 = v34;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v76 objects:v82 count:16];
          }

          while (v23);
        }

        v18 = 0;
        v7 = v71;
      }
    }
  }

  v75 = v18;
  v35 = [[NSRegularExpression alloc] initWithPattern:@"action:\\ \\(\\w+)\\"" options:0 error:&v75];
  v36 = v75;

  v37 = [v35 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];

  if (v37 && !v36 && [v37 numberOfRanges] >= 2)
  {
    v38 = [v37 rangeAtIndex:1];
    v40 = [v3 substringWithRange:{v38, v39}];
    if ([v40 isEqualToString:@"None"])
    {
      v41 = 0;
    }

    else if ([v40 isEqualToString:@"Web"])
    {
      v41 = 1;
    }

    else if ([v40 isEqualToString:@"Storyboard"])
    {
      v41 = 2;
    }

    else if ([v40 isEqualToString:@"iTunesStore"])
    {
      v41 = 8;
    }

    else if ([v40 isEqualToString:@"WebView"])
    {
      v41 = 10;
    }

    else if ([v40 isEqualToString:@"App"])
    {
      v41 = 11;
    }

    else if ([v40 isEqualToString:@"MRAID"])
    {
      v41 = 12;
    }

    else if ([v40 isEqualToString:@"WebVideo"])
    {
      v41 = 13;
    }

    else
    {
      v41 = 0;
    }

    v42 = [NSNumber numberWithInt:v41];
    v43 = [v3 length];
    v44 = [NSString stringWithFormat:@"action: %@", v42];
    v45 = [v35 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{v43, v44}];

    v3 = v45;
  }

  v74 = v36;
  v46 = [[NSRegularExpression alloc] initWithPattern:@"transitionType:\\ \\(\\w+)\\"" options:0 error:&v74];
  v47 = v74;

  v48 = [v46 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];

  if (v48 && !v47 && [v48 numberOfRanges] >= 2)
  {
    v49 = 1;
    v50 = [v48 rangeAtIndex:1];
    v52 = [v3 substringWithRange:{v50, v51}];
    if (([v52 isEqualToString:@"Slide"] & 1) == 0)
    {
      if ([v52 isEqualToString:@"Fade"])
      {
        v49 = 2;
      }

      else
      {
        v49 = 1;
      }
    }

    v53 = [NSNumber numberWithInt:v49];
    v54 = [v3 length];
    v55 = [NSString stringWithFormat:@"transitionType: %@", v53];
    v56 = [v46 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{v54, v55}];

    v3 = v56;
  }

  v73 = v47;
  v57 = [[NSRegularExpression alloc] initWithPattern:@"adPrivacyMarkPosition:\\ \\(\\w+)\\"" options:0 error:&v73];
  v58 = v73;

  v59 = [v57 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];

  if (v59)
  {
    v60 = v72;
    if (!v58 && [v59 numberOfRanges] >= 2)
    {
      v61 = [v59 rangeAtIndex:1];
      v63 = [v3 substringWithRange:{v61, v62}];
      if ([v63 isEqualToString:@"BottomRight"])
      {
        v64 = 0;
      }

      else if ([v63 isEqualToString:@"TopRight"])
      {
        v64 = 1;
      }

      else if ([v63 isEqualToString:@"TopLeft"])
      {
        v64 = 2;
      }

      else if ([v63 isEqualToString:@"BottomLeft"])
      {
        v64 = 3;
      }

      else if ([v63 isEqualToString:@"NoAdPrivacyMark"])
      {
        v64 = 4;
      }

      else
      {
        v64 = 0;
      }

      v65 = [NSNumber numberWithInt:v64];
      v66 = [v3 length];
      v67 = [NSString stringWithFormat:@"adPrivacyMarkPosition: %@", v65];
      v68 = [v57 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{v66, v67}];

      v3 = v68;
    }
  }

  else
  {
    v60 = v72;
  }

  v69 = v3;

  return v3;
}

@end