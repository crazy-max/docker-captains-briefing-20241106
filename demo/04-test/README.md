With build command:

```
docker build --target test --output type=cacheonly .
```

With bake:

```
docker buildx bake test
```

With coverage output:

```
docker buildx bake test-coverage
```
