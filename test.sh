echo Figure A
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 0 1000 2 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 0 2000 2 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 0 4000 2 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 0 8000 2 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 0 16000 2 0 8 0

echo Figure B
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 0 1000 1 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 0 2000 1 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 0 4000 1 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 0 8000 1 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 0 16000 1 0 8 0

echo Figure E
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 -2000 0 2 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 -4000 0 2 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 -8000 0 2 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 -16000 0 2 0 8 0
docker run -it --rm --network enckv enckv encKV/Client/Test_insert 9 -32000 0 2 0 8 0

