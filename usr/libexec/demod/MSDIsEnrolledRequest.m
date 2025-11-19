@interface MSDIsEnrolledRequest
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
@end

@implementation MSDIsEnrolledRequest

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = MSDIsEnrolledRequest;
  v8 = [(MSDServerRequest *)&v19 parseResponseForError:v6 andPayload:v7];
  v9 = [v8 error];

  if (v9)
  {
    v12 = 0;
    v10 = 0;
    v11 = v6;
  }

  else
  {
    v18 = v6;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:v7 error:&v18];
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

  v15 = [v8 error];

  if (!v15)
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