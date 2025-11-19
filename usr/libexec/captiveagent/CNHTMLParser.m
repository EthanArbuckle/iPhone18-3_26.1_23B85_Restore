@interface CNHTMLParser
+ (id)extractHTMLDocData:(id)a3;
+ (id)extractXMLDoc:(id)a3;
+ (id)parserReadyData:(id)a3;
+ (id)supportedHTMLElements;
+ (id)supportedWISPrAuthPollReplyXMLElements;
+ (id)supportedWISPrAuthReplyXMLElements;
+ (id)supportedWISPrRedirectXMLElements;
- (BOOL)containsAuthPollReplyElement:(id)a3;
- (BOOL)containsAuthReplyElement:(id)a3;
- (BOOL)containsHTMLElement:(id)a3;
- (BOOL)containsRedirectElement:(id)a3;
- (BOOL)foundRequiredAuthPollReplyElements;
- (BOOL)foundRequiredAuthReplyElements;
- (BOOL)foundRequiredNonCaptiveHTMLElements;
- (BOOL)foundRequiredRedirectElements;
- (CNHTMLParser)initWithData:(id)a3 purpose:(int64_t)a4;
- (Class)typeForAuthPollReplyElement:(id)a3;
- (Class)typeForAuthReplyElement:(id)a3;
- (Class)typeForRedirectElement:(id)a3;
- (void)parseWithCompletionHandler:(id)a3;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)parser:(id)a3 foundComment:(id)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parser:(id)a3 validationErrorOccurred:(id)a4;
- (void)parserDidEndDocument:(id)a3;
- (void)parserDidStartDocument:(id)a3;
@end

@implementation CNHTMLParser

- (CNHTMLParser)initWithData:(id)a3 purpose:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CNHTMLParser;
  v7 = [(CNHTMLParser *)&v11 init];
  if (v7)
  {
    v8 = [[NSXMLParser alloc] initWithData:v6];
    parser = v7->_parser;
    v7->_parser = v8;

    [(NSXMLParser *)v7->_parser setDelegate:v7];
    [(NSXMLParser *)v7->_parser setShouldResolveExternalEntities:0];
    v7->_purpose = a4;
    *&v7->_foundWISPr = 0;
  }

  return v7;
}

- (void)parseWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (![(NSXMLParser *)self->_parser parse]&& ![(NSString *)self->_wisprXMLDoc length])
  {
    v10 = sub_100002A8C();
    v11 = _SC_syslog_os_log_mapping();
    v12 = v10;
    if (os_log_type_enabled(v12, v11))
    {
      v13 = [(NSXMLParser *)self->_parser parserError];
      v14 = [v13 localizedDescription];
      v40 = 138412546;
      v41 = self;
      v42 = 2112;
      v43 = v14;
      _os_log_impl(&_mh_execute_header, v12, v11, "%@ HTML/XML parsing failed, %@", &v40, 0x16u);
    }

    v15 = v4[2];
    v16 = v4;
    v17 = 5;
    goto LABEL_39;
  }

  v5 = sub_100002A8C();
  v6 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v5, v6))
  {
    v40 = 138412290;
    v41 = self;
    _os_log_impl(&_mh_execute_header, v5, v6, "%@ 1st HTML/XML parsing completed", &v40, 0xCu);
  }

  purpose = self->_purpose;
  if (purpose)
  {
LABEL_19:
    if (purpose == 1)
    {
      wisprDictionary = self->_wisprDictionary;
      if (wisprDictionary)
      {
        if ([(NSMutableDictionary *)wisprDictionary count]&& [(CNHTMLParser *)self foundRequiredAuthReplyElements])
        {
          (v4[2])(v4, 3, self->_wisprDictionary);
          goto LABEL_55;
        }
      }
    }

    if (self->_purpose == 2)
    {
      v19 = self->_wisprDictionary;
      if (v19)
      {
        if ([(NSMutableDictionary *)v19 count]&& [(CNHTMLParser *)self foundRequiredAuthPollReplyElements])
        {
          (v4[2])(v4, 4, self->_wisprDictionary);
          goto LABEL_55;
        }
      }
    }

    if ([(NSString *)self->_wisprXMLDoc length])
    {
      [(NSXMLParser *)self->_parser setDelegate:0];
      parser = self->_parser;
      self->_parser = 0;

      wisprXMLDoc = self->_wisprXMLDoc;
      v22 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v23 = [(NSString *)wisprXMLDoc stringByTrimmingCharactersInSet:v22];

      v24 = [v23 dataUsingEncoding:4];
      v25 = [[NSXMLParser alloc] initWithData:v24];
      v26 = self->_parser;
      self->_parser = v25;

      [(NSXMLParser *)self->_parser setDelegate:self];
      [(NSXMLParser *)self->_parser setShouldResolveExternalEntities:0];
      [(NSXMLParser *)self->_parser setShouldProcessNamespaces:0];
      v27 = [(NSXMLParser *)self->_parser parse];
      v28 = sub_100002A8C();
      if (v27)
      {
        v29 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = self->_wisprDictionary;
          v40 = 138412546;
          v41 = self;
          v42 = 2112;
          v43 = v30;
          _os_log_impl(&_mh_execute_header, v28, v29, "%@ XML parsing completed, WISPr dictionary: %@", &v40, 0x16u);
        }

        v31 = self->_wisprDictionary;
        if (v31 && [(NSMutableDictionary *)v31 count])
        {
          v32 = self->_purpose;
          if (!v32)
          {
            if ([(CNHTMLParser *)self foundRequiredRedirectElements])
            {
              (v4[2])(v4, 2, self->_wisprDictionary);
LABEL_54:

              goto LABEL_55;
            }

            v32 = self->_purpose;
          }

          if (v32 == 1)
          {
            if ([(CNHTMLParser *)self foundRequiredAuthReplyElements])
            {
              (v4[2])(v4, 3, self->_wisprDictionary);
              goto LABEL_54;
            }

            v32 = self->_purpose;
          }

          if (v32 == 2 && [(CNHTMLParser *)self foundRequiredAuthPollReplyElements])
          {
            (v4[2])(v4, 4, self->_wisprDictionary);
            goto LABEL_54;
          }
        }

        v37 = v4[2];
        v38 = v4;
        v39 = 0;
      }

      else
      {
        v33 = _SC_syslog_os_log_mapping();
        v34 = v28;
        if (os_log_type_enabled(v34, v33))
        {
          v35 = [(NSXMLParser *)self->_parser parserError];
          v36 = [v35 localizedDescription];
          v40 = 138412546;
          v41 = self;
          v42 = 2112;
          v43 = v36;
          _os_log_impl(&_mh_execute_header, v34, v33, "%@ WISPr XML parsing failed, %@", &v40, 0x16u);
        }

        v37 = v4[2];
        v38 = v4;
        v39 = 5;
      }

      v37(v38, v39, 0);
      goto LABEL_54;
    }

    v15 = v4[2];
    v16 = v4;
    v17 = 0;
LABEL_39:
    v15(v16, v17, 0);
    goto LABEL_55;
  }

  htmlDictionary = self->_htmlDictionary;
  if (!htmlDictionary || ![(NSMutableDictionary *)htmlDictionary count]|| ![(CNHTMLParser *)self foundRequiredNonCaptiveHTMLElements])
  {
    purpose = self->_purpose;
    if (!purpose)
    {
      v9 = self->_wisprDictionary;
      if (v9 && [(NSMutableDictionary *)v9 count]&& [(CNHTMLParser *)self foundRequiredRedirectElements])
      {
        (v4[2])(v4, 2, self->_wisprDictionary);
        goto LABEL_55;
      }

      purpose = self->_purpose;
    }

    goto LABEL_19;
  }

  (v4[2])(v4, 1, self->_htmlDictionary);
LABEL_55:
}

+ (id)supportedHTMLElements
{
  if (qword_100022758 != -1)
  {
    sub_1000117DC();
  }

  v3 = qword_100022750;

  return v3;
}

- (BOOL)containsHTMLElement:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [objc_opt_class() supportedHTMLElements];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A29C;
  v7[3] = &unk_10001C9A0;
  v5 = v3;
  v8 = v5;
  v9 = &v10;
  [v4 enumerateObjectsUsingBlock:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (BOOL)foundRequiredNonCaptiveHTMLElements
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v3 = [objc_opt_class() supportedHTMLElements];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A4D4;
  v8[3] = &unk_10001C9A0;
  v8[4] = self;
  v8[5] = &v9;
  [v3 enumerateObjectsUsingBlock:v8];

  LODWORD(v3) = *(v10 + 24);
  if (v3 == 1)
  {
    v4 = [(NSMutableDictionary *)self->_htmlDictionary objectForKeyedSubscript:@"TITLE"];
    v5 = [v4 caseInsensitiveCompare:@"Success"] == 0;

    if (v5)
    {
      LOBYTE(v3) = *(v10 + 24);
    }

    else
    {
      v3 = sub_100002A8C();
      v6 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v3, v6))
      {
        *buf = 138412290;
        v14 = self;
        _os_log_impl(&_mh_execute_header, v3, v6, "%@ parsed and expected values failed to match for required HTML elements", buf, 0xCu);
      }

      LOBYTE(v3) = 0;
      *(v10 + 24) = 0;
    }
  }

  _Block_object_dispose(&v9, 8);
  return v3 & 1;
}

+ (id)supportedWISPrRedirectXMLElements
{
  if (qword_100022768 != -1)
  {
    sub_1000117F0();
  }

  v3 = qword_100022760;

  return v3;
}

- (BOOL)containsRedirectElement:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [objc_opt_class() supportedWISPrRedirectXMLElements];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000AB64;
  v7[3] = &unk_10001C9A0;
  v5 = v3;
  v8 = v5;
  v9 = &v10;
  [v4 enumerateObjectsUsingBlock:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (BOOL)foundRequiredRedirectElements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = [objc_opt_class() supportedWISPrRedirectXMLElements];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000ACA4;
  v5[3] = &unk_10001C9A0;
  v5[4] = self;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (Class)typeForRedirectElement:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v16 = objc_opt_class();
  v5 = [objc_opt_class() supportedWISPrRedirectXMLElements];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000AF90;
  v9[3] = &unk_10001C9E8;
  v6 = v4;
  v11 = self;
  v12 = &v13;
  v10 = v6;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v7;
}

+ (id)supportedWISPrAuthReplyXMLElements
{
  if (qword_100022778 != -1)
  {
    sub_100011804();
  }

  v3 = qword_100022770;

  return v3;
}

- (BOOL)containsAuthReplyElement:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [objc_opt_class() supportedWISPrAuthReplyXMLElements];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B464;
  v7[3] = &unk_10001C9A0;
  v5 = v3;
  v8 = v5;
  v9 = &v10;
  [v4 enumerateObjectsUsingBlock:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (BOOL)foundRequiredAuthReplyElements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = [objc_opt_class() supportedWISPrAuthReplyXMLElements];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B5A4;
  v5[3] = &unk_10001C9A0;
  v5[4] = self;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (Class)typeForAuthReplyElement:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v16 = objc_opt_class();
  v5 = [objc_opt_class() supportedWISPrAuthReplyXMLElements];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B890;
  v9[3] = &unk_10001C9E8;
  v6 = v4;
  v11 = self;
  v12 = &v13;
  v10 = v6;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v7;
}

+ (id)supportedWISPrAuthPollReplyXMLElements
{
  if (qword_100022788 != -1)
  {
    sub_100011818();
  }

  v3 = qword_100022780;

  return v3;
}

- (BOOL)containsAuthPollReplyElement:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [objc_opt_class() supportedWISPrAuthPollReplyXMLElements];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BD64;
  v7[3] = &unk_10001C9A0;
  v5 = v3;
  v8 = v5;
  v9 = &v10;
  [v4 enumerateObjectsUsingBlock:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (BOOL)foundRequiredAuthPollReplyElements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = [objc_opt_class() supportedWISPrAuthPollReplyXMLElements];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BEA4;
  v5[3] = &unk_10001C9A0;
  v5[4] = self;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (Class)typeForAuthPollReplyElement:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v16 = objc_opt_class();
  v5 = [objc_opt_class() supportedWISPrAuthPollReplyXMLElements];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000C190;
  v9[3] = &unk_10001C9E8;
  v6 = v4;
  v11 = self;
  v12 = &v13;
  v10 = v6;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)parserDidStartDocument:(id)a3
{
  v4 = sub_100002A8C();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@ parserDidStartDocument", &v6, 0xCu);
  }
}

- (void)parserDidEndDocument:(id)a3
{
  v4 = sub_100002A8C();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@ parserDidEndDocument", &v6, 0xCu);
  }
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v9 = a4;
  v10 = sub_100002A8C();
  v11 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v10, v11))
  {
    v14 = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%@ didStartElement: element:[%@]", &v14, 0x16u);
  }

  if ([v9 length])
  {
    purpose = self->_purpose;
    if (!purpose)
    {
      if (![(CNHTMLParser *)self containsHTMLElement:v9]&& ![(CNHTMLParser *)self containsRedirectElement:v9])
      {
        goto LABEL_32;
      }

      if (!self->_foundHTML && ![v9 caseInsensitiveCompare:@"HTML"])
      {
        goto LABEL_31;
      }

      if (!self->_foundWISPr && -[NSString isEqualToString:](self->_currentElementName, "isEqualToString:", off_100022450) && [v9 isEqualToString:off_100022458])
      {
        goto LABEL_29;
      }

      purpose = self->_purpose;
    }

    if (purpose == 1)
    {
      if (![(CNHTMLParser *)self containsHTMLElement:v9]&& ![(CNHTMLParser *)self containsAuthReplyElement:v9])
      {
        goto LABEL_32;
      }

      if (!self->_foundHTML && ![v9 caseInsensitiveCompare:@"HTML"])
      {
        goto LABEL_31;
      }

      if (!self->_foundWISPr && -[NSString isEqualToString:](self->_currentElementName, "isEqualToString:", off_100022450) && [v9 isEqualToString:off_1000224C8])
      {
        goto LABEL_29;
      }
    }

    if (self->_purpose != 2)
    {
      goto LABEL_30;
    }

    if ([(CNHTMLParser *)self containsHTMLElement:v9]|| [(CNHTMLParser *)self containsAuthPollReplyElement:v9])
    {
      if (self->_foundHTML || [v9 caseInsensitiveCompare:@"HTML"])
      {
        if (!self->_foundWISPr && -[NSString isEqualToString:](self->_currentElementName, "isEqualToString:", off_100022450) && [v9 isEqualToString:off_1000224D0])
        {
LABEL_29:
          self->_foundWISPr = 1;
          goto LABEL_32;
        }

LABEL_30:
        objc_storeStrong(&self->_currentElementName, a4);
        currentElementValue = self->_currentElementValue;
        self->_currentElementValue = 0;

        goto LABEL_32;
      }

LABEL_31:
      self->_foundHTML = 1;
    }
  }

LABEL_32:
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v7 = a4;
  v8 = sub_100002A8C();
  v9 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v8, v9))
  {
    v37 = 138412546;
    v38 = self;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ didEndElement: element:[%@]", &v37, 0x16u);
  }

  if ((self->_foundHTML || self->_foundWISPr || self->_purpose) && [(NSString *)self->_currentElementName length]&& [(NSMutableString *)self->_currentElementValue length])
  {
    purpose = self->_purpose;
    if (purpose)
    {
      goto LABEL_25;
    }

    if (self->_foundHTML && !self->_foundWISPr && !self->_htmlDictionary)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      htmlDictionary = self->_htmlDictionary;
      self->_htmlDictionary = v11;
    }

    if (self->_foundWISPr && !self->_wisprDictionary)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      wisprDictionary = self->_wisprDictionary;
      self->_wisprDictionary = v13;

      v15 = self->_htmlDictionary;
      self->_htmlDictionary = 0;
    }

    if (self->_wisprDictionary)
    {
      v16 = [(CNHTMLParser *)self typeForRedirectElement:v7];
      if (v16 != objc_opt_class())
      {
        if (v16 == objc_opt_class())
        {
          v17 = [[NSNumber alloc] initWithInteger:{-[NSMutableString integerValue](self->_currentElementValue, "integerValue")}];
          [(NSMutableDictionary *)self->_wisprDictionary setObject:v17 forKeyedSubscript:self->_currentElementName];
        }

        goto LABEL_24;
      }

      v18 = self->_wisprDictionary;
    }

    else
    {
      v18 = self->_htmlDictionary;
      if (!v18)
      {
        goto LABEL_24;
      }
    }

    [(NSMutableDictionary *)v18 setObject:self->_currentElementValue forKeyedSubscript:self->_currentElementName];
LABEL_24:
    purpose = self->_purpose;
LABEL_25:
    if (purpose != 1)
    {
      goto LABEL_41;
    }

    if (self->_foundHTML && !self->_foundWISPr && !self->_htmlDictionary)
    {
      v19 = objc_alloc_init(NSMutableDictionary);
      v20 = self->_htmlDictionary;
      self->_htmlDictionary = v19;
    }

    if (self->_foundWISPr && !self->_wisprDictionary)
    {
      v21 = objc_alloc_init(NSMutableDictionary);
      v22 = self->_wisprDictionary;
      self->_wisprDictionary = v21;

      v23 = self->_htmlDictionary;
      self->_htmlDictionary = 0;
    }

    if (self->_wisprDictionary)
    {
      v24 = [(CNHTMLParser *)self typeForAuthReplyElement:v7];
      if (v24 != objc_opt_class())
      {
        if (v24 == objc_opt_class())
        {
          v25 = [[NSNumber alloc] initWithInteger:{-[NSMutableString integerValue](self->_currentElementValue, "integerValue")}];
          [(NSMutableDictionary *)self->_wisprDictionary setObject:v25 forKeyedSubscript:self->_currentElementName];
        }

LABEL_41:
        if (self->_purpose == 2)
        {
          if (self->_foundHTML && !self->_foundWISPr && !self->_htmlDictionary)
          {
            v27 = objc_alloc_init(NSMutableDictionary);
            v28 = self->_htmlDictionary;
            self->_htmlDictionary = v27;
          }

          if (self->_foundWISPr && !self->_wisprDictionary)
          {
            v29 = objc_alloc_init(NSMutableDictionary);
            v30 = self->_wisprDictionary;
            self->_wisprDictionary = v29;

            v31 = self->_htmlDictionary;
            self->_htmlDictionary = 0;
          }

          if (self->_wisprDictionary)
          {
            v32 = [(CNHTMLParser *)self typeForAuthPollReplyElement:v7];
            if (v32 != objc_opt_class())
            {
              if (v32 == objc_opt_class())
              {
                v33 = [[NSNumber alloc] initWithInteger:{-[NSMutableString integerValue](self->_currentElementValue, "integerValue")}];
                [(NSMutableDictionary *)self->_wisprDictionary setObject:v33 forKeyedSubscript:self->_currentElementName];
              }

              goto LABEL_57;
            }

            v34 = self->_wisprDictionary;
          }

          else
          {
            v34 = self->_htmlDictionary;
            if (!v34)
            {
              goto LABEL_57;
            }
          }

          [(NSMutableDictionary *)v34 setObject:self->_currentElementValue forKeyedSubscript:self->_currentElementName];
        }

LABEL_57:
        currentElementValue = self->_currentElementValue;
        self->_currentElementValue = 0;

        currentElementName = self->_currentElementName;
        self->_currentElementName = 0;

        goto LABEL_58;
      }

      v26 = self->_wisprDictionary;
    }

    else
    {
      v26 = self->_htmlDictionary;
      if (!v26)
      {
        goto LABEL_41;
      }
    }

    [(NSMutableDictionary *)v26 setObject:self->_currentElementValue forKeyedSubscript:self->_currentElementName];
    goto LABEL_41;
  }

LABEL_58:
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v5 = a4;
  v6 = sub_100002A8C();
  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v6, v7))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%@ foundCharacters:[%@]", &v11, 0x16u);
  }

  if ((self->_foundHTML || self->_foundWISPr) && self->_currentElementName)
  {
    currentElementValue = self->_currentElementValue;
    if (!currentElementValue)
    {
      v9 = objc_alloc_init(NSMutableString);
      v10 = self->_currentElementValue;
      self->_currentElementValue = v9;

      currentElementValue = self->_currentElementValue;
    }

    [(NSMutableString *)currentElementValue appendString:v5];
  }
}

+ (id)extractXMLDoc:(id)a3
{
  v3 = a3;
  v4 = [[NSScanner alloc] initWithString:v3];

  [v4 setCharactersToBeSkipped:0];
  if (![v4 scanUpToString:@"<WISPAccessGatewayParam" intoString:0])
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = [v4 scanLocation];
  v6 = [v4 scanLocation];
  v7 = [v4 string];
  v8 = [v7 length];

  if (v6 < v8)
  {
    v5 = [v4 scanLocation];
  }

  if (v5)
  {
    if ([v4 scanUpToString:@"</WISPAccessGatewayParam>" intoString:0])
    {
      v9 = [v4 scanLocation];
      v10 = [v4 string];
      v11 = [v10 length];

      if (v9 < v11)
      {
        v12 = [v4 scanLocation];
        v13 = &v12[[@"</WISPAccessGatewayParam>" length]];
        if (v13)
        {
          v14 = [v4 string];
          v5 = [v14 substringWithRange:{v5, v13 - v5}];

          goto LABEL_10;
        }
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

+ (id)extractHTMLDocData:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithData:v3 encoding:4];
  v5 = [[NSScanner alloc] initWithString:v4];
  [v5 setCharactersToBeSkipped:0];
  if (![v5 scanUpToString:@"<html" intoString:0])
  {
    goto LABEL_9;
  }

  v6 = [v5 scanLocation];
  v7 = [v5 string];
  v8 = [v7 length];

  if (v6 >= v8)
  {
    goto LABEL_9;
  }

  v9 = [v5 scanLocation];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  if (![v5 scanUpToString:@"</html>" intoString:0])
  {
    goto LABEL_9;
  }

  v11 = [v5 scanLocation];
  v12 = [v5 string];
  v13 = [v12 length];

  if (v11 >= v13)
  {
    goto LABEL_9;
  }

  v14 = [v5 scanLocation];
  v15 = &v14[[@"</html>" length]];
  if (v15 && ([v5 string], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "substringWithRange:", v10, v15 - v10), v17 = objc_claimAutoreleasedReturnValue(), v16, v17))
  {
    v18 = [v17 dataUsingEncoding:4];
  }

  else
  {
LABEL_9:
    v18 = v3;
  }

  return v18;
}

+ (id)parserReadyData:(id)a3
{
  v3 = a3;
  v4 = [CNHTMLParser extractHTMLDocData:v3];
  v5 = [[NSString alloc] initWithData:v4 encoding:4];
  v6 = [CNHTMLParser extractXMLDoc:v5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [[NSString alloc] initWithData:v3 encoding:4];

    v7 = [CNHTMLParser extractXMLDoc:v8];
    v5 = v8;
  }

  if ([v7 length])
  {
    v9 = [v7 stringByReplacingOccurrencesOfString:@"&" withString:@"&amp"];;

    if ([v9 length])
    {
      v5 = v9;

      v7 = v5;
    }

    else
    {
      v5 = v9;
    }
  }

  if ([v7 length])
  {
    v10 = [v7 dataUsingEncoding:4];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;

  return v11;
}

- (void)parser:(id)a3 foundComment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002A8C();
  v9 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v8, v9))
  {
    *buf = 138412546;
    v28 = self;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ foundComment:[%@]", buf, 0x16u);
  }

  if (self->_foundHTML && ![(NSString *)self->_wisprXMLDoc length])
  {
    purpose = self->_purpose;
    if (purpose == 2)
    {
      v11 = [objc_opt_class() supportedWISPrAuthPollReplyXMLElements];
    }

    else if (purpose == 1)
    {
      v11 = [objc_opt_class() supportedWISPrAuthReplyXMLElements];
    }

    else if (purpose)
    {
      v11 = 0;
    }

    else
    {
      v11 = [objc_opt_class() supportedWISPrRedirectXMLElements];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if ([v17 required])
          {
            v18 = [v17 elementName];
            v19 = [v7 containsString:v18];

            if (!v19)
            {

              goto LABEL_23;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v20 = [CNHTMLParser extractXMLDoc:v7];
    wisprXMLDoc = self->_wisprXMLDoc;
    self->_wisprXMLDoc = v20;

    [v6 abortParsing];
LABEL_23:
  }
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v5 = a4;
  v6 = [v5 domain];
  if ([v6 isEqualToString:NSXMLParserErrorDomain] && objc_msgSend(v5, "code") == 512)
  {
    v7 = [(NSString *)self->_wisprXMLDoc length];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = sub_100002A8C();
  v9 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ parseErrorOccurred:[%@]", &v10, 0x16u);
  }

LABEL_9:
}

- (void)parser:(id)a3 validationErrorOccurred:(id)a4
{
  v5 = a4;
  v6 = sub_100002A8C();
  v7 = _SC_syslog_os_log_mapping();
  v8 = v6;
  if (os_log_type_enabled(v8, v7))
  {
    v9 = [v5 localizedDescription];
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, v7, "%@ validationErrorOccurred:[%@]", &v10, 0x16u);
  }
}

@end