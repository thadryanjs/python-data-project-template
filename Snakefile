rule step00:
    run:
        commands = [
            "echo running step 00...\n",
            "black src/step00/script.py",
            "python src/step00/script.py"
        ]
        for c in commands:
            shell(c)


rule step01:
    run:
        commands = [
            "echo running step 01...\n"
            "black src/step01/script.py",
            "python src/step01/script.py"
        ]
        for c in commands:
            shell(c)


# this is not totally idiomatic but I don't care.
rule pipeline:
    run:
        commands = [
            "snakemake -j 1 step00",
            "snakemake -j 1 step01"

        ]
        for c in commands:
            shell(c)
