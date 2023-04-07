#! /bin/sh

echo "Start archivation\n"

echo "RUN tar czf z.tar.gz *\n"
tar -czvf z.tar.gz -X .tarignore .


echo "Complete archivation"
