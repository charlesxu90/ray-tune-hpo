# HPO with Ray Tune demo

## Create environment
```shell
mamba env create -f environment.yaml -p ./.env
conda activate ./.env
```

## HPO in slurm cluster
```shell
cd hello_world_demo/
sbatch head_node.slurm 
```

## Interactive HPO in slurm cluster
```shell
cd jupyter_demo/

# launch server
sbatch server.slurm

# launch client 
sbatch client_interactive.slurm 

# ssh tunnel in local
ssh -L localhost:48889:cn605-26-l:48889 -L localhost:37659:10.109.75.157:37659 xux@glogin.ibex.kaust.edu.sa

# open jupyter in browser locally
```shell
http://127.0.0.1:48889/lab?token={jupyter_token}
```


