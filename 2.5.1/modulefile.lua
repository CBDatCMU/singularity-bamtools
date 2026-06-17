--
-- bamtools 2.5.1 modulefile
--

whatis("Name: BamTools")
whatis("Version: 2.5.1")
whatis("Category: Biological Sciences")
whatis("URL: https://github.com/pezmaster31/bamtools")
whatis("Description: BamTools provides both a programmer's API and an end-user's toolkit for handling BAM files. It supports reading, writing, and manipulating BAM (Binary Alignment/Map) files used in high-throughput sequencing.")
whatis("Keywords: singularity bioinformatics bam sam sequencing")

family("bamtools")

help([[
BamTools provides both a programmer's API and an end-user's toolkit for handling BAM files. It supports reading, writing, and manipulating BAM (Binary Alignment/Map) files used in high-throughput sequencing.
Runs inside a Singularity container.

To load the module type

  > module load bamtools/2.5.1

To unload the module type

  > module unload bamtools/2.5.1

Documentation
-------------
For help, type

  > bamtools --help

Upstream repository: https://github.com/pezmaster31/bamtools

Tools
-----
* bamtools
]])

local package  = "bamtools"
local version  = "2.5.1"
local root     = os.getenv("CONTAINERS_ROOT") or "/shared/containers"
local base     = pathJoin(root, package, version)

conflict("bamtools")
prepend_path("PATH", base)
setenv("BAMTOOLS_SIF", pathJoin(base, "singularity-" .. package .. "-" .. version .. ".sif"))
