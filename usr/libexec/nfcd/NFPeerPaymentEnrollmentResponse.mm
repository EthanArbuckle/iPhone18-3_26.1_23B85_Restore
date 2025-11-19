@interface NFPeerPaymentEnrollmentResponse
- (NFPeerPaymentEnrollmentResponse)initWithCoder:(id)a3;
- (NFPeerPaymentEnrollmentResponse)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFPeerPaymentEnrollmentResponse

- (NFPeerPaymentEnrollmentResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NFPeerPaymentEnrollmentResponse;
  v5 = [(NFPeerPaymentEnrollmentResponse *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"paymentCertificate"];
    prePeerPaymentCertificate = v5->_prePeerPaymentCertificate;
    v5->_prePeerPaymentCertificate = v6;

    v8 = [v4 objectForKeyedSubscript:@"certificates"];
    certificate = v5->_certificate;
    v5->_certificate = v8;
  }

  return v5;
}

- (NFPeerPaymentEnrollmentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NFPeerPaymentEnrollmentResponse;
  v5 = [(NFPeerPaymentEnrollmentResponse *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentCertificate"];
    prePeerPaymentCertificate = v5->_prePeerPaymentCertificate;
    v5->_prePeerPaymentCertificate = v6;

    v8 = [NFNSCheckedDecoder coder:v4 decodeDictOfClass:objc_opt_class() forKey:@"certificates"];
    certificate = v5->_certificate;
    v5->_certificate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  prePeerPaymentCertificate = self->_prePeerPaymentCertificate;
  v5 = a3;
  [v5 encodeObject:prePeerPaymentCertificate forKey:@"paymentCertificate"];
  [v5 encodeObject:self->_certificate forKey:@"certificates"];
}

@end