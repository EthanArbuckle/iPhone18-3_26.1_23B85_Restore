@interface CLFileDownloadTaskDelegate
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
@end

@implementation CLFileDownloadTaskDelegate

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  if ([objc_msgSend(objc_msgSend(objc_msgSend(a4 originalRequest] && (objc_msgSend(objc_msgSend(objc_msgSend(a6, "URL"), "scheme"), "isEqualToString:", @"http") & 1) != 0)
  {
    a6 = 0;
  }

  v9 = *(a7 + 2);

  v9(a7, a6);
}

@end