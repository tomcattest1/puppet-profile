class profile::tomcat(
  $deploy_url = "https://9-118298370-gh.circle-artifacts.com/0/tmp/circle-artifacts.jxRQwEe/sysfoo.war",
  $checksum_value = "de01db71b4e67f17481665dda4b802b7",
) {
  include ::tomcat
  tomcat::deploy { 'suresh': 
    deploy_url      => $deploy_url,
    checksum_value  => $checksum_value,
  }
}
