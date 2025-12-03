@interface APAdBatchResponseTranslator
- (id)contentDataWithError:(id)error identifier:(id)identifier journeyStartRelayValues:(id)values;
- (id)fixupFormattedText:(id)text;
- (id)translate:(id *)translate;
- (void)_addContentDataWithErrorForError:(id)error identifier:(id)identifier toResults:(id)results journeyStartRelayValues:(id)values;
@end

@implementation APAdBatchResponseTranslator

- (id)contentDataWithError:(id)error identifier:(id)identifier journeyStartRelayValues:(id)values
{
  errorCopy = error;
  valuesCopy = values;
  domain = [errorCopy domain];
  v9 = [domain isEqualToString:@"com.apple.ap.AdValidationErrorDomain"];

  if (v9)
  {
    code = [errorCopy code];
    if ((code - 4505) >= 5)
    {
      v11 = 1021;
    }

    else
    {
      v11 = qword_1003F07B0[(code - 4505)];
    }
  }

  else
  {
    domain2 = [errorCopy domain];
    v13 = [domain2 isEqualToString:@"com.apple.ap.DaemonDiscardedErrorDomain"];

    if (v13)
    {
      if ([errorCopy code] == 2600)
      {
        v11 = 1020;
      }

      else
      {
        v16 = APLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v22 = 134217984;
          code2 = [errorCopy code];
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%ld is not a valid discard reason.", &v22, 0xCu);
        }

        v11 = 0;
      }
    }

    else
    {
      domain3 = [errorCopy domain];
      v15 = [domain3 isEqualToString:NSURLErrorDomain];

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
  uUIDString = [v18 UUIDString];
  v20 = [(APContentDataInternal *)v17 initWithUnfilledReason:v11 error:errorCopy contentIdentifier:uUIDString contextIdentifier:0 containerSize:-1 placementType:valuesCopy journeyStartRelayValues:0.0, 0.0];

  return v20;
}

- (id)translate:(id *)translate
{
  if (translate)
  {
    translateCopy = translate;
    if (!+[APSystemInternal isAppleInternalInstall])
    {
      goto LABEL_8;
    }

    v4 = +[APMockAdServerSettings settings];
    logAdResponsesAsText = [v4 logAdResponsesAsText];
    if (([logAdResponsesAsText BOOLValue]& 1) != 0)
    {
      response = [(APResponseDataTranslator *)self response];
      formattedText = [response formattedText];

      if (!formattedText)
      {
        goto LABEL_8;
      }

      response2 = [(APResponseDataTranslator *)self response];
      formattedText2 = [response2 formattedText];
      v4 = [(APAdBatchResponseTranslator *)self fixupFormattedText:formattedText2];

      logAdResponsesAsText = APLogForCategory();
      if (os_log_type_enabled(logAdResponsesAsText, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v107 = v4;
        _os_log_impl(&_mh_execute_header, logAdResponsesAsText, OS_LOG_TYPE_DEFAULT, "APPBAdBatchResponse text:\n%{private}@", buf, 0xCu);
      }
    }

LABEL_8:
    v10 = +[NSMutableArray array];
    if (*translateCopy)
    {
      domain = [*translateCopy domain];
      v12 = [domain isEqualToString:@"com.apple.ap.HTTPError"];

      if (v12)
      {
        code = [*translateCopy code];
        v14 = 4509;
        if ((code - 500) >= 0x64)
        {
          v14 = 0;
        }

        if ((code - 400) >= 0x64)
        {
          v15 = v14;
        }

        else
        {
          v15 = 4508;
        }

        requester = [(APResponseDataTranslator *)self requester];
        requestIdentifier = [requester requestIdentifier];
        v18 = [NSString stringWithFormat:@"Server returned HTTP error %ld for request %@", code, requestIdentifier];
        *translateCopy = [APLegacyInterfaceError validationErrorWithCode:v15 andReason:v18];
      }

      v19 = *translateCopy;
LABEL_17:
      requester2 = [(APResponseDataTranslator *)self requester];
      requestIdentifier2 = [requester2 requestIdentifier];
      [(APAdBatchResponseTranslator *)self _addContentDataWithErrorForError:v19 identifier:requestIdentifier2 toResults:v10 journeyStartRelayValues:0];

LABEL_18:
      v22 = v10;
      v23 = v22;
      goto LABEL_22;
    }

    selfCopy8 = self;
    response3 = [(APResponseDataTranslator *)self response];
    hasError = [response3 hasError];

    if (!hasError)
    {
LABEL_35:
      if (*translateCopy)
      {
LABEL_42:
        v57 = APLogForCategory();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          requester3 = [(APResponseDataTranslator *)selfCopy8 requester];
          requestIdentifier3 = [requester3 requestIdentifier];
          code2 = [*translateCopy code];
          localizedDescription = [*translateCopy localizedDescription];
          *buf = 138543874;
          v107 = requestIdentifier3;
          v108 = 2048;
          *v109 = code2;
          selfCopy8 = self;
          *&v109[8] = 2114;
          v110 = localizedDescription;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Content with ID %{public}@ failed verification with error code %ld: %{public}@", buf, 0x20u);
        }

LABEL_45:
        response4 = [(APResponseDataTranslator *)selfCopy8 response];
        v63 = [response4 ads];
        if (v63)
        {
          v64 = v63;
          response5 = [(APResponseDataTranslator *)selfCopy8 response];
          v66 = [response5 ads];
          v67 = [v66 count];

          if (v67)
          {
            v97 = v10;
            v95 = translateCopy;
            v96 = +[NSDate date];
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            selfCopy4 = self;
            response6 = [(APResponseDataTranslator *)self response];
            v70 = [response6 ads];

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
                  requester4 = [(APResponseDataTranslator *)selfCopy4 requester];
                  adOriginalRequesterId = [v73 adOriginalRequesterId];
                  v76 = [requester4 requestFromRequestID:adOriginalRequesterId];

                  if (v76)
                  {
                    v77 = [APAdDataResponseTranslator alloc];
                    requester5 = [(APResponseDataTranslator *)selfCopy4 requester];
                    identifier = [v76 identifier];
                    uUIDString = [identifier UUIDString];
                    context = [v76 context];
                    v82 = -[APAdDataResponseTranslator initWithResponse:forRequester:contentIdentifier:withContext:placement:](v77, "initWithResponse:forRequester:contentIdentifier:withContext:placement:", v73, requester5, uUIDString, context, [v76 placementType]);

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
                    uUIDString2 = [v84 UUIDString];
                    content = [v83 content];
                    [content setIdentifier:uUIDString2];

                    content2 = [v83 content];
                    [content2 setReceivedReferenceTime:v96];

                    privateContent = [v83 privateContent];
                    [privateContent setSequenceNumber:v71];

                    selfCopy4 = self;
                    response7 = [(APResponseDataTranslator *)self response];
                    batchId = [response7 batchId];
                    privateContent2 = [v83 privateContent];
                    [privateContent2 setBatchResponseID:batchId];

                    adOriginalRequesterId2 = [v73 adOriginalRequesterId];
                    [v83 setAdOriginalRequesterId:adOriginalRequesterId2];

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

        v19 = *translateCopy;
        if (!*translateCopy)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      response8 = [(APResponseDataTranslator *)selfCopy8 response];
      v49 = [response8 ads];
      if (v49)
      {
        v50 = v49;
        response9 = [(APResponseDataTranslator *)selfCopy8 response];
        v52 = [response9 ads];
        v53 = [v52 count];

        selfCopy8 = self;
        if (v53)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }

      requester6 = [(APResponseDataTranslator *)selfCopy8 requester];
      requestIdentifier4 = [requester6 requestIdentifier];
      v56 = [NSString stringWithFormat:@"AdBatchResponse contained no ads for request %@", requestIdentifier4];
      *translateCopy = [APLegacyInterfaceError validationErrorWithCode:4504 andReason:v56];

      selfCopy8 = self;
LABEL_41:
      if (!*translateCopy)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    response10 = [(APResponseDataTranslator *)self response];
    error = [response10 error];

    if (error == 1)
    {
      response11 = [(APResponseDataTranslator *)self response];
      errorDetails = [response11 errorDetails];
      requester7 = [(APResponseDataTranslator *)self requester];
      requestIdentifier5 = [requester7 requestIdentifier];
      v33RequestIdentifier = [NSString stringWithFormat:@"Server returned No_Qualified error %u for request %@", errorDetails, requestIdentifier5];
      v35 = 4510;
    }

    else
    {
      if (error != 2)
      {
        v94 = translateCopy;
        v37 = APLogForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          requester8 = [(APResponseDataTranslator *)self requester];
          requestIdentifier6 = [requester8 requestIdentifier];
          response12 = [(APResponseDataTranslator *)self response];
          error2 = [response12 error];
          response13 = [(APResponseDataTranslator *)self response];
          errorDetails2 = [response13 errorDetails];
          *buf = 138543874;
          v107 = requestIdentifier6;
          v108 = 1024;
          *v109 = error2;
          *&v109[4] = 1024;
          *&v109[6] = errorDetails2;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Serving returned AdBatchRequest for content %{public}@ with unknown error %u and error details %u", buf, 0x18u);

          selfCopy8 = self;
        }

        response11 = [(APResponseDataTranslator *)selfCopy8 response];
        error3 = [response11 error];
        [(APResponseDataTranslator *)selfCopy8 response];
        requester7 = v45 = selfCopy8;
        errorDetails3 = [requester7 errorDetails];
        requestIdentifier5 = [(APResponseDataTranslator *)v45 requester];
        v33RequestIdentifier = [requestIdentifier5 requestIdentifier];
        v47 = [NSString stringWithFormat:@"Server returned unrecognized error %u with details %u for request %@", error3, errorDetails3, v33RequestIdentifier];
        [APLegacyInterfaceError validationErrorWithCode:4510 andReason:v47];
        *v94 = translateCopy = v94;

        goto LABEL_34;
      }

      response11 = [(APResponseDataTranslator *)self response];
      errorDetails4 = [response11 errorDetails];
      requester7 = [(APResponseDataTranslator *)self requester];
      requestIdentifier5 = [requester7 requestIdentifier];
      v33RequestIdentifier = [NSString stringWithFormat:@"Server returned configuration error %u for request %@", errorDetails4, requestIdentifier5];
      v35 = 4505;
    }

    *translateCopy = [APLegacyInterfaceError validationErrorWithCode:v35 andReason:v33RequestIdentifier];
LABEL_34:

    selfCopy8 = self;
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

- (void)_addContentDataWithErrorForError:(id)error identifier:(id)identifier toResults:(id)results journeyStartRelayValues:(id)values
{
  errorCopy = error;
  if (errorCopy)
  {
    resultsCopy = results;
    v12 = [(APAdBatchResponseTranslator *)self contentDataWithError:errorCopy identifier:identifier journeyStartRelayValues:values];
    [resultsCopy addObject:v12];

    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      content = [v12 content];
      identifier = [content identifier];
      v16 = 138543618;
      v17 = identifier;
      v18 = 2114;
      v19 = errorCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Content %{public}@ is being returned with an error: %{public}@", &v16, 0x16u);
    }
  }
}

- (id)fixupFormattedText:(id)text
{
  textCopy = text;
  v81 = 0;
  v4 = [[NSRegularExpression alloc] initWithPattern:@"unfilledReasonCode:\\ (\\w+)\\"" options:0 error:&v81];
  v5 = v81;
  v6 = [v4 firstMatchInString:textCopy options:0 range:{0, objc_msgSend(textCopy, "length")}];
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
    v11 = [textCopy substringWithRange:{v9, v10}];
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
    v14 = [textCopy length];
    v15 = [NSString stringWithFormat:@"unfilledReasonCode: %@", v13];
    v16 = [v4 stringByReplacingMatchesInString:textCopy options:0 range:0 withTemplate:{v14, v15}];

    textCopy = v16;
  }

  v80 = v5;
  v17 = [[NSRegularExpression alloc] initWithPattern:@"specification\\ \\{.\\s+type:\\ \\(\\w+)\\.\\}" options:8 error:&v80];
  v18 = v80;

  v19 = [v17 matchesInString:textCopy options:0 range:{0, objc_msgSend(textCopy, "length")}];
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
                v29 = [textCopy substringWithRange:{v27, v28}];
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
                v32 = [textCopy length];
                v33 = [NSString stringWithFormat:@"specification {\n   type: %@\n}", v31];
                v34 = [v17 stringByReplacingMatchesInString:textCopy options:0 range:0 withTemplate:{v32, v33}];

                textCopy = v34;
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

  v37 = [v35 firstMatchInString:textCopy options:0 range:{0, objc_msgSend(textCopy, "length")}];

  if (v37 && !v36 && [v37 numberOfRanges] >= 2)
  {
    v38 = [v37 rangeAtIndex:1];
    v40 = [textCopy substringWithRange:{v38, v39}];
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
    v43 = [textCopy length];
    v44 = [NSString stringWithFormat:@"action: %@", v42];
    v45 = [v35 stringByReplacingMatchesInString:textCopy options:0 range:0 withTemplate:{v43, v44}];

    textCopy = v45;
  }

  v74 = v36;
  v46 = [[NSRegularExpression alloc] initWithPattern:@"transitionType:\\ \\(\\w+)\\"" options:0 error:&v74];
  v47 = v74;

  v48 = [v46 firstMatchInString:textCopy options:0 range:{0, objc_msgSend(textCopy, "length")}];

  if (v48 && !v47 && [v48 numberOfRanges] >= 2)
  {
    v49 = 1;
    v50 = [v48 rangeAtIndex:1];
    v52 = [textCopy substringWithRange:{v50, v51}];
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
    v54 = [textCopy length];
    v55 = [NSString stringWithFormat:@"transitionType: %@", v53];
    v56 = [v46 stringByReplacingMatchesInString:textCopy options:0 range:0 withTemplate:{v54, v55}];

    textCopy = v56;
  }

  v73 = v47;
  v57 = [[NSRegularExpression alloc] initWithPattern:@"adPrivacyMarkPosition:\\ \\(\\w+)\\"" options:0 error:&v73];
  v58 = v73;

  v59 = [v57 firstMatchInString:textCopy options:0 range:{0, objc_msgSend(textCopy, "length")}];

  if (v59)
  {
    v60 = v72;
    if (!v58 && [v59 numberOfRanges] >= 2)
    {
      v61 = [v59 rangeAtIndex:1];
      v63 = [textCopy substringWithRange:{v61, v62}];
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
      v66 = [textCopy length];
      v67 = [NSString stringWithFormat:@"adPrivacyMarkPosition: %@", v65];
      v68 = [v57 stringByReplacingMatchesInString:textCopy options:0 range:0 withTemplate:{v66, v67}];

      textCopy = v68;
    }
  }

  else
  {
    v60 = v72;
  }

  v69 = textCopy;

  return textCopy;
}

@end