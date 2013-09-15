## zswap, CONFIG_ZSWAP=y
add `zswap.enabled=1` to the boot kernel args for enabling zswap

```
[root@firewolf martin]# grep '^.*$' /sys/kernel/debug/zswap/*
/sys/kernel/debug/zswap/duplicate_entry:0
/sys/kernel/debug/zswap/pool_limit_hit:0
/sys/kernel/debug/zswap/pool_pages:42798
/sys/kernel/debug/zswap/reject_alloc_fail:0
/sys/kernel/debug/zswap/reject_compress_poor:4552
/sys/kernel/debug/zswap/reject_kmemcache_fail:0
/sys/kernel/debug/zswap/reject_reclaim_fail:0
/sys/kernel/debug/zswap/stored_pages:84832
/sys/kernel/debug/zswap/written_back_pages:0
```
