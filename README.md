# Licenzio

Licenzio is a **very simple, time-saving** CLI tool that makes it easier to add a **LICENSE** file to your project.

If you're like me, tired of having to search for a license online, copying it, creating the file and pasting it into your new project every time, this simplifies it by putting it **just a command away**.

## Usage

Add a license to your project:
```bash
licenzio mit                               # Adds MIT license
licenzio apache                            # Adds Apache 2.0 license
licenzio lgpl -o ~/Desktop/my_old_project/ # Adds LGPL v3 license to the specified directory
```

See all available licenses and options:
```bash
licenzio -h
```

## Installation

### Pre-built binaries

To install Licenzio, download the latest release binaries:

**Linux**:

```bash
curl -L -o licenzio https://github.com/khalidbelk/licenzio/releases/latest/download/licenzio-linux
chmod +x licenzio
sudo mv licenzio /usr/local/bin/
```

or **macOS** (ARM/M series)

```bash
curl -L -o licenzio https://github.com/khalidbelk/licenzio/releases/latest/download/licenzio-macos
chmod +x licenzio
sudo mv licenzio /usr/local/bin/
```

Then **verify the installation** with:
```bash
licenzio --version
```

### Build from source

Alternatively, if you want to build the project, follow these steps:

> Requires: OCaml 5.2, opam, and make

1. Clone this repository and open it.

```bash
git clone git@github.com:khalidbelk/licenzio.git
cd licenzio
```

2. Compile with the **Make** tool (needs to be already installed in your system)
```
make install && make
```

This will produce the `licenzio` executable.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.