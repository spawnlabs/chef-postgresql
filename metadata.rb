name             "postgresql"
maintainer       "Chris Doughty"
maintainer_email "ChrisDoughty@gamestop.com"
license          "MIT"
description      "Installs PostgreSQL, The world's most advanced open source database."
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "0.8.0"

recipe "postgresql",           "Set up the apt repository and install dependent packages"
recipe "postgresql::client",   "Front-end programs for PostgreSQL 9.x"
recipe "postgresql::server",   "Object-relational SQL database, version 9.x server"
recipe "postgresql::contrib",  "Additional facilities for PostgreSQL"
recipe "postgresql::dbg",      "Debug symbols for the server daemon"
recipe "postgresql::doc",      "Documentation for the PostgreSQL database management system"
recipe "postgresql::libpq",    "PostgreSQL C client library and header files for libpq5 (PostgreSQL library)"
recipe "postgresql::postgis",  "Geographic objects support for PostgreSQL 9.x"

%w[ubuntu debian].each do |os|
  supports os
end

depends "apt"
