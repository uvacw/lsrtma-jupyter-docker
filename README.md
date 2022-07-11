# lsrtma-jupyter-docker
Docker with analysis environment spawned for LSRTMA users




## Build the container

1. Copy the correct certificate for the appropriate machine, e.g. like this:

```bash
cp tux01ascor_fmg_uva_nl_interm.cer uva-root-intermediate.crt 
```

(assuming the first is the file for this year, and you are sitting on tux01)

2. Build the container

```bash
docker build -t uvacwuserjupyter .
```