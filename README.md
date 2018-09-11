A fully [Dockerized](https://www.docker.com/) version of the Python and database stack recommended for Insight data science fellows.

The images are based on [juptyer/datascience](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html) [postgres](https://hub.docker.com/_/postgres/).
The Postgres container loads the example dataset.

To build and run a jupyter notebook server and Postgres
```console
$ docker-compose --build up
```

The jupyter notebook server can be reached through `https://localhost:8888/?token=xxxxxxxxxx` where token is the value printed to the terminal when the jupyter notebook server starts.

These are some resources for getting started with Docker for data science.

-   http://blog.kaggle.com/2016/02/05/how-to-get-started-with-data-science-in-containers/
-   https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html
-   https://towardsdatascience.com/how-docker-can-help-you-become-a-more-effective-data-scientist-7fc048ef91d5
