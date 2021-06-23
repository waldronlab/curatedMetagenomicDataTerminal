# curatedMetagenomicDataCLI

## Prerequisites

You must have R installed before you follow the instructions below.

## Command-line installation

```
Rscript -e "utils::install.packages('BiocManager', repos = 'http://cran.us.r-project.org')"
Rscript -e "BiocManager::install('waldronlab/curatedMetagenomicDataCLI')"
Rscript -e "curatedMetagenomicDataCLI::install()"
```

### Specifying an installation path

You can specify a path at installation:

```
Rscript -e "curatedMetagenomicDataCLI::install("/home/waldronlab/curatedMetagenomicData")
```

However, you must add that path to `$PATH` to use the CLI. For example

```
export PATH=/home/waldronlab:$PATH
```

### Command-line usage

```
Usage:
  curatedMetagenomicData [--metadata] [--counts] [--dryrun] [<NAME>]...
  curatedMetagenomicData [-mcd] [<NAME>]...
  curatedMetagenomicData -l | --list
  curatedMetagenomicData -h | --help
```
