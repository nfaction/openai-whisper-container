# openai-whisper-container

* https://github.com/openai/whisper

## Manually building this image

```shell
docker build -t whisper .

docker run --rm -v /path/to/your/video:/app/video whisper video/your_video.mp4
```
