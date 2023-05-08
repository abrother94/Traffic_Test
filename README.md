# Traffic_Test

//  Create random message from remote DUT and send them back to local //

//  Local(of=/dev/null) <--------------> //Remote 172.17.8.238 (if=/dev/urandom)

ssh root@172.17.8.238 "sudo dd if=/dev/urandom" | dd of=/dev/null
