package RSA

import (
	"crypto/rand"
	"crypto/rsa"
	"crypto/sha512"
)

// 使用公钥 rsa_public_key 对 data 进行非对称加密，
// 并返回密文
func EncryptData(
	data []byte,
	rsa_public_key *rsa.PublicKey,
) (encrypt_result []byte, err error) {
	return rsa.EncryptOAEP(sha512.New(), rand.Reader, rsa_public_key, data, nil)
}

// 使用私钥 rsa_private_key 对 data 进行解密，
// 并返回原文
func DecryptData(
	data []byte,
	rsa_private_key *rsa.PrivateKey,
) (decrypt_result []byte, err error) {
	return rsa.DecryptOAEP(sha512.New(), rand.Reader, rsa_private_key, data, nil)
}
