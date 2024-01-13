package RSA

import (
	"crypto/rsa"
	"crypto/x509"
	"encoding/pem"
)

// 将 RSA 公钥编码为 PEM 并返回
func MarshalPublicKey(rsa_public_key *rsa.PublicKey) (pub_key_marshal_result []byte) {
	pub_key_marshal_result = pem.EncodeToMemory(&pem.Block{
		Type:  "RSA PUBLIC KEY",
		Bytes: x509.MarshalPKCS1PublicKey(rsa_public_key),
	})
	return
}

// 将 RSA 私钥编码为 PEM 并返回
func MarshalPrivateKey(rsa_private_key *rsa.PrivateKey) (priv_key_marshal_result []byte) {
	priv_key_marshal_result = pem.EncodeToMemory(&pem.Block{
		Type:  "RSA PRIVATE KEY",
		Bytes: x509.MarshalPKCS1PrivateKey(rsa_private_key),
	})
	return
}
