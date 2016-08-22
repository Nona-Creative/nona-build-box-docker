# Nona Build Box Dockerfile

The Dockerfile used for our Build Boxes.

Available on [Docker Hub](https://hub.docker.com/r/nonacreative/nona-build-box)

## Details

Based off `ubuntu:xenial`

* PHP 7
* Node 5
* NPM 3
* Bower
* Gulp
* Grunt
* Composer
* WP-CLI

## Updating

When updating this box please ensure you have pushed the latest changes to our
Docker Hub account

### NB

You must bump the version of the image when you make changes

Do not overwrite the existing versions

List:

```bash
> docker images
REPOSITORY                    TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
nonacreative/nona-build-box   1.0.0               sha256:957a4        27 minutes ago      529.4 MB
```

Take not of the Image ID

Build:

```bash
> docker build -t nonacreative/nona-build-box .
```

Tag:

```bash
> docker tag <the_image_id_from_above> nonacreative/nona-build-box:1.1.0
```

Push: 

```bash
> docker push nonacreative/nona-build-box:1.1.0
```

You will now be able to use your new tagged version.

**NB** You MUST bump the version! Replacing existing ones does not clear caches
and services that have used this image tag before will not pull in the new
image.
