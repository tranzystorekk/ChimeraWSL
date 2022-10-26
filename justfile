chimera_revision := '20221012'
chimera_rootfs_url := 'https://repo.chimera-linux.org/live' / chimera_revision / 'chimera-linux-x86_64-ROOTFS-' + chimera_revision + '-core.tar.gz'

wsldl_revision := '22020900'
wsldl_url := 'https://github.com/yuk7/wsldl/releases/download' / wsldl_revision / 'wsldl.exe'

default: zip

_fetch url output:
    wget --no-verbose --output-document {{ output }} {{ url }}

fetch: (_fetch chimera_rootfs_url 'rootfs.tar.gz') (_fetch wsldl_url 'chimera.exe')

_prepare-ziproot: fetch
    mkdir ziproot
    cp rootfs.tar.gz chimera.exe ziproot/

zip: _prepare-ziproot
    cd ziproot && zip ../Chimera.zip *
