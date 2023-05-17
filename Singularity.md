# Using Singularity containers inside a SLURM job

On a shared computing system, you do not have the root access thus might get into trouble. For example, newer version of some specific libraries are required but not available or cannot be updated due to not having root access. One solution to these problems is using [Singularity](https://docs.sylabs.io/guides/3.0/user-guide/index.html) and [Docker] (https://www.docker.com/). 

## Build Your Own Singularity Image

The Amarel Cluster user guide provides a [detailed instruction](https://sites.google.com/view/cluster-user-guide/amarel/applications) on creating singularity. Below is an example,  

```bash
BootStrap: library

From: ubuntu:18.04

%post

    apt -y update

    apt -y install build-essential

    apt -y install python3.7

    DEBIAN_FRONTEND=noninteractive apt -y install xorg

    apt -y install firefox

    apt -y install apt-transport-https software-properties-common

    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

    add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'

    apt -y update

    apt -y install r-recommended=3.6.0-2bionic r-base=3.6.0-2bionic r-base-core=3.6.0-2bionic r-base-dev=3.6.0-2bionic

    apt -y install libpcre2-dev

    apt -y install r-base
```

## Using Exsiting Docker Image

Another approach 