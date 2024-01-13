package RSA

import (
	"crypto/rand"
	"crypto/rsa"
	"fmt"
)

// 生成一组 RSA-4096 的公私钥并返回
func GenerateNewKey() (
	rsa_public_key *rsa.PublicKey,
	rsa_private_key *rsa.PrivateKey,
	err error,
) {
	key, err := rsa.GenerateKey(rand.Reader, 4096)
	if err != nil {
		return nil, nil, fmt.Errorf("GenerateNewKey: %v", err)
	}
	return &key.PublicKey, key, err
}
