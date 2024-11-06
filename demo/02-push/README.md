With build command:

```
docker build -t crazymax/docker-captains-briefing-20241106:02-push --push .
```

With bake:

```
docker buildx bake --push
# or
docker buildx bake push
```

Inspect the image:

```
docker buildx imagetools inspect crazymax/docker-captains-briefing-20241106:02-push
```
