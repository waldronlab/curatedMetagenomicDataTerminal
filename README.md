# curatedMetagenomicDataCLI

## Prerequisites

You must have R installed before you follow the instructions below.

## Command-line installation

```
Rscript -e "utils::install.packages('BiocManager')"
Rscript -e "BiocManager::install('waldronlab/curatedMetagenomicDataCLI')"
Rscript -e "curatedMetagenomicDataCLI::install()"
```

### Command-line usage

```
Usage:
  curatedMetagenomicData [--metadata] [--counts] [--dryrun] [<NAME>]...
  curatedMetagenomicData [-mcd] [<NAME>]...
  curatedMetagenomicData -l | --list
  curatedMetagenomicData -h | --help
```
