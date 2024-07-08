export $(cat .env | xargs)
for file in $(find . -type f -name '*.yaml'); do
  envsubst < "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
done

kubectl kustomize --enable-helm . | kubectl apply -f -