handle SIGUSR1 noprint nostop
handle SIGUSR2 noprint nostop

set print pretty on
set print object on

python
import sys
# ClickHouse-pretty-printer-dir is the directory of this repo
# libcxx
#sys.path.insert(0, '{ClickHouse-pretty-printer-dir}')

#sys.path.insert(0, '/home/larry/workspace/gdb/ClickHouse-pretty-printer/libcxx/v2')
#from libcxx_printers_new import register_libcxx_printer_loader
#register_libcxx_printer_loader()
sys.path.insert(0, '/home/larry/workspace/gdb/ClickHouse-pretty-printer/libcxx-pretty-printers/src')
from libcxx.v1.printers import register_libcxx_printers
register_libcxx_printers (None)

# clickhouse pretty printer
#sys.path.insert(0, '{ClickHouse-pretty-printer-dir}/clickhouse')
sys.path.insert(0, '/home/larry/workspace/gdb/ClickHouse-pretty-printer/clickhouse')
from printers import register_ch_printers
register_ch_printers()

# boost
#sys.path.insert(0, '{ClickHouse-pretty-printer-dir}/boost/share/boost-gdb-printers')
sys.path.insert(0, '/home/larry/workspace/gdb/ClickHouse-pretty-printer/boost/share/boost-gdb-printers')
import boost.v1_63 as boost
boost.register_pretty_printers(gdb)
#end

# libstdcpp
sys.path.insert(0, '/home/larry/workspace/gdb/ClickHouse-pretty-printer')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
