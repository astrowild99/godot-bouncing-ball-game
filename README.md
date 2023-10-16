# Godot Break-The-Ball environment

This is a simple test environment developed to experiment with new
RL algorithms using a simple game.  

## Train the model
To train the model, simply export the godot project to the `./bin` directory and then:
```bash
python3 train.py --env_path=ready_for_ai.x86_64 --experiment_name=Experiment_03 --viz --speedup=8 --n_parallel=4 --save_model_path=model_3.zip --onnx_export_path=model_3.onnx --save_checkpoint_frequency=100 --timesteps=1000

# and in order to visualize the training progress
tensorboard --logdir ./logs/[RL_FRAMEWORK] -p 7000
```

## Thanks
A huge thanks to [godot rl agents](https://github.com/edbeeching/godot_rl_agents)
for providing the glue between godot and Stable Baseline3 used in this project

