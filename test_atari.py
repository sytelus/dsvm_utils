import gym

env = gym.make('BreakoutDeterministic-v4') #BreakoutDeterministic-v4, BreakoutNoFrameskip-v4, PongNoFrameskip-v4
env.reset()
 
import time
st = time.time()

for _ in range(1000):
    #env.render()
    env.step(env.action_space.sample())

print('headless fps', 1000.0/(time.time()-st))

env.close()