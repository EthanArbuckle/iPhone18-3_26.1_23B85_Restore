@interface CKKSNotifyPostNotifier
+ (void)post:(id)post;
@end

@implementation CKKSNotifyPostNotifier

+ (void)post:(id)post
{
  postCopy = post;
  if (postCopy)
  {
    v4 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = postCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "posting notification %@", &v5, 0xCu);
    }

    notify_post([postCopy UTF8String]);
  }
}

@end