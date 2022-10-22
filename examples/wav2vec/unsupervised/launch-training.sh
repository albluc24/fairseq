PREFIX=w2v_unsup_gan_xp
FAIRSEQ_ROOT=/root/bigdata/fairseq
KENLM_ROOT=/root/bigdata/kenlm/build/bin
PREFIX=w2v_unsup_gan_xp
TASK_DATA=/root/bigdata/datau
TEXT_DATA=/root/bigdata/datau/textnew1/phones
KENLM_PATH=/root/bigdata/datau/textnew1/phones/lm.phones.filtered.04.arpa
PYTHONPATH=$FAIRSEQ_ROOT PREFIX=$PREFIX fairseq-hydra-train \
-m --config-dir config/gan \
--config-name w2vu_4gpu_uer_bestonly \
task.data=${TASK_DATA} \
task.text_data=${TEXT_DATA} \
task.kenlm_path=${KENLM_PATH} \
common.user_dir=${FAIRSEQ_ROOT}/examples/wav2vec/unsupervised \
model.code_penalty=4 model.gradient_penalty=2.0 \
model.smoothness_weight=0.5,1.0 'common.seed=range(0,1)'
