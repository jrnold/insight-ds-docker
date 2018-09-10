See the [Jupyter Docker Stacks](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html) documentation.

```console
docker build --tag insight
```

```
docker run -it --rm  -p 8888:8888 -v "$PWD":/home/jovyan
```
