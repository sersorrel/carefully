# carefully

Automated Debian package creation.

carefully captures the files created by a command like `make install`,
and semi-automatically creates a Debian package to install the same
files in a way that the package manager can keep track of. It's like
[checkinstall][], except that it uses [jan][] to capture filesystem
changes, so it works even with statically-linked programs.

[checkinstall]: https://web.archive.org/web/20191008140130/http://checkinstall.izto.org/
[jan]: https://sorrel.sh/projects/jan/

## Dependencies

carefully depends on [jan][] and dpkg, as well as standard Linux
utilities.

## Installation

Install from a [Debian package][carefully], or run `make install` from a
[release tarball][carefully] or development sources. carefully is
self-hosting, so the carefully Debian package is itself generated with
carefully.

[carefully]: https://sorrel.sh/projects/carefully/

## Usage

    $ carefully COMMAND...

where `COMMAND` is something like `make install`.

carefully will create a `.carefully` directory in the current directory
where the results of running `COMMAND` will be stored, along with
packaging metadata. Once `COMMAND` exits, carefully will open the Debian
control file in your editor to allow you to configure the package name
and dependencies, and will then generate a Debian package (.deb file) in
the current directory. If you run carefully again, it will prompt before
overwriting the existing files, but will always allow you to edit the
control file and will always rebuild the Debian package.

In most cases you should _not_ run carefully as root. It will elevate
privileges using sudo when required (note that `COMMAND` will be run as
root, so you should include a call to su if the installation needs to
run as a non-root user).

## Contributing

Contributions are welcome!

Everyone interacting with this project is expected to abide by the terms
of the Contributor Covenant Code of Conduct. Violations should be
reported to coc-enforcement-carefully@sorrel.sh.

## Copyright

Copyright © 2020 Ash Holland. Licensed under the EUPL (1.2 or later).
