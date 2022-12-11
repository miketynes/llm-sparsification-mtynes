
for model in `ls ./models | grep gpt`
	do python -m torch.distributed.launch --nproc_per_node 4 run_clm.py --model_name_or_path ./models/$model --tokenizer_name "gpt2" --dataset_name wikitext --dataset_config_name wikitext-2-raw-v1 --do_train --do_eval --output_dir results-train-$model/
	done
