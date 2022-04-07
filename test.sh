a=$(aws s3 cp $1 tmp/)
file_name=$(ls tmp/)
idx=0
file_path=tmp/${file_name[$idx]}
python3 main.py --type lda $file_path --model_name soft_engg && rm $file_path
