import matplotlib
matplotlib.use('agg')
import matplotlib.pyplot as plt

with open('sine_cpp.txt') as f:
    sine = [float(line.strip()) for line in f.readlines()]
with open('cosine_f90.txt') as f:
    cosine = [float(line.strip()) for line in f.readlines()]

plt.plot(sine)
plt.plot(cosine)
plt.savefig('plot.png')
