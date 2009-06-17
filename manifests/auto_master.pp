define autofs::auto_master($mounts) {
  file { "/etc/auto.master":
    content => template("autofs/etc/auto.master.erb"),
    owner => root,
    group => root,
    mode => 600,
    backup => true,
    notify => Service["autofs"],
    alias => "autofs_auto_master"
  }
}
