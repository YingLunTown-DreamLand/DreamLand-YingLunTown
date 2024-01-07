package main

import (
	"crypto/rand"
	"crypto/rsa"
	"crypto/sha512"
	"crypto/x509"
	"encoding/pem"
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

// 将一组 RSA 公私钥编码为 PEM 并返回
func MarshalKey(
	rsa_public_key *rsa.PublicKey,
	rsa_private_key *rsa.PrivateKey,
) (
	pub_key_marshal_result []byte,
	priv_key_marshal_result []byte,
) {
	pub_key_marshal_result = pem.EncodeToMemory(&pem.Block{
		Type:  "RSA PUBLIC KEY",
		Bytes: x509.MarshalPKCS1PublicKey(rsa_public_key),
	})
	priv_key_marshal_result = pem.EncodeToMemory(&pem.Block{
		Type:  "RSA PRIVATE KEY",
		Bytes: x509.MarshalPKCS1PrivateKey(rsa_private_key),
	})
	return
}

// 解析一组 RSA 公私钥对应的 PEM 并返回
func UnmarshalKey(
	rsa_public_key []byte,
	rsa_private_key []byte,
) (
	pub_key_unmarshal_result *rsa.PublicKey,
	priv_key_unmarshal_result *rsa.PrivateKey,
	err error,
) {
	if pub, _ := pem.Decode(rsa_public_key); pub == nil {
		err = fmt.Errorf("UnmarshalKey: rsa_public_key is not a valid pem block; rsa_public_key = %s", rsa_public_key)
		return
	} else {
		pub_key_unmarshal_result, err = x509.ParsePKCS1PublicKey(pub.Bytes)
		if err != nil {
			err = fmt.Errorf("UnmarshalKey: %v", err)
			return
		}
	}
	// parse public key
	if priv, _ := pem.Decode(rsa_private_key); priv == nil {
		err = fmt.Errorf("UnmarshalKey: rsa_private_key is not a valid pem block; rsa_private_key = %s", rsa_private_key)
		return
	} else {
		priv_key_unmarshal_result, err = x509.ParsePKCS1PrivateKey(priv.Bytes)
		if err != nil {
			err = fmt.Errorf("UnmarshalKey: %v", err)
			return
		}
	}
	// parse private key
	return
	// return
}

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
