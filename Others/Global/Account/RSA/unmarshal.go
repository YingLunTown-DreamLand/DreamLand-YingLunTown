package RSA

import (
	"crypto/rsa"
	"crypto/x509"
	"encoding/pem"
	"fmt"
)

// 解析 RSA 公钥对应的 PEM 并返回
func UnmarshalPublicKey(rsa_public_key []byte) (
	pub_key_unmarshal_result *rsa.PublicKey,
	err error,
) {
	pub, _ := pem.Decode(rsa_public_key)
	if pub == nil {
		return nil, fmt.Errorf("UnmarshalPublicKey: rsa_public_key is not a valid pem block; rsa_public_key = %s", rsa_public_key)
	}
	// decode pem block
	pub_key_unmarshal_result, err = x509.ParsePKCS1PublicKey(pub.Bytes)
	if err != nil {
		return nil, fmt.Errorf("UnmarshalPublicKey: %v", err)
	}
	// unmarshal public key
	return
	// return
}

// 解析 RSA 私钥对应的 PEM 并返回
func UnmarshalPrivateKey(rsa_private_key []byte) (
	priv_key_unmarshal_result *rsa.PrivateKey,
	err error,
) {
	pub, _ := pem.Decode(rsa_private_key)
	if pub == nil {
		return nil, fmt.Errorf("UnmarshalPrivateKey: rsa_private_key is not a valid pem block; rsa_private_key = %s", rsa_private_key)
	}
	// decode pem block
	priv_key_unmarshal_result, err = x509.ParsePKCS1PrivateKey(pub.Bytes)
	if err != nil {
		return nil, fmt.Errorf("UnmarshalPrivateKey: %v", err)
	}
	// unmarshal private key
	return
	// return
}
