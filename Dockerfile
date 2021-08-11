FROM jupyter/datascience-notebook
ARG JUPYTERHUB_VERSION=1.4.2
RUN pip3 install --no-cache \
    jupyterhub==$JUPYTERHUB_VERSION

# No Markdown welcome for now, as Jupyter doesn't display it nicely
# ADD welcome.md /home/jovyan/work
ADD welcome.ipynb /home/jovyan/work

USER root
ADD uva-root-intermediate.crt  /usr/local/share/ca-certificates/uva-root-intermediate.crt
RUN update-ca-certificates
USER jovyan
# to make sure that python requests use our certificate authority bundle
ENV REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt