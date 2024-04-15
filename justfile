chimera_revision := '20240122'
chimera_rootfs_url := 'https://repo.chimera-linux.org/live' / chimera_revision / 'chimera-linux-x86_64-ROOTFS-' + chimera_revision + '-core.tar.gz'

wsldl_revision := '23072600'
wsldl_url := 'https://github.com/yuk7/wsldl/releases/download' / wsldl_revision / 'wsldl.exe'

default: zip

[private]
fetch-file url output:
    curl --no-progress-meter --location --output {{ output }} {{ url }}

fetch: (fetch-file chimera_rootfs_url 'rootfs.tar.gz') (fetch-file wsldl_url 'chimera.exe')

[private]
prepare-ziproot: fetch
    mkdir ziproot
    cp rootfs.tar.gz chimera.exe ziproot/

zip: prepare-ziproot
    cd ziproot && zip ../Chimera.zip *
