PNGS := 1933.png 1934.png 1935.png 1936.png 1937.png 1938.png 1939.png 1940.png 1941.png 1942.png 1943.png 1944.png 1945.png 1946.png 1947.png 1948.png 1949.png 1950.png 1951.png 1952.png 1953.png 1954.png 1955.png 1956.png 1957.png 1958.png 1959.png 1960.png 1961.png 1962.png 1963.png 1964.png 1965.png 1966.png 1967.png 1968.png 1969.png 1970.png 1971.png 1972.png 1973.png 1974.png 1975.png 1976.png 1977.png 1978.png 1979.png 1980.png 1981.png 1982.png 1983.png 1984.png 1985.png 1986.png 1987.png 1988.png 1989.png 1990.png 1991.png 1992.png 1993.png 1994.png 1995.png 1996.png 1997.png 1998.png 1999.png 2000.png 2001.png 2002.png 2003.png 2004.png 2005.png 2006.png 2007.png 2008.png 2009.png 2010.png 2011.png 2012.png 2013.png 2014.png 2015.png 2016.png 2017.png 2018.png 2019.png 2020.png 2021.png 2022.png 2023.png


default : imdb-runtimes.gif

imdb-runtimes.gif : $(PNGS)
	convert -delay 20 $^ $@

$(PNGS) : title.basics.tsv
	./imdb-runtimes $<

title.basics.tsv :
	curl https://datasets.imdbws.com/title.basics.tsv.gz | gunzip -c > $@
