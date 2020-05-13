run:
		python ray/python/ray/rllib/train.py --run DQN --env CartPole-v0 --checkpoint-freq 100 --local-dir /workspace/ray_results

tf:
		tensorboard --logdir=/workspace/ray_results

eval:
		python ray/python/ray/rllib/rollout.py \
     /workspace/ray_results/default/DQN_CartPole-v0_0_2019-09-15_21-52-16igswpgn6/checkpoint_100/checkpoint-100 \
     --run DQN --env CartPole-v0

hrs2gw:
		scp -r ruirui_nis@192.168.207.236:~/workspace/rllib-sample/ ./workspace/rllib-sample

gw2lc:
		scp -r ruirui@133.6.254.20:~/workspace/rllib-sample ./

