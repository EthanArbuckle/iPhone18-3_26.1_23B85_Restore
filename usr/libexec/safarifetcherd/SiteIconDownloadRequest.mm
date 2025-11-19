@interface SiteIconDownloadRequest
- (SiteIconDownloadRequest)initWithBookmark:(id)a3 singleResourceURL:(id)a4;
- (SiteIconDownloadRequestDelegate)delegate;
- (id)_bestImageWithData:(id)a3 forWidth:(double)a4;
- (void)_cancelConnectionAndFetchNextIcon;
- (void)_processIconDataAndNotifyDelegateWithIconURL:(id)a3;
- (void)connection:(id)a3 didReceiveAuthenticationChallenge:(id)a4;
- (void)connection:(id)a3 didReceiveData:(id)a4;
- (void)connection:(id)a3 didReceiveResponse:(id)a4;
- (void)connectionDidFinishLoading:(id)a3;
- (void)fetchNextIcon;
- (void)setBookmarkFetchedIconData;
@end

@implementation SiteIconDownloadRequest

- (SiteIconDownloadRequest)initWithBookmark:(id)a3 singleResourceURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SiteIconDownloadRequest;
  v8 = [(SiteIconDownloadRequest *)&v19 init];
  v9 = v8;
  if (v8)
  {
    *&v8->_fetchForFavoritesIcon = 256;
    v8->_bookmarkID = [v6 identifier];
    v10 = [v6 UUID];
    bookmarkUUID = v9->_bookmarkUUID;
    v9->_bookmarkUUID = v10;

    v12 = [v6 address];
    bookmarkAddress = v9->_bookmarkAddress;
    v9->_bookmarkAddress = v12;

    v20 = v7;
    v14 = [NSArray arrayWithObjects:&v20 count:1];
    v15 = [v14 mutableCopy];
    iconURLs = v9->_iconURLs;
    v9->_iconURLs = v15;

    v17 = v9;
  }

  return v9;
}

- (void)setBookmarkFetchedIconData
{
  v6 = +[WebBookmarkCollection safariBookmarkCollection];
  v3 = [v6 bookmarkWithID:self->_bookmarkID];
  v4 = +[WebBookmarkCollection isLockedSync];
  if (v3)
  {
    v5 = v4;
    if ((v4 & 1) != 0 || +[WebBookmarkCollection lockSync])
    {
      [v3 setFetchedIconData:1];
      [v6 saveBookmark:v3];
      if ((v5 & 1) == 0)
      {
        +[WebBookmarkCollection unlockSync];
      }
    }
  }
}

- (void)fetchNextIcon
{
  v3 = [(NSMutableArray *)self->_iconURLs firstObject];
  v10 = v3;
  if (v3)
  {
    WeakRetained = [NSMutableURLRequest requestWithURL:v3];
    [WeakRetained setAttribution:1];
    v5 = _SFCustomUserAgentStringIfNeeded();
    v6 = v5;
    userAgentString = self->_userAgentString;
    if (!userAgentString && v5)
    {
      objc_storeStrong(&self->_userAgentString, v5);
      userAgentString = self->_userAgentString;
    }

    [WeakRetained setValue:userAgentString forHTTPHeaderField:@"User-Agent"];
    v8 = [[NSURLConnection alloc] initWithRequest:WeakRetained delegate:self];
    URLConnection = self->_URLConnection;
    self->_URLConnection = v8;

    [(NSMutableArray *)self->_iconURLs removeObjectAtIndex:0];
  }

  else
  {
    [(SiteIconDownloadRequest *)self setBookmarkFetchedIconData];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained siteIconDownloadRequestDidFail:self];
  }
}

- (void)_cancelConnectionAndFetchNextIcon
{
  [(NSURLConnection *)self->_URLConnection cancel];

  [(SiteIconDownloadRequest *)self fetchNextIcon];
}

- (id)_bestImageWithData:(id)a3 forWidth:(double)a4
{
  v5 = a3;
  if (![v5 length])
  {
    v17 = 0;
    goto LABEL_22;
  }

  v6 = CGImageSourceCreateWithData(v5, 0);
  v7 = objc_alloc_init(WBSScopeExitHandler);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100001B54;
  v20[3] = &unk_10001C6C8;
  v20[4] = v6;
  [v7 setHandler:v20];
  if (!v6 || (Count = CGImageSourceGetCount(v6)) == 0)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0.0;
  while (1)
  {
    v12 = CGImageSourceCopyPropertiesAtIndex(v6, v9, 0);
    v13 = v12;
    if (v12)
    {
      break;
    }

LABEL_15:
    if (Count == ++v9)
    {
      goto LABEL_20;
    }
  }

  v14 = [(__CFDictionary *)v12 objectForKeyedSubscript:kCGImagePropertyPixelWidth];
  v15 = v14;
  if (!v14 || ([v14 doubleValue], v9) && (v11 >= a4 || v16 <= v11) && (v11 <= a4 || v16 >= v11 || v16 < a4) || (v11 = v16, v10 = v9, v16 != a4))
  {

    goto LABEL_15;
  }

  v10 = v9;
LABEL_20:
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, v10, 0);
  v17 = [UIImage imageWithCGImage:ImageAtIndex];
  CGImageRelease(ImageAtIndex);
LABEL_21:

LABEL_22:

  return v17;
}

- (void)_processIconDataAndNotifyDelegateWithIconURL:(id)a3
{
  v4 = a3;
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6;

  +[_SFSiteIcon defaultSize];
  v9 = v7 * v8;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100001CD0;
  v17[4] = sub_100001CE0;
  v18 = self->_iconData;
  v10 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001CE8;
  block[3] = &unk_10001C718;
  v13 = v4;
  v14 = v17;
  v15 = v9;
  v16 = v7;
  block[4] = self;
  v11 = v4;
  dispatch_async(v10, block);

  _Block_object_dispose(v17, 8);
}

- (void)connection:(id)a3 didReceiveAuthenticationChallenge:(id)a4
{
  v6 = a4;
  v4 = [v6 proposedCredential];
  if ([v6 previousFailureCount] || !objc_msgSend(v4, "hasPassword"))
  {
    v5 = [v6 sender];
    [v5 cancelAuthenticationChallenge:v6];
  }

  else
  {
    v5 = [v6 sender];
    [v5 useCredential:v4 forAuthenticationChallenge:v6];
  }
}

- (void)connection:(id)a3 didReceiveResponse:(id)a4
{
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iconData = v7;
    if ([(NSMutableData *)iconData statusCode]!= 200 || self->_fetchForFavoritesIcon && [(NSMutableData *)iconData expectedContentLength]> 0x40000)
    {
      [(SiteIconDownloadRequest *)self _cancelConnectionAndFetchNextIcon];
      goto LABEL_8;
    }
  }

  v6 = objc_alloc_init(NSMutableData);
  iconData = self->_iconData;
  self->_iconData = v6;
LABEL_8:
}

- (void)connection:(id)a3 didReceiveData:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_fetchForFavoritesIcon && (v7 = -[NSMutableData length](self->_iconData, "length"), [v6 length] + v7 > 0x40000))
  {
    [(SiteIconDownloadRequest *)self _cancelConnectionAndFetchNextIcon];
  }

  else
  {
    [(NSMutableData *)self->_iconData appendData:v6];
  }
}

- (void)connectionDidFinishLoading:(id)a3
{
  v11 = a3;
  v4 = [UIImage imageWithData:self->_iconData];
  [v4 size];
  if (v6 < 2.0 || v5 < 2.0)
  {
    [(SiteIconDownloadRequest *)self fetchNextIcon];
  }

  else
  {
    v8 = [v11 originalRequest];
    v9 = [v8 URL];
    v10 = [v9 safari_originalDataAsString];
    [(SiteIconDownloadRequest *)self _processIconDataAndNotifyDelegateWithIconURL:v10];
  }
}

- (SiteIconDownloadRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end