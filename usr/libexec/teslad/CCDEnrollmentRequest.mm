@interface CCDEnrollmentRequest
- (CCDEnrollmentRequest)requestWithError:(id *)a3;
- (id)_enrollmentURL;
@end

@implementation CCDEnrollmentRequest

- (id)_enrollmentURL
{
  v3 = [NSURL alloc];
  v4 = [(CCDEnrollmentRequest *)self enrollmentURLString];
  v5 = [v3 initWithString:v4];

  return v5;
}

- (CCDEnrollmentRequest)requestWithError:(id *)a3
{
  v5 = [(CCDEnrollmentRequest *)self requestPayload];
  v6 = [(CCDEnrollmentRequest *)self _enrollmentURL];
  v7 = [(CCDEnrollmentRequest *)self privateKey];
  v8 = [(CCDEnrollmentRequest *)self clientCertificates];
  v9 = [CCDDeviceIdentitySupport requestWithPayload:v5 URL:v6 privateKey:v7 clientCertificates:v8 outError:a3];

  return v9;
}

@end