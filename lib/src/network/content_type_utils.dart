import 'dart:io';


///ContentType 辅助类
class ContentTypeUtils {
  static Map<String, String> _contentType = Map();

  ///根据后缀名获取ContentType
  static ContentType getContentType(String suffix){
    _initMap();
     String contentType = _contentType[suffix];
     return ContentType.parse(contentType??'*/*');
  }

  ///根据后缀名获取ContentType 的String格式
  static String getContentTypeString(String suffix){
    _initMap();
    String contentType = _contentType[suffix];
    return contentType;
  }

  ///根据文件路径获取ContentType
  static ContentType getFileContentType(String path){
    String fileName = path.substring(path.lastIndexOf('/'));
    String suffix = fileName.substring(fileName.lastIndexOf('.'));
    return getContentType(suffix);
  }

  ///根据文件路径获取ContentType 的String格式
  static String getFileContentTypeString(String path){
    String fileName = path.substring(path.lastIndexOf('/'));
    String suffix = fileName.substring(fileName.lastIndexOf('.'));
    return getContentTypeString(suffix);
  }


  static void _initMap() {
    _contentType['.jpg'] = 'image/jpeg';
    _contentType['.jpeg'] = 'image/jpeg';
    _contentType['.load'] = 'text/html';
    _contentType['.123'] = 'application/vnd.lotus-1-2-3';
    _contentType['.3ds'] = 'image/x-3ds';
    _contentType['.3g2'] = 'video/3gpp';
    _contentType['.3ga'] = 'video/3gpp';
    _contentType['.3gp'] = 'video/3gpp';
    _contentType['.3gpp'] = 'video/3gpp';
    _contentType['.602'] = 'application/x-t602';
    _contentType['.669'] = 'audio/x-mod';
    _contentType['.7z'] = 'application/x-7z-compressed';
    _contentType['.a'] = 'application/x-archive';
    _contentType['.aac'] = 'audio/mp4';
    _contentType['.abw'] = 'application/x-abiword';
    _contentType['.abw.crashed'] = 'application/x-abiword';
    _contentType['.abw.gz'] = 'application/x-abiword';
    _contentType['.ac3'] = 'audio/ac3';
    _contentType['.ace'] = 'application/x-ace';
    _contentType['.adb'] = 'text/x-adasrc';
    _contentType['.ads'] = 'text/x-adasrc';
    _contentType['.afm'] = 'application/x-font-afm';
    _contentType['.ag'] = 'image/x-applix-graphics';
    _contentType['.ai'] = 'application/illustrator';
    _contentType['.aif'] = 'audio/x-aiff';
    _contentType['.aifc'] = 'audio/x-aiff';
    _contentType['.aiff'] = 'audio/x-aiff';
    _contentType['.al'] = 'application/x-perl';
    _contentType['.alz'] = 'application/x-alz';
    _contentType['.amr'] = 'audio/amr';
    _contentType['.ani'] = 'application/x-navi-animation';
    _contentType['.anim[1-9j]'] = 'video/x-anim';
    _contentType['.anx'] = 'application/annodex';
    _contentType['.ape'] = 'audio/x-ape';
    _contentType['.arj'] = 'application/x-arj';
    _contentType['.arw'] = 'image/x-sony-arw';
    _contentType['.as'] = 'application/x-applix-spreadsheet';
    _contentType['.asc'] = 'text/plain';
    _contentType['.asf'] = 'video/x-ms-asf';
    _contentType['.asp'] = 'application/x-asp';
    _contentType['.ass'] = 'text/x-ssa';
    _contentType['.asx'] = 'audio/x-ms-asx';
    _contentType['.atom'] = 'application/atom+xml';
    _contentType['.au'] = 'audio/basic';
    _contentType['.avi'] = 'video/x-msvideo';
    _contentType['.aw'] = 'application/x-applix-word';
    _contentType['.awb'] = 'audio/amr-wb';
    _contentType['.awk'] = 'application/x-awk';
    _contentType['.axa'] = 'audio/annodex';
    _contentType['.axv'] = 'video/annodex';
    _contentType['.bak'] = 'application/x-trash';
    _contentType['.bcpio'] = 'application/x-bcpio';
    _contentType['.bdf'] = 'application/x-font-bdf';
    _contentType['.bib'] = 'text/x-bibtex';
    _contentType['.bin'] = 'application/octet-stream';
    _contentType['.blend'] = 'application/x-blender';
    _contentType['.blender'] = 'application/x-blender';
    _contentType['.bmp'] = 'image/bmp';
    _contentType['.bz'] = 'application/x-bzip';
    _contentType['.bz2'] = 'application/x-bzip';
    _contentType['.c'] = 'text/x-csrc';
    _contentType['.c++'] = 'text/x-c++src';
    _contentType['.cab'] = 'application/vnd.ms-cab-compressed';
    _contentType['.cb7'] = 'application/x-cb7';
    _contentType['.cbr'] = 'application/x-cbr';
    _contentType['.cbt'] = 'application/x-cbt';
    _contentType['.cbz'] = 'application/x-cbz';
    _contentType['.cc'] = 'text/x-c++src';
    _contentType['.cdf'] = 'application/x-netcdf';
    _contentType['.cdr'] = 'application/vnd.corel-draw';
    _contentType['.cer'] = 'application/x-x509-ca-cert';
    _contentType['.cert'] = 'application/x-x509-ca-cert';
    _contentType['.cgm'] = 'image/cgm';
    _contentType['.chm'] = 'application/x-chm';
    _contentType['.chrt'] = 'application/x-kchart';
    _contentType['.class'] = 'application/x-java';
    _contentType['.cls'] = 'text/x-tex';
    _contentType['.cmake'] = 'text/x-cmake';
    _contentType['.cpio'] = 'application/x-cpio';
    _contentType['.cpio.gz'] = 'application/x-cpio-compressed';
    _contentType['.cpp'] = 'text/x-c++src';
    _contentType['.cr2'] = 'image/x-canon-cr2';
    _contentType['.crt'] = 'application/x-x509-ca-cert';
    _contentType['.crw'] = 'image/x-canon-crw';
    _contentType['.cs'] = 'text/x-csharp';
    _contentType['.csh'] = 'application/x-csh';
    _contentType['.css'] = 'text/css';
    _contentType['.cssl'] = 'text/css';
    _contentType['.csv'] = 'text/csv';
    _contentType['.cue'] = 'application/x-cue';
    _contentType['.cur'] = 'image/x-win-bitmap';
    _contentType['.cxx'] = 'text/x-c++src';
    _contentType['.d'] = 'text/x-dsrc';
    _contentType['.dar'] = 'application/x-dar';
    _contentType['.dbf'] = 'application/x-dbf';
    _contentType['.dc'] = 'application/x-dc-rom';
    _contentType['.dcl'] = 'text/x-dcl';
    _contentType['.dcm'] = 'application/dicom';
    _contentType['.dcr'] = 'image/x-kodak-dcr';
    _contentType['.dds'] = 'image/x-dds';
    _contentType['.deb'] = 'application/x-deb';
    _contentType['.der'] = 'application/x-x509-ca-cert';
    _contentType['.desktop'] = 'application/x-desktop';
    _contentType['.dia'] = 'application/x-dia-diagram';
    _contentType['.diff'] = 'text/x-patch';
    _contentType['.divx'] = 'video/x-msvideo';
    _contentType['.djv'] = 'image/vnd.djvu';
    _contentType['.djvu'] = 'image/vnd.djvu';
    _contentType['.dng'] = 'image/x-adobe-dng';
    _contentType['.doc'] = 'application/msword';
    _contentType['.docbook'] = 'application/docbook+xml';
    _contentType['.docm'] =
        'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
    _contentType['.docx'] =
        'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
    _contentType['.dot'] = 'text/vnd.graphviz';
    _contentType['.dsl'] = 'text/x-dsl';
    _contentType['.dtd'] = 'application/xml-dtd';
    _contentType['.dtx'] = 'text/x-tex';
    _contentType['.dv'] = 'video/dv';
    _contentType['.dvi'] = 'application/x-dvi';
    _contentType['.dvi.bz2'] = 'application/x-bzdvi';
    _contentType['.dvi.gz'] = 'application/x-gzdvi';
    _contentType['.dwg'] = 'image/vnd.dwg';
    _contentType['.dxf'] = 'image/vnd.dxf';
    _contentType['.e'] = 'text/x-eiffel';
    _contentType['.egon'] = 'application/x-egon';
    _contentType['.eif'] = 'text/x-eiffel';
    _contentType['.el'] = 'text/x-emacs-lisp';
    _contentType['.emf'] = 'image/x-emf';
    _contentType['.emp'] = 'application/vnd.emusic-emusic_package';
    _contentType['.ent'] = 'application/xml-external-parsed-entity';
    _contentType['.eps'] = 'image/x-eps';
    _contentType['.eps.bz2'] = 'image/x-bzeps';
    _contentType['.eps.gz'] = 'image/x-gzeps';
    _contentType['.epsf'] = 'image/x-eps';
    _contentType['.epsf.bz2'] = 'image/x-bzeps';
    _contentType['.epsf.gz'] = 'image/x-gzeps';
    _contentType['.epsi'] = 'image/x-eps';
    _contentType['.epsi.bz2'] = 'image/x-bzeps';
    _contentType['.epsi.gz'] = 'image/x-gzeps';
    _contentType['.epub'] = 'application/epub+zip';
    _contentType['.erl'] = 'text/x-erlang';
    _contentType['.es'] = 'application/ecmascript';
    _contentType['.etheme'] = 'application/x-e-theme';
    _contentType['.etx'] = 'text/x-setext';
    _contentType['.exe'] = 'application/x-ms-dos-executable';
    _contentType['.exr'] = 'image/x-exr';
    _contentType['.ez'] = 'application/andrew-inset';
    _contentType['.f'] = 'text/x-fortran';
    _contentType['.f90'] = 'text/x-fortran';
    _contentType['.f95'] = 'text/x-fortran';
    _contentType['.fb2'] = 'application/x-fictionbook+xml';
    _contentType['.fig'] = 'image/x-xfig';
    _contentType['.fits'] = 'image/fits';
    _contentType['.fl'] = 'application/x-fluid';
    _contentType['.flac'] = 'audio/x-flac';
    _contentType['.flc'] = 'video/x-flic';
    _contentType['.fli'] = 'video/x-flic';
    _contentType['.flv'] = 'video/x-flv';
    _contentType['.flw'] = 'application/x-kivio';
    _contentType['.fo'] = 'text/x-xslfo';
    _contentType['.for'] = 'text/x-fortran';
    _contentType['.g3'] = 'image/fax-g3';
    _contentType['.gb'] = 'application/x-gameboy-rom';
    _contentType['.gba'] = 'application/x-gba-rom';
    _contentType['.gcrd'] = 'text/directory';
    _contentType['.ged'] = 'application/x-gedcom';
    _contentType['.gedcom'] = 'application/x-gedcom';
    _contentType['.gen'] = 'application/x-genesis-rom';
    _contentType['.gf'] = 'application/x-tex-gf';
    _contentType['.gg'] = 'application/x-sms-rom';
    _contentType['.gif'] = 'image/gif';
    _contentType['.glade'] = 'application/x-glade';
    _contentType['.gmo'] = 'application/x-gettext-translation';
    _contentType['.gnc'] = 'application/x-gnucash';
    _contentType['.gnd'] = 'application/gnunet-directory';
    _contentType['.gnucash'] = 'application/x-gnucash';
    _contentType['.gnumeric'] = 'application/x-gnumeric';
    _contentType['.gnuplot'] = 'application/x-gnuplot';
    _contentType['.gp'] = 'application/x-gnuplot';
    _contentType['.gpg'] = 'application/pgp-encrypted';
    _contentType['.gplt'] = 'application/x-gnuplot';
    _contentType['.gra'] = 'application/x-graphite';
    _contentType['.gsf'] = 'application/x-font-type1';
    _contentType['.gsm'] = 'audio/x-gsm';
    _contentType['.gtar'] = 'application/x-tar';
    _contentType['.gv'] = 'text/vnd.graphviz';
    _contentType['.gvp'] = 'text/x-google-video-pointer';
    _contentType['.gz'] = 'application/x-gzip';
    _contentType['.h'] = 'text/x-chdr';
    _contentType['.h++'] = 'text/x-c++hdr';
    _contentType['.hdf'] = 'application/x-hdf';
    _contentType['.hh'] = 'text/x-c++hdr';
    _contentType['.hp'] = 'text/x-c++hdr';
    _contentType['.hpgl'] = 'application/vnd.hp-hpgl';
    _contentType['.hpp'] = 'text/x-c++hdr';
    _contentType['.hs'] = 'text/x-haskell';
    _contentType['.htm'] = 'text/html';
    _contentType['.html'] = 'text/html';
    _contentType['.hwp'] = 'application/x-hwp';
    _contentType['.hwt'] = 'application/x-hwt';
    _contentType['.hxx'] = 'text/x-c++hdr';
    _contentType['.ica'] = 'application/x-ica';
    _contentType['.icb'] = 'image/x-tga';
    _contentType['.icns'] = 'image/x-icns';
    _contentType['.ico'] = 'image/vnd.microsoft.icon';
    _contentType['.ics'] = 'text/calendar';
    _contentType['.idl'] = 'text/x-idl';
    _contentType['.ief'] = 'image/ief';
    _contentType['.iff'] = 'image/x-iff';
    _contentType['.ilbm'] = 'image/x-ilbm';
    _contentType['.ime'] = 'text/x-imelody';
    _contentType['.imy'] = 'text/x-imelody';
    _contentType['.ins'] = 'text/x-tex';
    _contentType['.iptables'] = 'text/x-iptables';
    _contentType['.iso'] = 'application/x-cd-image';
    _contentType['.iso9660'] = 'application/x-cd-image';
    _contentType['.it'] = 'audio/x-it';
    _contentType['.j2k'] = 'image/jp2';
    _contentType['.jad'] = 'text/vnd.sun.j2me.app-descriptor';
    _contentType['.jar'] = 'application/x-java-archive';
    _contentType['.java'] = 'text/x-java';
    _contentType['.jng'] = 'image/x-jng';
    _contentType['.jnlp'] = 'application/x-java-jnlp-file';
    _contentType['.jp2'] = 'image/jp2';
    _contentType['.jpc'] = 'image/jp2';
    _contentType['.jpe'] = 'image/jpeg';
    _contentType['.jpeg'] = 'image/jpeg';
    _contentType['.jpf'] = 'image/jp2';
    _contentType['.jpg'] = 'image/jpeg';
    _contentType['.jpr'] = 'application/x-jbuilder-project';
    _contentType['.jpx'] = 'image/jp2';
    _contentType['.js'] = 'application/javascript';
    _contentType['.json'] = 'application/json';
    _contentType['.jsonp'] = 'application/jsonp';
    _contentType['.k25'] = 'image/x-kodak-k25';
    _contentType['.kar'] = 'audio/midi';
    _contentType['.karbon'] = 'application/x-karbon';
    _contentType['.kdc'] = 'image/x-kodak-kdc';
    _contentType['.kdelnk'] = 'application/x-desktop';
    _contentType['.kexi'] = 'application/x-kexiproject-sqlite3';
    _contentType['.kexic'] = 'application/x-kexi-connectiondata';
    _contentType['.kexis'] = 'application/x-kexiproject-shortcut';
    _contentType['.kfo'] = 'application/x-kformula';
    _contentType['.kil'] = 'application/x-killustrator';
    _contentType['.kino'] = 'application/smil';
    _contentType['.kml'] = 'application/vnd.google-earth.kml+xml';
    _contentType['.kmz'] = 'application/vnd.google-earth.kmz';
    _contentType['.kon'] = 'application/x-kontour';
    _contentType['.kpm'] = 'application/x-kpovmodeler';
    _contentType['.kpr'] = 'application/x-kpresenter';
    _contentType['.kpt'] = 'application/x-kpresenter';
    _contentType['.kra'] = 'application/x-krita';
    _contentType['.ksp'] = 'application/x-kspread';
    _contentType['.kud'] = 'application/x-kugar';
    _contentType['.kwd'] = 'application/x-kword';
    _contentType['.kwt'] = 'application/x-kword';
    _contentType['.la'] = 'application/x-shared-library-la';
    _contentType['.latex'] = 'text/x-tex';
    _contentType['.ldif'] = 'text/x-ldif';
    _contentType['.lha'] = 'application/x-lha';
    _contentType['.lhs'] = 'text/x-literate-haskell';
    _contentType['.lhz'] = 'application/x-lhz';
    _contentType['.log'] = 'text/x-log';
    _contentType['.ltx'] = 'text/x-tex';
    _contentType['.lua'] = 'text/x-lua';
    _contentType['.lwo'] = 'image/x-lwo';
    _contentType['.lwob'] = 'image/x-lwo';
    _contentType['.lws'] = 'image/x-lws';
    _contentType['.ly'] = 'text/x-lilypond';
    _contentType['.lyx'] = 'application/x-lyx';
    _contentType['.lz'] = 'application/x-lzip';
    _contentType['.lzh'] = 'application/x-lha';
    _contentType['.lzma'] = 'application/x-lzma';
    _contentType['.lzo'] = 'application/x-lzop';
    _contentType['.m'] = 'text/x-matlab';
    _contentType['.m15'] = 'audio/x-mod';
    _contentType['.m2t'] = 'video/mpeg';
    _contentType['.m3u'] = 'audio/x-mpegurl';
    _contentType['.m3u8'] = 'audio/x-mpegurl';
    _contentType['.m4'] = 'application/x-m4';
    _contentType['.m4a'] = 'audio/mp4';
    _contentType['.m4b'] = 'audio/x-m4b';
    _contentType['.m4v'] = 'video/mp4';
    _contentType['.mab'] = 'application/x-markaby';
    _contentType['.man'] = 'application/x-troff-man';
    _contentType['.mbox'] = 'application/mbox';
    _contentType['.md'] = 'application/x-genesis-rom';
    _contentType['.mdb'] = 'application/vnd.ms-access';
    _contentType['.mdi'] = 'image/vnd.ms-modi';
    _contentType['.me'] = 'text/x-troff-me';
    _contentType['.med'] = 'audio/x-mod';
    _contentType['.metalink'] = 'application/metalink+xml';
    _contentType['.mgp'] = 'application/x-magicpoint';
    _contentType['.mid'] = 'audio/midi';
    _contentType['.midi'] = 'audio/midi';
    _contentType['.mif'] = 'application/x-mif';
    _contentType['.minipsf'] = 'audio/x-minipsf';
    _contentType['.mka'] = 'audio/x-matroska';
    _contentType['.mkv'] = 'video/x-matroska';
    _contentType['.ml'] = 'text/x-ocaml';
    _contentType['.mli'] = 'text/x-ocaml';
    _contentType['.mm'] = 'text/x-troff-mm';
    _contentType['.mmf'] = 'application/x-smaf';
    _contentType['.mml'] = 'text/mathml';
    _contentType['.mng'] = 'video/x-mng';
    _contentType['.mo'] = 'application/x-gettext-translation';
    _contentType['.mo3'] = 'audio/x-mo3';
    _contentType['.moc'] = 'text/x-moc';
    _contentType['.mod'] = 'audio/x-mod';
    _contentType['.mof'] = 'text/x-mof';
    _contentType['.moov'] = 'video/quicktime';
    _contentType['.mov'] = 'video/quicktime';
    _contentType['.movie'] = 'video/x-sgi-movie';
    _contentType['.mp+'] = 'audio/x-musepack';
    _contentType['.mp2'] = 'video/mpeg';
    _contentType['.mp3'] = 'audio/mpeg';
    _contentType['.mp4'] = 'video/mp4';
    _contentType['.mpc'] = 'audio/x-musepack';
    _contentType['.mpe'] = 'video/mpeg';
    _contentType['.mpeg'] = 'video/mpeg';
    _contentType['.mpg'] = 'video/mpeg';
    _contentType['.mpga'] = 'audio/mpeg';
    _contentType['.mpp'] = 'audio/x-musepack';
    _contentType['.mrl'] = 'text/x-mrml';
    _contentType['.mrml'] = 'text/x-mrml';
    _contentType['.mrw'] = 'image/x-minolta-mrw';
    _contentType['.ms'] = 'text/x-troff-ms';
    _contentType['.msi'] = 'application/x-msi';
    _contentType['.msod'] = 'image/x-msod';
    _contentType['.msx'] = 'application/x-msx-rom';
    _contentType['.mtm'] = 'audio/x-mod';
    _contentType['.mup'] = 'text/x-mup';
    _contentType['.mxf'] = 'application/mxf';
    _contentType['.n64'] = 'application/x-n64-rom';
    _contentType['.nb'] = 'application/mathematica';
    _contentType['.nc'] = 'application/x-netcdf';
    _contentType['.nds'] = 'application/x-nintendo-ds-rom';
    _contentType['.nef'] = 'image/x-nikon-nef';
    _contentType['.nes'] = 'application/x-nes-rom';
    _contentType['.nfo'] = 'text/x-nfo';
    _contentType['.not'] = 'text/x-mup';
    _contentType['.nsc'] = 'application/x-netshow-channel';
    _contentType['.nsv'] = 'video/x-nsv';
    _contentType['.o'] = 'application/x-object';
    _contentType['.obj'] = 'application/x-tgif';
    _contentType['.ocl'] = 'text/x-ocl';
    _contentType['.oda'] = 'application/oda';
    _contentType['.odb'] = 'application/vnd.oasis.opendocument.database';
    _contentType['.odc'] = 'application/vnd.oasis.opendocument.chart';
    _contentType['.odf'] = 'application/vnd.oasis.opendocument.formula';
    _contentType['.odg'] = 'application/vnd.oasis.opendocument.graphics';
    _contentType['.odi'] = 'application/vnd.oasis.opendocument.image';
    _contentType['.odm'] = 'application/vnd.oasis.opendocument.text-master';
    _contentType['.odp'] = 'application/vnd.oasis.opendocument.presentation';
    _contentType['.ods'] = 'application/vnd.oasis.opendocument.spreadsheet';
    _contentType['.odt'] = 'application/vnd.oasis.opendocument.text';
    _contentType['.oga'] = 'audio/ogg';
    _contentType['.ogg'] = 'video/x-theora+ogg';
    _contentType['.ogm'] = 'video/x-ogm+ogg';
    _contentType['.ogv'] = 'video/ogg';
    _contentType['.ogx'] = 'application/ogg';
    _contentType['.old'] = 'application/x-trash';
    _contentType['.oleo'] = 'application/x-oleo';
    _contentType['.opml'] = 'text/x-opml+xml';
    _contentType['.ora'] = 'image/openraster';
    _contentType['.orf'] = 'image/x-olympus-orf';
    _contentType['.otc'] = 'application/vnd.oasis.opendocument.chart-template';
    _contentType['.otf'] = 'application/x-font-otf';
    _contentType['.otg'] =
        'application/vnd.oasis.opendocument.graphics-template';
    _contentType['.oth'] = 'application/vnd.oasis.opendocument.text-web';
    _contentType['.otp'] =
        'application/vnd.oasis.opendocument.presentation-template';
    _contentType['.ots'] =
        'application/vnd.oasis.opendocument.spreadsheet-template';
    _contentType['.ott'] = 'application/vnd.oasis.opendocument.text-template';
    _contentType['.owl'] = 'application/rdf+xml';
    _contentType['.oxt'] = 'application/vnd.openofficeorg.extension';
    _contentType['.p'] = 'text/x-pascal';
    _contentType['.p10'] = 'application/pkcs10';
    _contentType['.p12'] = 'application/x-pkcs12';
    _contentType['.p7b'] = 'application/x-pkcs7-certificates';
    _contentType['.p7s'] = 'application/pkcs7-signature';
    _contentType['.pack'] = 'application/x-java-pack200';
    _contentType['.pak'] = 'application/x-pak';
    _contentType['.par2'] = 'application/x-par2';
    _contentType['.pas'] = 'text/x-pascal';
    _contentType['.patch'] = 'text/x-patch';
    _contentType['.pbm'] = 'image/x-portable-bitmap';
    _contentType['.pcd'] = 'image/x-photo-cd';
    _contentType['.pcf'] = 'application/x-cisco-vpn-settings';
    _contentType['.pcf.gz'] = 'application/x-font-pcf';
    _contentType['.pcf.z'] = 'application/x-font-pcf';
    _contentType['.pcl'] = 'application/vnd.hp-pcl';
    _contentType['.pcx'] = 'image/x-pcx';
    _contentType['.pdb'] = 'chemical/x-pdb';
    _contentType['.pdc'] = 'application/x-aportisdoc';
    _contentType['.pdf'] = 'application/pdf';
    _contentType['.pdf.bz2'] = 'application/x-bzpdf';
    _contentType['.pdf.gz'] = 'application/x-gzpdf';
    _contentType['.pef'] = 'image/x-pentax-pef';
    _contentType['.pem'] = 'application/x-x509-ca-cert';
    _contentType['.perl'] = 'application/x-perl';
    _contentType['.pfa'] = 'application/x-font-type1';
    _contentType['.pfb'] = 'application/x-font-type1';
    _contentType['.pfx'] = 'application/x-pkcs12';
    _contentType['.pgm'] = 'image/x-portable-graymap';
    _contentType['.pgn'] = 'application/x-chess-pgn';
    _contentType['.pgp'] = 'application/pgp-encrypted';
    _contentType['.php'] = 'application/x-php';
    _contentType['.php3'] = 'application/x-php';
    _contentType['.php4'] = 'application/x-php';
    _contentType['.pict'] = 'image/x-pict';
    _contentType['.pict1'] = 'image/x-pict';
    _contentType['.pict2'] = 'image/x-pict';
    _contentType['.pickle'] = 'application/python-pickle';
    _contentType['.pk'] = 'application/x-tex-pk';
    _contentType['.pkipath'] = 'application/pkix-pkipath';
    _contentType['.pkr'] = 'application/pgp-keys';
    _contentType['.pl'] = 'application/x-perl';
    _contentType['.pla'] = 'audio/x-iriver-pla';
    _contentType['.pln'] = 'application/x-planperfect';
    _contentType['.pls'] = 'audio/x-scpls';
    _contentType['.pm'] = 'application/x-perl';
    _contentType['.png'] = 'image/png';
    _contentType['.pnm'] = 'image/x-portable-anymap';
    _contentType['.pntg'] = 'image/x-macpaint';
    _contentType['.po'] = 'text/x-gettext-translation';
    _contentType['.por'] = 'application/x-spss-por';
    _contentType['.pot'] = 'text/x-gettext-translation-template';
    _contentType['.ppm'] = 'image/x-portable-pixmap';
    _contentType['.pps'] = 'application/vnd.ms-powerpoint';
    _contentType['.ppt'] = 'application/vnd.ms-powerpoint';
    _contentType['.pptm'] =
        'application/vnd.openxmlformats-officedocument.presentationml.presentation';
    _contentType['.pptx'] =
        'application/vnd.openxmlformats-officedocument.presentationml.presentation';
    _contentType['.ppz'] = 'application/vnd.ms-powerpoint';
    _contentType['.prc'] = 'application/x-palm-database';
    _contentType['.ps'] = 'application/postscript';
    _contentType['.ps.bz2'] = 'application/x-bzpostscript';
    _contentType['.ps.gz'] = 'application/x-gzpostscript';
    _contentType['.psd'] = 'image/vnd.adobe.photoshop';
    _contentType['.psf'] = 'audio/x-psf';
    _contentType['.psf.gz'] = 'application/x-gz-font-linux-psf';
    _contentType['.psflib'] = 'audio/x-psflib';
    _contentType['.psid'] = 'audio/prs.sid';
    _contentType['.psw'] = 'application/x-pocket-word';
    _contentType['.pw'] = 'application/x-pw';
    _contentType['.py'] = 'text/x-python';
    _contentType['.pyc'] = 'application/x-python-bytecode';
    _contentType['.pyo'] = 'application/x-python-bytecode';
    _contentType['.qif'] = 'image/x-quicktime';
    _contentType['.qt'] = 'video/quicktime';
    _contentType['.qtif'] = 'image/x-quicktime';
    _contentType['.qtl'] = 'application/x-quicktime-media-link';
    _contentType['.qtvr'] = 'video/quicktime';
    _contentType['.ra'] = 'audio/vnd.rn-realaudio';
    _contentType['.raf'] = 'image/x-fuji-raf';
    _contentType['.ram'] = 'application/ram';
    _contentType['.rar'] = 'application/x-rar';
    _contentType['.ras'] = 'image/x-cmu-raster';
    _contentType['.raw'] = 'image/x-panasonic-raw';
    _contentType['.rax'] = 'audio/vnd.rn-realaudio';
    _contentType['.rb'] = 'application/x-ruby';
    _contentType['.rdf'] = 'application/rdf+xml';
    _contentType['.rdfs'] = 'application/rdf+xml';
    _contentType['.reg'] = 'text/x-ms-regedit';
    _contentType['.rej'] = 'application/x-reject';
    _contentType['.rgb'] = 'image/x-rgb';
    _contentType['.rle'] = 'image/rle';
    _contentType['.rm'] = 'application/vnd.rn-realmedia';
    _contentType['.rmj'] = 'application/vnd.rn-realmedia';
    _contentType['.rmm'] = 'application/vnd.rn-realmedia';
    _contentType['.rms'] = 'application/vnd.rn-realmedia';
    _contentType['.rmvb'] = 'application/vnd.rn-realmedia';
    _contentType['.rmx'] = 'application/vnd.rn-realmedia';
    _contentType['.roff'] = 'text/troff';
    _contentType['.rp'] = 'image/vnd.rn-realpix';
    _contentType['.rpm'] = 'application/x-rpm';
    _contentType['.rss'] = 'application/rss+xml';
    _contentType['.rt'] = 'text/vnd.rn-realtext';
    _contentType['.rtf'] = 'application/rtf';
    _contentType['.rtx'] = 'text/richtext';
    _contentType['.rv'] = 'video/vnd.rn-realvideo';
    _contentType['.rvx'] = 'video/vnd.rn-realvideo';
    _contentType['.s3m'] = 'audio/x-s3m';
    _contentType['.sam'] = 'application/x-amipro';
    _contentType['.sami'] = 'application/x-sami';
    _contentType['.sav'] = 'application/x-spss-sav';
    _contentType['.scm'] = 'text/x-scheme';
    _contentType['.sda'] = 'application/vnd.stardivision.draw';
    _contentType['.sdc'] = 'application/vnd.stardivision.calc';
    _contentType['.sdd'] = 'application/vnd.stardivision.impress';
    _contentType['.sdp'] = 'application/sdp';
    _contentType['.sds'] = 'application/vnd.stardivision.chart';
    _contentType['.sdw'] = 'application/vnd.stardivision.writer';
    _contentType['.sgf'] = 'application/x-go-sgf';
    _contentType['.sgi'] = 'image/x-sgi';
    _contentType['.sgl'] = 'application/vnd.stardivision.writer';
    _contentType['.sgm'] = 'text/sgml';
    _contentType['.sgml'] = 'text/sgml';
    _contentType['.sh'] = 'application/x-shellscript';
    _contentType['.shar'] = 'application/x-shar';
    _contentType['.shn'] = 'application/x-shorten';
    _contentType['.siag'] = 'application/x-siag';
    _contentType['.sid'] = 'audio/prs.sid';
    _contentType['.sik'] = 'application/x-trash';
    _contentType['.sis'] = 'application/vnd.symbian.install';
    _contentType['.sisx'] = 'x-epoc/x-sisx-app';
    _contentType['.sit'] = 'application/x-stuffit';
    _contentType['.siv'] = 'application/sieve';
    _contentType['.sk'] = 'image/x-skencil';
    _contentType['.sk1'] = 'image/x-skencil';
    _contentType['.skr'] = 'application/pgp-keys';
    _contentType['.slk'] = 'text/spreadsheet';
    _contentType['.smaf'] = 'application/x-smaf';
    _contentType['.smc'] = 'application/x-snes-rom';
    _contentType['.smd'] = 'application/vnd.stardivision.mail';
    _contentType['.smf'] = 'application/vnd.stardivision.math';
    _contentType['.smi'] = 'application/x-sami';
    _contentType['.smil'] = 'application/smil';
    _contentType['.sml'] = 'application/smil';
    _contentType['.sms'] = 'application/x-sms-rom';
    _contentType['.snd'] = 'audio/basic';
    _contentType['.so'] = 'application/x-sharedlib';
    _contentType['.spc'] = 'application/x-pkcs7-certificates';
    _contentType['.spd'] = 'application/x-font-speedo';
    _contentType['.spec'] = 'text/x-rpm-spec';
    _contentType['.spl'] = 'application/x-shockwave-flash';
    _contentType['.spx'] = 'audio/x-speex';
    _contentType['.sql'] = 'text/x-sql';
    _contentType['.sr2'] = 'image/x-sony-sr2';
    _contentType['.src'] = 'application/x-wais-source';
    _contentType['.srf'] = 'image/x-sony-srf';
    _contentType['.srt'] = 'application/x-subrip';
    _contentType['.ssa'] = 'text/x-ssa';
    _contentType['.stc'] = 'application/vnd.sun.xml.calc.template';
    _contentType['.std'] = 'application/vnd.sun.xml.draw.template';
    _contentType['.sti'] = 'application/vnd.sun.xml.impress.template';
    _contentType['.stm'] = 'audio/x-stm';
    _contentType['.stw'] = 'application/vnd.sun.xml.writer.template';
    _contentType['.sty'] = 'text/x-tex';
    _contentType['.sub'] = 'text/x-subviewer';
    _contentType['.sun'] = 'image/x-sun-raster';
    _contentType['.sv4cpio'] = 'application/x-sv4cpio';
    _contentType['.sv4crc'] = 'application/x-sv4crc';
    _contentType['.svg'] = 'image/svg+xml';
    _contentType['.svgz'] = 'image/svg+xml-compressed';
    _contentType['.swf'] = 'application/x-shockwave-flash';
    _contentType['.sxc'] = 'application/vnd.sun.xml.calc';
    _contentType['.sxd'] = 'application/vnd.sun.xml.draw';
    _contentType['.sxg'] = 'application/vnd.sun.xml.writer.global';
    _contentType['.sxi'] = 'application/vnd.sun.xml.impress';
    _contentType['.sxm'] = 'application/vnd.sun.xml.math';
    _contentType['.sxw'] = 'application/vnd.sun.xml.writer';
    _contentType['.sylk'] = 'text/spreadsheet';
    _contentType['.t'] = 'text/troff';
    _contentType['.t2t'] = 'text/x-txt2tags';
    _contentType['.tar'] = 'application/x-tar';
    _contentType['.tar.bz'] = 'application/x-bzip-compressed-tar';
    _contentType['.tar.bz2'] = 'application/x-bzip-compressed-tar';
    _contentType['.tar.gz'] = 'application/x-compressed-tar';
    _contentType['.tar.lzma'] = 'application/x-lzma-compressed-tar';
    _contentType['.tar.lzo'] = 'application/x-tzo';
    _contentType['.tar.xz'] = 'application/x-xz-compressed-tar';
    _contentType['.tar.z'] = 'application/x-tarz';
    _contentType['.tbz'] = 'application/x-bzip-compressed-tar';
    _contentType['.tbz2'] = 'application/x-bzip-compressed-tar';
    _contentType['.tcl'] = 'text/x-tcl';
    _contentType['.tex'] = 'text/x-tex';
    _contentType['.texi'] = 'text/x-texinfo';
    _contentType['.texinfo'] = 'text/x-texinfo';
    _contentType['.tga'] = 'image/x-tga';
    _contentType['.tgz'] = 'application/x-compressed-tar';
    _contentType['.theme'] = 'application/x-theme';
    _contentType['.themepack'] = 'application/x-windows-themepack';
    _contentType['.tif'] = 'image/tiff';
    _contentType['.tiff'] = 'image/tiff';
    _contentType['.tk'] = 'text/x-tcl';
    _contentType['.tlz'] = 'application/x-lzma-compressed-tar';
    _contentType['.tnef'] = 'application/vnd.ms-tnef';
    _contentType['.tnf'] = 'application/vnd.ms-tnef';
    _contentType['.toc'] = 'application/x-cdrdao-toc';
    _contentType['.torrent'] = 'application/x-bittorrent';
    _contentType['.tpic'] = 'image/x-tga';
    _contentType['.tr'] = 'text/troff';
    _contentType['.ts'] = 'application/x-linguist';
    _contentType['.tsv'] = 'text/tab-separated-values';
    _contentType['.tta'] = 'audio/x-tta';
    _contentType['.ttc'] = 'application/x-font-ttf';
    _contentType['.ttf'] = 'application/x-font-ttf';
    _contentType['.ttx'] = 'application/x-font-ttx';
    _contentType['.txt'] = 'text/plain';
    _contentType['.txz'] = 'application/x-xz-compressed-tar';
    _contentType['.tzo'] = 'application/x-tzo';
    _contentType['.ufraw'] = 'application/x-ufraw';
    _contentType['.ui'] = 'application/x-designer';
    _contentType['.uil'] = 'text/x-uil';
    _contentType['.ult'] = 'audio/x-mod';
    _contentType['.uni'] = 'audio/x-mod';
    _contentType['.uri'] = 'text/x-uri';
    _contentType['.url'] = 'text/x-uri';
    _contentType['.ustar'] = 'application/x-ustar';
    _contentType['.vala'] = 'text/x-vala';
    _contentType['.vapi'] = 'text/x-vala';
    _contentType['.vcf'] = 'text/directory';
    _contentType['.vcs'] = 'text/calendar';
    _contentType['.vct'] = 'text/directory';
    _contentType['.vda'] = 'image/x-tga';
    _contentType['.vhd'] = 'text/x-vhdl';
    _contentType['.vhdl'] = 'text/x-vhdl';
    _contentType['.viv'] = 'video/vivo';
    _contentType['.vivo'] = 'video/vivo';
    _contentType['.vlc'] = 'audio/x-mpegurl';
    _contentType['.vob'] = 'video/mpeg';
    _contentType['.voc'] = 'audio/x-voc';
    _contentType['.vor'] = 'application/vnd.stardivision.writer';
    _contentType['.vst'] = 'image/x-tga';
    _contentType['.wav'] = 'audio/x-wav';
    _contentType['.wax'] = 'audio/x-ms-asx';
    _contentType['.wb1'] = 'application/x-quattropro';
    _contentType['.wb2'] = 'application/x-quattropro';
    _contentType['.wb3'] = 'application/x-quattropro';
    _contentType['.wbmp'] = 'image/vnd.wap.wbmp';
    _contentType['.wcm'] = 'application/vnd.ms-works';
    _contentType['.wdb'] = 'application/vnd.ms-works';
    _contentType['.webm'] = 'video/webm';
    _contentType['.wk1'] = 'application/vnd.lotus-1-2-3';
    _contentType['.wk3'] = 'application/vnd.lotus-1-2-3';
    _contentType['.wk4'] = 'application/vnd.lotus-1-2-3';
    _contentType['.wks'] = 'application/vnd.ms-works';
    _contentType['.wma'] = 'audio/x-ms-wma';
    _contentType['.wmf'] = 'image/x-wmf';
    _contentType['.wml'] = 'text/vnd.wap.wml';
    _contentType['.wmls'] = 'text/vnd.wap.wmlscript';
    _contentType['.wmv'] = 'video/x-ms-wmv';
    _contentType['.wmx'] = 'audio/x-ms-asx';
    _contentType['.wp'] = 'application/vnd.wordperfect';
    _contentType['.wp4'] = 'application/vnd.wordperfect';
    _contentType['.wp5'] = 'application/vnd.wordperfect';
    _contentType['.wp6'] = 'application/vnd.wordperfect';
    _contentType['.wpd'] = 'application/vnd.wordperfect';
    _contentType['.wpg'] = 'application/x-wpg';
    _contentType['.wpl'] = 'application/vnd.ms-wpl';
    _contentType['.wpp'] = 'application/vnd.wordperfect';
    _contentType['.wps'] = 'application/vnd.ms-works';
    _contentType['.wri'] = 'application/x-mswrite';
    _contentType['.wrl'] = 'model/vrml';
    _contentType['.wv'] = 'audio/x-wavpack';
    _contentType['.wvc'] = 'audio/x-wavpack-correction';
    _contentType['.wvp'] = 'audio/x-wavpack';
    _contentType['.wvx'] = 'audio/x-ms-asx';
    _contentType['.x3f'] = 'image/x-sigma-x3f';
    _contentType['.xac'] = 'application/x-gnucash';
    _contentType['.xbel'] = 'application/x-xbel';
    _contentType['.xbl'] = 'application/xml';
    _contentType['.xbm'] = 'image/x-xbitmap';
    _contentType['.xcf'] = 'image/x-xcf';
    _contentType['.xcf.bz2'] = 'image/x-compressed-xcf';
    _contentType['.xcf.gz'] = 'image/x-compressed-xcf';
    _contentType['.xhtml'] = 'application/xhtml+xml';
    _contentType['.xi'] = 'audio/x-xi';
    _contentType['.xla'] = 'application/vnd.ms-excel';
    _contentType['.xlc'] = 'application/vnd.ms-excel';
    _contentType['.xld'] = 'application/vnd.ms-excel';
    _contentType['.xlf'] = 'application/x-xliff';
    _contentType['.xliff'] = 'application/x-xliff';
    _contentType['.xll'] = 'application/vnd.ms-excel';
    _contentType['.xlm'] = 'application/vnd.ms-excel';
    _contentType['.xls'] = 'application/vnd.ms-excel';
    _contentType['.xlsm'] =
        'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
    _contentType['.xlsx'] =
        'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
    _contentType['.xlt'] = 'application/vnd.ms-excel';
    _contentType['.xlw'] = 'application/vnd.ms-excel';
    _contentType['.xm'] = 'audio/x-xm';
    _contentType['.xmf'] = 'audio/x-xmf';
    _contentType['.xmi'] = 'text/x-xmi';
    _contentType['.xml'] = 'application/xml';
    _contentType['.xpm'] = 'image/x-xpixmap';
    _contentType['.xps'] = 'application/vnd.ms-xpsdocument';
    _contentType['.xsl'] = 'application/xml';
    _contentType['.xslfo'] = 'text/x-xslfo';
    _contentType['.xslt'] = 'application/xml';
    _contentType['.xspf'] = 'application/xspf+xml';
    _contentType['.xul'] = 'application/vnd.mozilla.xul+xml';
    _contentType['.xwd'] = 'image/x-xwindowdump';
    _contentType['.xyz'] = 'chemical/x-pdb';
    _contentType['.xz'] = 'application/x-xz';
    _contentType['.w2p'] = 'application/w2p';
    _contentType['.z'] = 'application/x-compress';
    _contentType['.zabw'] = 'application/x-abiword';
    _contentType['.zip'] = 'application/zip';
  }
}
