@interface NFPeerPaymentEnrollmentResponse
- (NFPeerPaymentEnrollmentResponse)initWithCoder:(id)coder;
- (NFPeerPaymentEnrollmentResponse)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFPeerPaymentEnrollmentResponse

- (NFPeerPaymentEnrollmentResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = NFPeerPaymentEnrollmentResponse;
  v5 = [(NFPeerPaymentEnrollmentResponse *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"paymentCertificate"];
    prePeerPaymentCertificate = v5->_prePeerPaymentCertificate;
    v5->_prePeerPaymentCertificate = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"certificates"];
    certificate = v5->_certificate;
    v5->_certificate = v8;
  }

  return v5;
}

- (NFPeerPaymentEnrollmentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NFPeerPaymentEnrollmentResponse;
  v5 = [(NFPeerPaymentEnrollmentResponse *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentCertificate"];
    prePeerPaymentCertificate = v5->_prePeerPaymentCertificate;
    v5->_prePeerPaymentCertificate = v6;

    v8 = [NFNSCheckedDecoder coder:coderCopy decodeDictOfClass:objc_opt_class() forKey:@"certificates"];
    certificate = v5->_certificate;
    v5->_certificate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  prePeerPaymentCertificate = self->_prePeerPaymentCertificate;
  coderCopy = coder;
  [coderCopy encodeObject:prePeerPaymentCertificate forKey:@"paymentCertificate"];
  [coderCopy encodeObject:self->_certificate forKey:@"certificates"];
}

@end