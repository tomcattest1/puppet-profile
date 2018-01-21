class profile::tomcat(
  String $deploy_url,
  String $checksum_value,
  Array $deploy_name,
) {
  include ::tomcat
  tomcat::deploy { $deploy_name: 
    deploy_url      => $deploy_url,
    checksum_value  => $checksum_value,
  }
}
