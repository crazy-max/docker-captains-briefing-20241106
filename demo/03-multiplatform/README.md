With build command:

```
docker build -t crazymax/docker-captains-briefing-20241106:03-multiplatform --platform linux/amd64,linux/arm64 --push .
```

With bake:

```
docker buildx bake multi
```

Inspect the image:

```
docker buildx imagetools inspect crazymax/docker-captains-briefing-20241106:03-multiplatform
```
