.PHONY: all clean update

all:
	@echo 'Unicode Character Database'
	@echo '  make update    Update all UCD files.'
	@echo '  make ucd       Update plain UCD files.'
	@echo '  make ucdxml    Update XML UCD files.'

clean:
	rm -rf ./ucd/
	rm -rf ./ucdxml/

update: ucd ucdxml

ucd:
	wget -m -p -np -nH --cut-dirs=4 -P ucd 'ftp://unicode.org/Public/UCD/latest/ucd/'

ucdxml:
	wget -m -p -np -nH --cut-dirs=4 -P ucdxml 'ftp://unicode.org/Public/UCD/latest/ucdxml/'
	unzip ./ucdxml/\*.zip -d ./ucdxml
