
<!-- README.md is generated from README.Rmd. Please edit that file -->

# curatedMetagenomicDataTerminal

<!-- badges: start -->
<!-- badges: end -->

The curatedMetagenomicData command-line interface provides standardized,
curated human microbiome data for novel analyses. It includes gene
families, marker abundance, marker presence, pathway abundance, pathway
coverage, and relative abundance for samples collected from different
body sites. The bacterial, fungal, and archaeal taxonomic abundances for
each sample were calculated with MetaPhlAn3, and metabolic functional
potential was calculated with HUMAnN3. The manually curated sample
metadata and standardized metagenomic data are available through this
command-line interface.

## Prerequisite

R is required; visit <https://cran.r-project.org/> for installation
instructions.

## Installation

The curatedMetagenomicData command-line interface,
curatedMetagenomicDataTerminal, is simply an R package with a symlinked
R script that uses the curatedMetagenomicData R package to return data
for use in other languages (python, etc.). You can install it the easier
way (one command) or the harder way (three commands); neither way is
difficult.

### Easier Way

The easier way pipes the results of `curl` to `bash`, and that is always
met with some controversy. If you don’t like it, don’t do it; the harder
way is right there for you and is identical to the easier way, only it
doesn’t check for R first. Follow the link to the install script
(<https://tinyurl.com/cMDTerminal>) if you need to prove this to
yourself before executing the one line install.

``` sh
curl -sSL https://tinyurl.com/cMDTerminal | bash
```

### Harder Way

As stated, the harder way is identical to the easier way, it just
assumes you already have R installed. To install
curatedMetagenomicDataTerminal the harder way, execute the following
three commands from your terminal.

``` sh
Rscript -e 'utils::install.packages("BiocManager", repos = "https://cloud.r-project.org/")'
Rscript -e 'BiocManager::install("waldronlab/curatedMetagenomicDataTerminal")'
Rscript -e 'curatedMetagenomicDataTerminal::install()'
```

## Introduction


    curatedMetagenomicData - Curated Metagenomic Data of the Human Microbiome

    The curatedMetagenomicData command-line interface provides standardized, curated
    human microbiome data for novel analyses. It includes gene families, marker
    abundance, marker presence, pathway abundance, pathway coverage, and relative
    abundance for samples collected from different body sites. The bacterial,
    fungal, and archaeal taxonomic abundances for each sample were calculated with
    MetaPhlAn3, and metabolic functional potential was calculated with HUMAnN3. The
    manually curated sample metadata and standardized metagenomic data are available
    through this command-line interface.

    Usage:
        curatedMetagenomicData <pattern>
        curatedMetagenomicData <pattern> --dryrun
        curatedMetagenomicData <pattern> --counts
        curatedMetagenomicData <pattern> --metadata

    Arguments:
        <pattern> a regular expression pattern to look for in the titles of
                  resources available in curatedMetagenomicData; "." will return all

    Options:
        --dryrun    return only names of resources
        --counts    return taxa abundances as counts
        --metadata  return only subject metadata

    Return Value:
        A table of tab-seperated values will be sent to stdout. Where multiple
        studies of the same data type are requested, they will be merged into a
        single table. Where the metadata option (--metadata) is specified, the
        returned table will contain only metadata.

    Examples:
        To return the names of all resources matching "AsnicarF_20.+", the following
        command is used and will return all data types for both "AsnicarF" studies.

            # curatedMetagenomicData "AsnicarF_20.+" --dryrun

        To return the relative abundance table for the "AsnicarF_2017" study, the
        following command is used and will return a tab-seperated table to stdout.

            # curatedMetagenomicData "AsnicarF_2017.relative_abundance"

        To return a relative abundance table for both "AsnicarF" studies converted
        to read counts (i.e. relative abundance * read depth), the following command
        is used and will return a tab-seperated table to stdout.

            # curatedMetagenomicData "AsnicarF_20.+.relative_abundance" --counts

        To return a table containing only metadata for both "AsnicarF" studies, the
        metadata option (--metadata) is specified and will return a tab-seperated
        table to stdout.

            # curatedMetagenomicData "AsnicarF_20.+.relative_abundance" --metadata

## But, Windows

Do you have Windows and want to use curatedMetagenomicDataTerminal? It
won’t work for you at the moment, but if you insist, and are willing to
accept the duty of testing, we can work together to make it possible.
Get in touch and we’ll discuss.

## Code of Conduct

Please note that the curatedMetagenomicDataTerminal package is released
with a code of conduct. By contributing, you agree to abide by its
terms.
