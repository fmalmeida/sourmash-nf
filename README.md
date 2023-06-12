# fmalmeida/sourmashnf

TODO: Clean up and add small readme with instructions.
## Introduction

**fmalmeida/sourmashnf** is a small and straightforward bioinformatics pipeline that uses [sourmash](https://sourmash.readthedocs.io/en/latest/) to compare genome sequences and plot it like in https://sourmash.readthedocs.io/en/latest/tutorial-basic.html#compare-many-signatures-and-build-a-tree.

## Usage

> **Note**
> If you are new to Nextflow and nf-core, please refer to [this page](https://nf-co.re/docs/usage/installation) on how
> to set-up Nextflow. Make sure to [test your setup](https://nf-co.re/docs/usage/introduction#how-to-run-a-pipeline)
> with `-profile test` before running the workflow on actual data.

The pipeline is very simple and does not have many optional parameters. Customization to the sourmash modules can be done using the special `ext.args` directive as explained here: https://nf-co.re/developers/modules#general

The usual command line looks like this:

```bash
nextflow run \
   fmalmeida/sourmash-nf \
      -profile <docker/singularity/conda> \
      --input <path to directory with input genomes> \
      --outdir <OUTDIR>
```

> **Warning:**
> Please provide pipeline parameters via the CLI or Nextflow `-params-file` option. Custom config files including those
> provided by the `-c` Nextflow option can be used to provide any configuration _**except for parameters**_;
> see [docs](https://nf-co.re/usage/configuration#custom-configuration-files).

## Pipeline output

TODO.

## Credits

fmalmeida/sourmashnf was originally written by Felipe Marques de Almeida (@fmalmeida).

## Contributions and Support

If you would like to contribute to this pipeline, please do so :smile:.

## Citations

<!-- TODO nf-core: Add citation for pipeline after first release. Uncomment lines below and update Zenodo doi and badge at the top of this file. -->
<!-- If you use  fmalmeida/sourmashnf for your analysis, please cite it using the following doi: [10.5281/zenodo.XXXXXX](https://doi.org/10.5281/zenodo.XXXXXX) -->

<!-- TODO nf-core: Add bibliography of tools and data used in your pipeline -->

An extensive list of references for the tools used by the pipeline can be found in the [`CITATIONS.md`](CITATIONS.md) file.

You can cite the `nf-core` publication as follows:

> **The nf-core framework for community-curated bioinformatics pipelines.**
>
> Philip Ewels, Alexander Peltzer, Sven Fillinger, Harshil Patel, Johannes Alneberg, Andreas Wilm, Maxime Ulysse Garcia, Paolo Di Tommaso & Sven Nahnsen.
>
> _Nat Biotechnol._ 2020 Feb 13. doi: [10.1038/s41587-020-0439-x](https://dx.doi.org/10.1038/s41587-020-0439-x).
