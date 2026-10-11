# Copied to a course's labs/ directory (e.g. courses/<name>/labs/), which is
# gitignored from the course's own git tracking and is itself a separate,
# independent git repo (same pattern courses/<name>/ uses relative to the
# monorepo). Its own .jl/.R/.py sources are NOT duplicated here -- they live
# in the course's scripts/labs/<lang>/, assembled from topics/ by
# course-assemble.sh; this Makefile only converts them to notebooks.

REPO_ROOT  := $(realpath $(CURDIR)/../../..)
LABS_LANG  ?= julia

.PHONY: notebooks clean

# ── notebooks ─────────────────────────────────────────────────────────────────
# Converts ../scripts/labs/$(LABS_LANG)/*.jl -> notebooks/*.ipynb via
# Literate.jl, executing each script so committed notebooks include real
# output/plots.
#
# Requires a local Julia install with the Literate package -- NOT available in
# the toolbox_r Docker container. Run this target directly on the host, e.g.:
#   cd courses/<name>/labs && make notebooks
# not via `docker exec toolbox_r make notebooks`.
#
# NOTE: do not name this variable LANG -- it collides with the shell's locale
# environment variable, which Make's `?=` will not override.

# Scripts reference dataset paths relative to this directory (e.g.
# `../data/simulated/foo.csv` from notebooks/), so data/ needs a local copy
# here too -- blunt full copy of the datasets, same approach course-assemble.sh
# uses for shared/. Each dataset's `scripts/` subdir (data-generation code,
# mirroring cases/<name>/scripts/) is excluded -- students only need the
# datasets themselves, not how they were generated.

notebooks:
	rm -rf data
	rsync -a --exclude='scripts/' $(REPO_ROOT)/data/ data/
	julia --project=. $(REPO_ROOT)/shared/scripts/labs-notebooks.jl ../scripts/labs/$(LABS_LANG)

clean:
	rm -rf notebooks data
