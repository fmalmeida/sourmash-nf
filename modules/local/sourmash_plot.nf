process SOURMASH_PLOT {
    tag "$meta.id"
    label 'process_single'

    conda "bioconda::sourmash=4.6.1"
    container "${ workflow.containerEngine == 'singularity' && !task.ext.singularity_pull_docker_container ?
        'https://depot.galaxyproject.org/singularity/sourmash:4.6.1--hdfd78af_0':
        'biocontainers/sourmash:4.6.1--hdfd78af_0' }"

    input:
    tuple val(meta), path(labels), path(npy)

    output:
    path "*"

    when:
    task.ext.when == null || task.ext.when

    script:
    """
    sourmash plot --labels $npy
    sourmash \\
        plot \\
        --pdf \\
        --csv sourmash_plot.csv \\
        --labels $npy

    cat <<-END_VERSIONS > versions.yml
    "${task.process}":
        sourmash: \$(echo \$(sourmash --version 2>&1) | sed 's/^sourmash //' )
    END_VERSIONS
    """
}
