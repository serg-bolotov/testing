Metrics



Metrics is a very simple tool for getting primitive server (host machine) metrics like cpu, memory usage or top 5 cpu-eaters processes. It was made in a 20 minutes as an entry task.



Usage

First of all you need to download this repo on your server using git:

git clone https://github.com/serg-bolotov/testing.git && cd testing

There are two ways to use this script: 

1) Just start python script "metrics" on host machine (you need to have python 3, pip3 and psutil python library installed):

python3 metrics

and follow the usage instructions.

or lets imagine somewhere in parallel universe you have a linux server with installed docker but not installed python then use

2) Build an image from Dockerfile and run docker container which already contains all necessary packages. Docker service should be installed and started:

docker build -t metrics:latest .

docker run -v /proc:/proc -v /etc/passwd:/etc/passwd -it --rm metrics python3 metrics cpu   #to get CPU-related information

or

docker run -v /proc:/proc -v /etc/passwd:/etc/passwd -it --rm metrics python3 metrics ram   #to get RAM-related information

or

docker run -v /proc:/proc -v /etc/passwd:/etc/passwd -it --rm metrics python3 metrics top   #to get top 5 cpu-eaters processes




Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.



License

MIT

