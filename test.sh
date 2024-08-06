export CUDA_VISIBLE_DEVICES=7

online_learning='full'
i=1
ns=(1 )
bszs=(1 )
data=( 'ETTh1')
methods=('BTOA')
aug_number=(15)
for n in ${ns[*]}; do
for bsz in ${bszs[*]}; do
for data in ${data[*]}; do
for m in ${methods[*]}; do
for number in ${aug_number[*]}; do
python -u main.py --method $m --root_path ./data/ --n_inner $n --test_bsz $bsz --data $data --features M --seq_len 60 --label_len 0 --pred_len 48 --des 'Exp' --itr $i --train_epochs 15 --learning_rate 2e-3 --online_learning $online_learning  --aug_number $number --save $data \
        --seed  2024
done
done
done
done
done







