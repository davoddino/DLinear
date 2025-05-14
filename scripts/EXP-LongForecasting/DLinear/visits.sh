seq_len=96

mkdir -p logs/LongForecasting

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path processed_visits.csv \
  --model_id visits_$seq_len'_'96 \
  --model DLinear \
  --data custom \
  --features M \
  --target presenze \
  --seq_len $seq_len \
  --pred_len 24 \
  --enc_in 12 \
  --des 'Exp' \
  --itr 1 --batch_size 8 >logs/LongForecasting/DLinear_visits_$seq_len'_'96.log