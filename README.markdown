Usage
-----

    node "server.domain.com" inherits basenode {
      include autofs
    
      $mounts = [ "home" ]
     
      autofs::auto_master { "master": mounts => $mounts }
     
      autofs::auto_mount { "home":
          mount_data => [ "*#-rw,nosuid,nodev,soft,intr#nfs.server:/home/&" ]
      }
    }

Miscellaneous Notes
-------------------

The `mount_data' fields must be delimited by a #. This gets changed to spaces
when the template is processed.
