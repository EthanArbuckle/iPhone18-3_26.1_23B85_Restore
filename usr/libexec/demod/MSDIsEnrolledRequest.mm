@interface MSDIsEnrolledRequest
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDIsEnrolledRequest

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v19.receiver = self;
  v19.super_class = MSDIsEnrolledRequest;
  v8 = [(MSDServerRequest *)&v19 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v12 = 0;
    v10 = 0;
    v11 = errorCopy;
  }

  else
  {
    v18 = errorCopy;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v18];
    v11 = v18;

    if (v10)
    {
      v12 = [v10 objectForKey:@"Result"];
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v12 BOOLValue])
          {
            v13 = sub_100063A54();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              sub_1000E0394(v13);
            }
          }

          [v8 setIsEnrolled:{objc_msgSend(v12, "BOOLValue")}];
          goto LABEL_10;
        }
      }

      sub_1000E03D8(self, v10);
    }

    else
    {
      v12 = 0;
    }
  }

  error2 = [v8 error];

  if (!error2)
  {
    v17 = v11;
    sub_1000C1390(&v17, 3727744512, @"Unexpected server response.");
    v16 = v17;

    [v8 setError:v16];
    v11 = v16;
  }

LABEL_10:

  return v8;
}

@end