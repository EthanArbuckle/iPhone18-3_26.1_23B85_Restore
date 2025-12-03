@interface CCDEnrollmentRequest
- (CCDEnrollmentRequest)requestWithError:(id *)error;
- (id)_enrollmentURL;
@end

@implementation CCDEnrollmentRequest

- (id)_enrollmentURL
{
  v3 = [NSURL alloc];
  enrollmentURLString = [(CCDEnrollmentRequest *)self enrollmentURLString];
  v5 = [v3 initWithString:enrollmentURLString];

  return v5;
}

- (CCDEnrollmentRequest)requestWithError:(id *)error
{
  requestPayload = [(CCDEnrollmentRequest *)self requestPayload];
  _enrollmentURL = [(CCDEnrollmentRequest *)self _enrollmentURL];
  privateKey = [(CCDEnrollmentRequest *)self privateKey];
  clientCertificates = [(CCDEnrollmentRequest *)self clientCertificates];
  v9 = [CCDDeviceIdentitySupport requestWithPayload:requestPayload URL:_enrollmentURL privateKey:privateKey clientCertificates:clientCertificates outError:error];

  return v9;
}

@end