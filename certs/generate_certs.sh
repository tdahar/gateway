source .env

openssl req \
	-newkey rsa:2048 \
	-nodes \
	-keyout node.key \
	-x509 \
	-days 365 \
	-out node.crt \
	-subj "/CN=$PUBLIC_IP" \
	-addext "subjectAltName=IP:$PUBLIC_IP"