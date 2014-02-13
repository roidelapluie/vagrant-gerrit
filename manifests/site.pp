node default {
  service {
    'iptables':
      ensure => stopped,
      enable => false,
  } ->
  class {
    '::mysql::server':
      root_password => 'strongpassword',
  } ->
  mysql::db {
    'gerritdb':
      user     => 'gerrit',
      password => 'strongerpassword',
      host     => 'localhost',
      charset  => 'latin1',
      collate  => 'latin1_swedish_ci',
  } ->
  class {
    'gerrit':
      source            => '/vagrant/gerrit-2.8.1.war',
      target            => '/opt/gerrit',
      database_backend  => 'mysql',
      database_name     => 'gerritdb',
      database_username => 'gerrit',
      database_password => 'strongerpassword',
      database_host     => 'localhost',
      auth_type         => 'DEVELOPMENT_BECOME_ANY_ACCOUNT',
      download_scheme   => 'ssh',
  }
}
