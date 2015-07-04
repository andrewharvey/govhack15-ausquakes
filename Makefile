all: download tippecanoe

clean:
	rm -R src_data out

download:
	mkdir -p src_data
	wget -nc --directory-prefix=src_data 'http://dapds00.nci.org.au/thredds/fileServer/licenses/fj6_readme.txt'
	wget -nc --directory-prefix=src_data 'http://dapds00.nci.org.au/thredds/fileServer/fj6/earthquake/Readme.txt'
	wget -nc --directory-prefix=src_data 'http://dapds00.nci.org.au/thredds/fileServer/licenses/fj6_licence.pdf'
	wget -nc --directory-prefix=src_data 'http://dapds00.nci.org.au/thredds/fileServer/fj6/earthquake/AUSTCAT.MW.V0.11_public.csv'
	wget -nc --directory-prefix=src_data 'http://dapds00.nci.org.au/thredds/fileServer/fj6/earthquake/Oz_event_set.txt'

tippecanoe:
	mkdir -p out
	./src/streaming-csv-to-geojson.pl src_data/Oz_event_set.txt | tippecanoe -l Oz_event_set -n 'Oz event set' -f -o out/Oz_event_set.mbtiles
