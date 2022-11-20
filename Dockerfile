#publicly available docker image "python" on docker hub will be pulled

FROM python

#creating directory helloworld in container (linux machine)

RUN mkdir c:\home\helloworld

#copying helloworld.py from local directory to container's helloworld folder

COPY helloworld.py /home/helloworld/helloworld.py

#running helloworld.py in container

CMD python /home/helloworld/helloworld.py