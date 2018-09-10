FROM jupyter/datascience-notebook

# Install postgres stuff
USER root
RUN apt-get update && apt-get install -y \
    postgresql-client-10 \
    sqlite3

# Install conda stuff
USER jovyan
RUN conda update --yes --all && \
  conda install --yes flask psycopg2 && \
  conda clean --all --yes && \
  pip install sqlalchemy_utils
