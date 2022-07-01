echo [$(date)]: "START"
echo [$(date)]: "creating environment"
conda create --prefix ./env python=3.7 -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "create folder and file structure"
#shell scrip
for DIR in data_ingestion data_preparation data_validation model model_eval model_trainer
do
    echo 'Creating', src/'NER_'$DIR
    mkdir -p src/'NER_'$DIR
done
echo [$(date)]: "install requirements"
pip install -r requirements.txt
echo [$(date)]: "export conda environment"

echo [$(date)]: "END"

# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/