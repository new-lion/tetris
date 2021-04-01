
This is Tetris in docker conteiner
For buil tetris you can use command:
create any folder and copy in it Docker file
then you can build docker image:
docker build -t tetris .

and create docker conteyner:
docker run --name tetris -d -p 80:3000 tetris


