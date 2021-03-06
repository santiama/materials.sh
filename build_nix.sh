set -e
cd conda-skeletons
conda build --skip-existing --user matsci tabulate
conda build --skip-existing --user matsci monty
conda update --all --yes
for pkg in `ls -d *`
do
    conda build --skip-existing --user matsci $pkg
done
