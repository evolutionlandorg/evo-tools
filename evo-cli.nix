{ lib, stdenv, fetchFromGitHub, makeWrapper, glibcLocales
, bc, coreutils, curl, findutils, gawk, gnugrep, gnused, perl
, jshon, jq, nodejs, git, moreutils
, seth, ethsign
}:

stdenv.mkDerivation rec {
  name = "evo-${version}";
  version = lib.fileContents ./version;
  src = lib.sourceByRegex ./. [
    "bin" "bin/.*"
    "libexec" "libexec/.*"
    "Makefile"
  ];

  nativeBuildInputs = [ makeWrapper ];
  buildInputs = [
    bc coreutils curl findutils gawk gnugrep gnused perl
    jshon jq nodejs git moreutils
    seth ethsign
  ];

  buildPhase = "true";
  makeFlags = ["prefix=$(out)"];

  postInstall = let
    path = lib.makeBinPath buildInputs;
    locales = lib.optionalString (glibcLocales != null)
      "--set LOCALE_ARCHIVE \"${glibcLocales}\"/lib/locale/locale-archive";
  in ''
    wrapProgram "$out/bin/evo" \
      --set PATH "${path}" \
      ${locales}
  '';

  meta = {
    description = "Command-line Interface EVO System";
    homepage = https://github.com/evolutionlandorg/evo-tools;
    maintainers = ["echo<echo.hu@itering.com>"];
    license = lib.licenses.gpl3;
    inherit version;
  };
}
