git clone https://github.com/OpenAccess-AI-Collective/axolotl
%cd axolotl
pip install packaging -q
pip install -U transformers
pip install -U transformers
pip install -U accelerate
pip install -e '.[flash-attn,deepspeed]' -q
pip install -U flash_attn
cp -r /notebooks/axolotl/src/* /usr/local/lib/python3.9/dist-packages/
accelerate launch -m axolotl.cli.train examples/mamba/config.yml
