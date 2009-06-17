define autofs::auto_mount($mount_data) {
  file { "/etc/auto.$name":
    content => template("autofs/etc/auto.mount.erb"),
    owner => root,
    group => root,
    mode => 600,
    backup => true,
    notify => Service["autofs"],
    alias => "autofs_auto_mount_$name"
  }
}
