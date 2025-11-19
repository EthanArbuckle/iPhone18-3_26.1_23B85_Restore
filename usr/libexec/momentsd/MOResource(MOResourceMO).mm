@interface MOResource(MOResourceMO)
@end

@implementation MOResource(MOResourceMO)

- (void)initWithResourceMO:()MOResourceMO .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MOResource: Error serializing resource data (%@)", &v2, 0xCu);
}

- (void)initWithResourceMO:()MOResourceMO .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MOResource: Photo cloud asset identifier did not map to any photo local asset identifier (%@)", &v2, 0xCu);
}

@end