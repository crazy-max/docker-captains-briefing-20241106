With build command:

```
docker build --target binaries --output ./bin/build .
```

With bake:

```
docker buildx bake binaries
```

Multi platform:

```
docker buildx bake binaries-multi
```
