git clone https://github.com/OpenAccess-AI-Collective/axolotl
%cd axolotl
pip install packaging -q
pip install -U transformers
pip install -U transformers
pip install -U accelerate
pip install -e '.[flash-attn,deepspeed]' -q
pip install -U flash_attn
!pip install -U accelerate optimum
#transformers_stream_generator needed if you want to finetune qwen
!pip install transformers_stream_generator
cp -r /notebooks/axolotl/src/* /usr/local/lib/python3.9/dist-packages/
accelerate launch -m axolotl.cli.train examples/mamba/config.yml
