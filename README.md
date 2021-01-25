# [UNMAINTAINED] Anki Docker

[Anki](https://apps.ankiweb.net/index.html) Powerful, intelligent flash cards.
Remembering things just became much easier.

This is an unofficial Docker image of it. You can download it directly from
[DockerHub](https://hub.docker.com/r/m0wer/docker-anki).

## Example usage

First create the required directories:

```bash
mkdir -p ~/.local/share/Anki
mkdir -p ~/.local/share/Anki2
```

Note that they must be owned by your regular unprivileged user. Then:

```bash
docker run --rm -d \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e DISPLAY=$DISPLAY \
        --user $(id -u):$(id -g) \
        -v ~/.local/share/Anki:/home/anki/.local/share/Anki \
        -v ~/.local/share/Anki2:/home/anki/.local/share/Anki2 \
        m0wer/docker-anki:latest
```
